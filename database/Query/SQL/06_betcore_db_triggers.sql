-- Trigger 1: Validar mayoría de edad y correo de la persona

CREATE OR ALTER TRIGGER dbo.trg_Persona_ValidarEdadCorreo
ON dbo.Persona
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        IF EXISTS (
            SELECT 1
            FROM inserted
            WHERE fecha_nacimiento > CAST(GETDATE() AS DATE)
        )
        BEGIN
            THROW 50001, 'La fecha de nacimiento no puede ser mayor a la fecha actual.', 1;
        END;

        IF EXISTS (
            SELECT 1
            FROM inserted
            WHERE correo IS NOT NULL
              AND correo NOT LIKE '%_@_%._%'
        )
        BEGIN
            THROW 50002, 'El correo registrado no tiene un formato válido.', 1;
        END;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH;
END;
GO

-- Trigger 2: Validar que el usuario sea mayor de edad
CREATE OR ALTER TRIGGER dbo.trg_Usuario_ValidarMayorEdad
ON dbo.Usuario
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        IF EXISTS (
            SELECT 1
            FROM inserted i
            INNER JOIN Persona p ON i.id_persona = p.id_persona
            WHERE DATEDIFF(YEAR, p.fecha_nacimiento, GETDATE()) < 18
        )
        BEGIN
            THROW 50003, 'No se puede registrar un usuario menor de edad.', 1;
        END;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH;
END;
GO

-- Trigger 3: Evitar doble asignación activa de trabajador
CREATE OR ALTER TRIGGER dbo.trg_TrabajadorxLocal_EvitarAsignacionDuplicada
ON dbo.TrabajadorxLocal
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        IF EXISTS (
            SELECT txl.id_trabajador, txl.id_local
            FROM TrabajadorxLocal txl
            WHERE txl.estado = 1
            GROUP BY txl.id_trabajador, txl.id_local
            HAVING COUNT(*) > 1
        )
        BEGIN
            THROW 50004, 'El trabajador ya tiene una asignación activa en este local.', 1;
        END;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH;
END;
GO

-- Trigger 4: Evitar eliminación de locales con operaciones
CREATE OR ALTER TRIGGER dbo.trg_Local_PrevenirEliminacionConOperaciones
ON dbo.Local
INSTEAD OF DELETE
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        IF EXISTS (
            SELECT 1
            FROM deleted d
            WHERE EXISTS (
                SELECT 1
                FROM Apuesta a
                WHERE a.id_local = d.id_local
            )
            OR EXISTS (
                SELECT 1
                FROM TrabajadorxLocal txl
                WHERE txl.id_local = d.id_local
            )
        )
        BEGIN
            THROW 50005, 'No se puede eliminar un local con apuestas o trabajadores asociados.', 1;
        END;

        DELETE l
        FROM Local l
        INNER JOIN deleted d ON l.id_local = d.id_local;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH;
END;
GO

-- Trigger 5: Validar monto y cuota de una apuesta
CREATE OR ALTER TRIGGER dbo.trg_Apuesta_ValidarMontoCuota
ON dbo.Apuesta
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        IF EXISTS (
            SELECT 1
            FROM inserted
            WHERE monto_apostado <= 0
               OR cuota_total < 1
        )
        BEGIN
            THROW 50006, 'El monto apostado debe ser mayor a cero y la cuota total debe ser mayor o igual a 1.', 1;
        END;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH;
END;
GO

-- Trigger 6: Validar saldo disponible antes de registrar apuesta
CREATE OR ALTER TRIGGER dbo.trg_Apuesta_ValidarSaldoDisponible
ON dbo.Apuesta
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        IF EXISTS (
            SELECT 1
            FROM inserted i
            INNER JOIN Saldo s 
                ON i.id_usuario = s.id_usuario
               AND i.id_moneda = s.id_moneda
            WHERE i.monto_apostado > s.monto_disponible
        )
        BEGIN
            THROW 50007, 'El usuario no cuenta con saldo disponible suficiente para registrar la apuesta.', 1;
        END;

        IF EXISTS (
            SELECT 1
            FROM inserted i
            WHERE NOT EXISTS (
                SELECT 1
                FROM Saldo s
                WHERE s.id_usuario = i.id_usuario
                  AND s.id_moneda = i.id_moneda
            )
        )
        BEGIN
            THROW 50008, 'El usuario no tiene saldo registrado para la moneda de la apuesta.', 1;
        END;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH;
END;
GO

-- Trigger 7: Evitar modificación de apuestas cerradas
CREATE OR ALTER TRIGGER dbo.trg_Apuesta_PrevenirCambioApuestaCerrada
ON dbo.Apuesta
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        IF EXISTS (
            SELECT 1
            FROM inserted i
            INNER JOIN deleted d ON i.id_apuesta = d.id_apuesta
            INNER JOIN EstadoApuesta ea ON d.id_estado_apuesta = ea.id_estado_apuesta
            WHERE ea.nombre_estado IN ('GANADA', 'PERDIDA', 'ANULADA')
              AND (
                    i.monto_apostado <> d.monto_apostado
                 OR i.cuota_total <> d.cuota_total
              )
        )
        BEGIN
            THROW 50009, 'No se puede modificar el monto o la cuota de una apuesta cerrada.', 1;
        END;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH;
END;
GO

-- Trigger 8: Validar que la cuota seleccionada esté activa
CREATE OR ALTER TRIGGER dbo.trg_DetalleApuesta_ValidarCuotaActiva
ON dbo.DetalleApuesta
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        IF EXISTS (
            SELECT 1
            FROM inserted i
            INNER JOIN Cuota c ON i.id_cuota = c.id_cuota
            WHERE c.estado <> 'ACTIVA'
        )
        BEGIN
            THROW 50010, 'No se puede registrar una apuesta con una cuota que no se encuentra activa.', 1;
        END;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH;
END;
GO

-- Trigger 9: Copiar valor actual de cuota en el detalle de apuesta
CREATE OR ALTER TRIGGER dbo.trg_DetalleApuesta_CopiarValorCuota
ON dbo.DetalleApuesta
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        UPDATE da
        SET da.valor_cuota = c.valor
        FROM DetalleApuesta da
        INNER JOIN inserted i
            ON da.id_apuesta = i.id_apuesta
           AND da.id_cuota = i.id_cuota
        INNER JOIN Cuota c
            ON i.id_cuota = c.id_cuota
        WHERE i.valor_cuota IS NULL
           OR i.valor_cuota <= 0;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH;
END;
GO

-- Trigger 10: Validar valor de cuota
CREATE OR ALTER TRIGGER dbo.trg_Cuota_ValidarValor
ON dbo.Cuota
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        IF EXISTS (
            SELECT 1
            FROM inserted
            WHERE valor < 1
        )
        BEGIN
            THROW 50011, 'El valor de la cuota debe ser mayor o igual a 1.', 1;
        END;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH;
END;
GO

-- Trigger 11: Evitar eliminación de cuotas usadas en apuestas
CREATE OR ALTER TRIGGER dbo.trg_Cuota_PrevenirEliminacionConApuestas
ON dbo.Cuota
INSTEAD OF DELETE
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        IF EXISTS (
            SELECT 1
            FROM deleted d
            INNER JOIN DetalleApuesta da ON d.id_cuota = da.id_cuota
        )
        BEGIN
            THROW 50012, 'No se puede eliminar una cuota que ya fue utilizada en una apuesta.', 1;
        END;

        DELETE c
        FROM Cuota c
        INNER JOIN deleted d ON c.id_cuota = d.id_cuota;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH;
END;
GO

-- Trigger 12: Validar montos de transacción financiera
CREATE OR ALTER TRIGGER dbo.trg_TransaccionFinanciera_ValidarMontos
ON dbo.TransaccionFinanciera
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        IF EXISTS (
            SELECT 1
            FROM inserted
            WHERE monto_total <= 0
               OR monto_neto < 0
               OR monto_neto > monto_total
        )
        BEGIN
            THROW 50013, 'Los montos de la transacción financiera no son válidos.', 1;
        END;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH;
END;
GO

-- Trigger 13: Validar retiro contra saldo disponible
CREATE OR ALTER TRIGGER dbo.trg_TransaccionFinanciera_ValidarRetiroSaldo
ON dbo.TransaccionFinanciera
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        IF EXISTS (
            SELECT 1
            FROM inserted i
            INNER JOIN TipoTransaccion tt 
                ON i.id_tipo_transaccion = tt.id_tipo_transaccion
            INNER JOIN Saldo s
                ON i.id_usuario = s.id_usuario
               AND i.id_moneda = s.id_moneda
            WHERE tt.nombre_tipo = 'RETIRO'
              AND i.monto_total > s.monto_disponible
        )
        BEGIN
            THROW 50014, 'El monto del retiro no puede superar el saldo disponible del usuario.', 1;
        END;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH;
END;
GO

-- Trigger 14: Actualizar saldo e historial por transacción completada
CREATE OR ALTER TRIGGER dbo.trg_TransaccionFinanciera_ActualizarSaldoHistorial
ON dbo.TransaccionFinanciera
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        ;WITH TransaccionesCompletadas AS (
            SELECT
                i.id_transaccion,
                i.id_usuario,
                i.id_moneda,
                i.monto_neto,
                tt.naturaleza,
                CASE 
                    WHEN tt.naturaleza = 'INGRESO' THEN i.monto_neto
                    WHEN tt.naturaleza = 'EGRESO' THEN i.monto_neto * -1
                    ELSE 0
                END AS variacion
            FROM inserted i
            INNER JOIN TipoTransaccion tt
                ON i.id_tipo_transaccion = tt.id_tipo_transaccion
            INNER JOIN EstadoTransaccion et
                ON i.id_estado = et.id_estado
            LEFT JOIN deleted d
                ON i.id_transaccion = d.id_transaccion
            LEFT JOIN EstadoTransaccion etd
                ON d.id_estado = etd.id_estado
            WHERE et.nombre_estado = 'COMPLETADA'
              AND tt.afecta_saldo = 1
              AND (
                    d.id_transaccion IS NULL
                 OR ISNULL(etd.nombre_estado, '') <> 'COMPLETADA'
              )
        )
        UPDATE s
        SET
            s.monto_disponible = s.monto_disponible + tc.variacion,
            s.monto_total = s.monto_total + tc.variacion,
            s.ultima_actualizacion = GETDATE()
        FROM Saldo s
        INNER JOIN TransaccionesCompletadas tc
            ON s.id_usuario = tc.id_usuario
           AND s.id_moneda = tc.id_moneda;

        ;WITH TransaccionesCompletadas AS (
            SELECT
                i.id_transaccion,
                i.id_usuario,
                i.id_moneda,
                i.monto_neto,
                tt.naturaleza,
                CASE 
                    WHEN tt.naturaleza = 'INGRESO' THEN i.monto_neto
                    WHEN tt.naturaleza = 'EGRESO' THEN i.monto_neto * -1
                    ELSE 0
                END AS variacion
            FROM inserted i
            INNER JOIN TipoTransaccion tt
                ON i.id_tipo_transaccion = tt.id_tipo_transaccion
            INNER JOIN EstadoTransaccion et
                ON i.id_estado = et.id_estado
            LEFT JOIN deleted d
                ON i.id_transaccion = d.id_transaccion
            LEFT JOIN EstadoTransaccion etd
                ON d.id_estado = etd.id_estado
            WHERE et.nombre_estado = 'COMPLETADA'
              AND tt.afecta_saldo = 1
              AND (
                    d.id_transaccion IS NULL
                 OR ISNULL(etd.nombre_estado, '') <> 'COMPLETADA'
              )
        )
        INSERT INTO HistorialSaldo (
            saldo_anterior,
            saldo_posterior,
            fecha_registro,
            id_saldo,
            id_transaccion
        )
        SELECT
            s.monto_total - tc.variacion AS saldo_anterior,
            s.monto_total AS saldo_posterior,
            GETDATE() AS fecha_registro,
            s.id_saldo,
            tc.id_transaccion
        FROM TransaccionesCompletadas tc
        INNER JOIN Saldo s
            ON tc.id_usuario = s.id_usuario
           AND tc.id_moneda = s.id_moneda;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH;
END;
GO

-- Trigger 15: Validar comprobante de transacción completada
CREATE OR ALTER TRIGGER dbo.trg_Comprobante_ValidarTransaccionCompletada
ON dbo.Comprobante
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        IF EXISTS (
            SELECT 1
            FROM inserted i
            INNER JOIN TransaccionFinanciera tf
                ON i.id_transaccion = tf.id_transaccion
            INNER JOIN EstadoTransaccion et
                ON tf.id_estado = et.id_estado
            WHERE et.nombre_estado <> 'COMPLETADA'
        )
        BEGIN
            THROW 50015, 'Solo se pueden emitir comprobantes para transacciones completadas.', 1;
        END;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH;
END;
GO
