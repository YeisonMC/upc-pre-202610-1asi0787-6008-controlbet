-- Función 1: Cantidad de apuestas por estado
CREATE OR ALTER FUNCTION dbo.fn_CantidadApuestasPorEstado
(
    @estado VARCHAR(30)
)
RETURNS INT
AS
BEGIN
    DECLARE @cantidad INT;

    SELECT @cantidad = COUNT(*)
    FROM Apuesta a
    INNER JOIN EstadoApuesta ea 
        ON a.id_estado_apuesta = ea.id_estado_apuesta
    WHERE ea.nombre_estado = @estado;

    RETURN ISNULL(@cantidad, 0);
END;
GO

PRINT 'Cantidad de apuestas ganadas: ' + CAST(dbo.fn_CantidadApuestasPorEstado('GANADA') AS VARCHAR(20));
GO

-- Función 2: Total apostado por moneda
CREATE OR ALTER FUNCTION dbo.fn_TotalApostadoPorMoneda
(
    @codigo_moneda VARCHAR(10)
)
RETURNS DECIMAL(12,2)
AS
BEGIN
    DECLARE @total DECIMAL(12,2);

    SELECT @total = SUM(a.monto_apostado)
    FROM Apuesta a
    INNER JOIN Moneda m 
        ON a.id_moneda = m.id_moneda
    WHERE m.codigo_moneda = @codigo_moneda;

    RETURN ISNULL(@total, 0);
END;
GO

PRINT 'Total apostado en PEN: ' + CAST(dbo.fn_TotalApostadoPorMoneda('PEN') AS VARCHAR(30));
GO

-- Función 3: Promedio de monto apostado por tipo de apuesta
CREATE OR ALTER FUNCTION dbo.fn_PromedioMontoPorTipoApuesta
(
    @tipo_apuesta VARCHAR(30)
)
RETURNS DECIMAL(12,2)
AS
BEGIN
    DECLARE @promedio DECIMAL(12,2);

    SELECT @promedio = AVG(monto_apostado)
    FROM Apuesta
    WHERE tipo_apuesta = @tipo_apuesta;

    RETURN ISNULL(@promedio, 0);
END;
GO

PRINT 'Promedio de apuesta SIMPLE: ' + CAST(dbo.fn_PromedioMontoPorTipoApuesta('SIMPLE') AS VARCHAR(30));
GO

-- Función 4: Premio potencial de una apuesta
CREATE OR ALTER FUNCTION dbo.fn_PremioPotencialApuesta
(
    @id_apuesta INT
)
RETURNS DECIMAL(12,2)
AS
BEGIN
    DECLARE @premio DECIMAL(12,2);

    SELECT @premio = ROUND(monto_apostado * cuota_total, 2)
    FROM Apuesta
    WHERE id_apuesta = @id_apuesta;

    RETURN ISNULL(@premio, 0);
END;
GO

PRINT 'Premio potencial de la apuesta 1: ' + CAST(dbo.fn_PremioPotencialApuesta(1) AS VARCHAR(30));
GO

-- Función 5: Saldo disponible de un usuario
CREATE OR ALTER FUNCTION dbo.fn_SaldoDisponibleUsuario
(
    @id_usuario INT
)
RETURNS DECIMAL(12,2)
AS
BEGIN
    DECLARE @saldo DECIMAL(12,2);

    SELECT @saldo = SUM(monto_disponible)
    FROM Saldo
    WHERE id_usuario = @id_usuario;

    RETURN ISNULL(@saldo, 0);
END;
GO

PRINT 'Saldo disponible del usuario 1: ' + CAST(dbo.fn_SaldoDisponibleUsuario(1) AS VARCHAR(30));
GO

-- Función 6: Saldo retenido de un usuario
CREATE OR ALTER FUNCTION dbo.fn_SaldoRetenidoUsuario
(
    @id_usuario INT
)
RETURNS DECIMAL(12,2)
AS
BEGIN
    DECLARE @saldo_retenido DECIMAL(12,2);

    SELECT @saldo_retenido = SUM(monto_retenido)
    FROM Saldo
    WHERE id_usuario = @id_usuario;

    RETURN ISNULL(@saldo_retenido, 0);
END;
GO

PRINT 'Saldo retenido del usuario 2: ' + CAST(dbo.fn_SaldoRetenidoUsuario(2) AS VARCHAR(30));
GO

-- Función 7: Total de transacciones por tipo
CREATE OR ALTER FUNCTION dbo.fn_TotalTransaccionesPorTipo
(
    @tipo_transaccion VARCHAR(50)
)
RETURNS DECIMAL(12,2)
AS
BEGIN
    DECLARE @total DECIMAL(12,2);

    SELECT @total = SUM(tf.monto_total)
    FROM TransaccionFinanciera tf
    INNER JOIN TipoTransaccion tt 
        ON tf.id_tipo_transaccion = tt.id_tipo_transaccion
    WHERE tt.nombre_tipo = @tipo_transaccion;

    RETURN ISNULL(@total, 0);
END;
GO

PRINT 'Total de transacciones tipo DEPOSITO: ' + CAST(dbo.fn_TotalTransaccionesPorTipo('DEPOSITO') AS VARCHAR(30));
GO

-- Función 8: Cantidad de transacciones por estado
CREATE OR ALTER FUNCTION dbo.fn_CantidadTransaccionesPorEstado
(
    @estado VARCHAR(30)
)
RETURNS INT
AS
BEGIN
    DECLARE @cantidad INT;

    SELECT @cantidad = COUNT(*)
    FROM TransaccionFinanciera tf
    INNER JOIN EstadoTransaccion et 
        ON tf.id_estado = et.id_estado
    WHERE et.nombre_estado = @estado;

    RETURN ISNULL(@cantidad, 0);
END;
GO

PRINT 'Cantidad de transacciones pendientes: ' + CAST(dbo.fn_CantidadTransaccionesPorEstado('PENDIENTE') AS VARCHAR(20));
GO

-- Función 9: Balance financiero por rango de fechas
CREATE OR ALTER FUNCTION dbo.fn_BalanceFinancieroPorFechas
(
    @fecha_inicio DATE,
    @fecha_fin DATE
)
RETURNS DECIMAL(12,2)
AS
BEGIN
    DECLARE @balance DECIMAL(12,2);

    SELECT @balance =
        SUM(CASE WHEN tt.naturaleza = 'INGRESO' THEN tf.monto_neto ELSE 0 END) -
        SUM(CASE WHEN tt.naturaleza = 'EGRESO' THEN tf.monto_neto ELSE 0 END)
    FROM TransaccionFinanciera tf
    INNER JOIN TipoTransaccion tt 
        ON tf.id_tipo_transaccion = tt.id_tipo_transaccion
    INNER JOIN EstadoTransaccion et 
        ON tf.id_estado = et.id_estado
    WHERE tf.fecha_proceso >= @fecha_inicio
      AND tf.fecha_proceso < DATEADD(DAY, 1, @fecha_fin)
      AND et.nombre_estado = 'COMPLETADA';

    RETURN ISNULL(@balance, 0);
END;
GO

PRINT 'Balance financiero: ' + CAST(dbo.fn_BalanceFinancieroPorFechas('2024-01-01', '2024-12-31') AS VARCHAR(30));
GO

-- Función 10: Cantidad de apuestas por año
CREATE OR ALTER FUNCTION dbo.fn_CantidadApuestasPorAnio
(
    @anio INT
)
RETURNS INT
AS
BEGIN
    DECLARE @cantidad INT;

    SELECT @cantidad = COUNT(*)
    FROM Apuesta
    WHERE YEAR(fecha_apuesta) = @anio;

    RETURN ISNULL(@cantidad, 0);
END;
GO

PRINT 'Cantidad de apuestas en 2024: ' + CAST(dbo.fn_CantidadApuestasPorAnio(2024) AS VARCHAR(20));
GO

-- Función 11: Monto máximo apostado por usuario
CREATE OR ALTER FUNCTION dbo.fn_MontoMaximoApostadoUsuario
(
    @id_usuario INT
)
RETURNS DECIMAL(12,2)
AS
BEGIN
    DECLARE @maximo DECIMAL(12,2);

    SELECT @maximo = MAX(monto_apostado)
    FROM Apuesta
    WHERE id_usuario = @id_usuario;

    RETURN ISNULL(@maximo, 0);
END;
GO

PRINT 'Mayor apuesta del usuario 1: ' + CAST(dbo.fn_MontoMaximoApostadoUsuario(1) AS VARCHAR(30));
GO

-- Función 12: Cantidad de cuotas activas por evento
CREATE OR ALTER FUNCTION dbo.fn_CuotasActivasPorEvento
(
    @id_evento INT
)
RETURNS INT
AS
BEGIN
    DECLARE @cantidad INT;

    SELECT @cantidad = COUNT(c.id_cuota)
    FROM Evento e
    INNER JOIN MercadoApuesta ma 
        ON e.id_evento = ma.id_evento
    INNER JOIN Cuota c 
        ON ma.id_mercado = c.id_mercado
    WHERE e.id_evento = @id_evento
      AND c.estado = 'ACTIVA';

    RETURN ISNULL(@cantidad, 0);
END;
GO

PRINT 'Cuotas activas del evento 6: ' + CAST(dbo.fn_CuotasActivasPorEvento(6) AS VARCHAR(20));
GO

-- Función 13: Cuota promedio por evento
CREATE OR ALTER FUNCTION dbo.fn_CuotaPromedioPorEvento
(
    @id_evento INT
)
RETURNS DECIMAL(12,2)
AS
BEGIN
    DECLARE @promedio DECIMAL(12,2);

    SELECT @promedio = AVG(c.valor)
    FROM Evento e
    INNER JOIN MercadoApuesta ma 
        ON e.id_evento = ma.id_evento
    INNER JOIN Cuota c 
        ON ma.id_mercado = c.id_mercado
    WHERE e.id_evento = @id_evento;

    RETURN ISNULL(@promedio, 0);
END;
GO

PRINT 'Cuota promedio del evento 1: ' + CAST(dbo.fn_CuotaPromedioPorEvento(1) AS VARCHAR(30));
GO

-- Función 14: Cantidad de comprobantes emitidos por año
CREATE OR ALTER FUNCTION dbo.fn_ComprobantesEmitidosPorAnio
(
    @anio INT
)
RETURNS INT
AS
BEGIN
    DECLARE @cantidad INT;

    SELECT @cantidad = COUNT(*)
    FROM Comprobante
    WHERE YEAR(fecha_emision) = @anio;

    RETURN ISNULL(@cantidad, 0);
END;
GO

PRINT 'Comprobantes emitidos en 2024: ' + CAST(dbo.fn_ComprobantesEmitidosPorAnio(2024) AS VARCHAR(20));
GO

-- Función 15: Nivel de riesgo de una apuesta
CREATE OR ALTER FUNCTION dbo.fn_NivelRiesgoApuesta
(
    @id_apuesta INT
)
RETURNS VARCHAR(20)
AS
BEGIN
    DECLARE @monto DECIMAL(12,2);
    DECLARE @nivel VARCHAR(20);

    SELECT @monto = monto_apostado
    FROM Apuesta
    WHERE id_apuesta = @id_apuesta;

    SET @nivel =
        CASE
            WHEN @monto IS NULL THEN 'NO EXISTE'
            WHEN @monto >= 500 THEN 'ALTO'
            WHEN @monto >= 100 THEN 'MEDIO'
            ELSE 'BAJO'
        END;

    RETURN @nivel;
END;
GO

PRINT 'Nivel de riesgo de la apuesta 1: ' + dbo.fn_NivelRiesgoApuesta(1);
GO