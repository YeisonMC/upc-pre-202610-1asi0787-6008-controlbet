-- Procedimiento 1: Listar apuestas ganadas
CREATE OR ALTER PROCEDURE dbo.usp_ListarApuestasGanadas
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        a.id_apuesta,
        a.codigo_ticket,
        CONCAT(p.nombres, ' ', p.apellidos) AS cliente,
        a.tipo_apuesta,
        a.monto_apostado,
        a.cuota_total,
        ROUND(a.monto_apostado * a.cuota_total, 2) AS premio_potencial,
        a.fecha_apuesta
    FROM Apuesta a
    INNER JOIN Usuario u ON a.id_usuario = u.id_usuario
    INNER JOIN Persona p ON u.id_persona = p.id_persona
    INNER JOIN EstadoApuesta ea ON a.id_estado_apuesta = ea.id_estado_apuesta
    WHERE ea.nombre_estado = 'GANADA'
    ORDER BY a.fecha_apuesta DESC;
END;
GO

EXEC dbo.usp_ListarApuestasGanadas;
GO 

-- Procedimiento 2: Consultar apuestas entre fechas
CREATE OR ALTER PROCEDURE dbo.usp_ConsultarApuestasPorFechas
    @fecha_inicio DATETIME,
    @fecha_fin DATETIME
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        a.id_apuesta,
        a.codigo_ticket,
        CONCAT(p.nombres, ' ', p.apellidos) AS cliente,
        ea.nombre_estado AS estado_apuesta,
        a.tipo_apuesta,
        a.monto_apostado,
        a.cuota_total,
        a.fecha_apuesta
    FROM Apuesta a
    INNER JOIN Usuario u ON a.id_usuario = u.id_usuario
    INNER JOIN Persona p ON u.id_persona = p.id_persona
    INNER JOIN EstadoApuesta ea ON a.id_estado_apuesta = ea.id_estado_apuesta
    WHERE a.fecha_apuesta >= @fecha_inicio
      AND a.fecha_apuesta < DATEADD(DAY, 1, @fecha_fin)
    ORDER BY a.fecha_apuesta DESC;
END;
GO

EXEC dbo.usp_ConsultarApuestasPorFechas 
    @fecha_inicio = '2024-01-01',
    @fecha_fin    = '2024-12-31';
GO 

-- Procedimiento 3: Resumen de apuestas por estado
CREATE OR ALTER PROCEDURE dbo.usp_ResumenApuestasPorEstado
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        ea.nombre_estado AS estado_apuesta,
        COUNT(a.id_apuesta) AS cantidad_apuestas,
        SUM(a.monto_apostado) AS monto_total_apostado,
        ROUND(AVG(a.monto_apostado), 2) AS monto_promedio,
        MAX(a.monto_apostado) AS monto_maximo,
        MIN(a.monto_apostado) AS monto_minimo
    FROM Apuesta a
    INNER JOIN EstadoApuesta ea ON a.id_estado_apuesta = ea.id_estado_apuesta
    GROUP BY ea.nombre_estado
    ORDER BY monto_total_apostado DESC;
END;
GO

EXEC dbo.usp_ResumenApuestasPorEstado
GO

-- Procedimiento 4: Clientes con mayor monto apostado
CREATE OR ALTER PROCEDURE dbo.usp_ClientesMayorMontoApostado
    @top_clientes INT = 10
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TOP (@top_clientes)
        u.id_usuario,
        CONCAT(p.nombres, ' ', p.apellidos) AS cliente,
        COUNT(a.id_apuesta) AS total_apuestas,
        SUM(a.monto_apostado) AS monto_total_apostado,
        ROUND(AVG(a.monto_apostado), 2) AS promedio_por_apuesta,
        MAX(a.monto_apostado) AS mayor_apuesta,
        MIN(a.monto_apostado) AS menor_apuesta
    FROM Usuario u
    INNER JOIN Persona p ON u.id_persona = p.id_persona
    INNER JOIN Apuesta a ON u.id_usuario = a.id_usuario
    GROUP BY u.id_usuario, p.nombres, p.apellidos
    HAVING SUM(a.monto_apostado) > 0
    ORDER BY monto_total_apostado DESC;
END;
GO

EXEC dbo.usp_ClientesMayorMontoApostado
	 @top_clientes = 1 
GO

-- Procedimiento 5: Consultar detalle de apuestas por usuario
CREATE OR ALTER PROCEDURE dbo.usp_DetalleApuestasPorUsuario
    @id_usuario INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        a.id_apuesta,
        a.codigo_ticket,
        ea.nombre_estado AS estado_apuesta,
        a.tipo_apuesta,
        a.monto_apostado,
        a.cuota_total,
        ROUND(a.monto_apostado * a.cuota_total, 2) AS premio_potencial,
        ISNULL(lo.nombre_local, 'ONLINE') AS local_registro,
        a.fecha_apuesta
    FROM Apuesta a
    INNER JOIN EstadoApuesta ea ON a.id_estado_apuesta = ea.id_estado_apuesta
    LEFT JOIN Local lo ON a.id_local = lo.id_local
    WHERE a.id_usuario = @id_usuario
    ORDER BY a.fecha_apuesta DESC;
END;
GO

EXEC dbo.usp_DetalleApuestasPorUsuario
	 @id_usuario = 44
GO

-- Procedimiento 6: Eventos con mayor actividad de apuestas
CREATE OR ALTER PROCEDURE dbo.usp_EventosConMayorActividad
    @top_eventos INT = 10
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TOP (@top_eventos)
        e.id_evento,
        e.nombre_evento,
        d.nombre_deporte,
        li.nombre_liga,
        COUNT(DISTINCT a.id_apuesta) AS cantidad_apuestas,
        ROUND(AVG(da.valor_cuota), 2) AS cuota_promedio
    FROM Apuesta a
    INNER JOIN DetalleApuesta da ON a.id_apuesta = da.id_apuesta
    INNER JOIN Cuota c ON da.id_cuota = c.id_cuota
    INNER JOIN MercadoApuesta ma ON c.id_mercado = ma.id_mercado
    INNER JOIN Evento e ON ma.id_evento = e.id_evento
    INNER JOIN Liga li ON e.id_liga = li.id_liga
    INNER JOIN Deporte d ON li.id_deporte = d.id_deporte
    GROUP BY e.id_evento, e.nombre_evento, d.nombre_deporte, li.nombre_liga
    HAVING COUNT(DISTINCT a.id_apuesta) > 0
    ORDER BY cantidad_apuestas DESC;
END;
GO

EXEC dbo.usp_EventosConMayorActividad
    @top_eventos = 1;
GO

-- Procedimiento 7: Consultar cuotas activas por evento
CREATE OR ALTER PROCEDURE dbo.usp_CuotasActivasPorEvento
    @nombre_evento VARCHAR(150)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        e.nombre_evento,
        ma.nombre_mercado,
        c.nombre_opcion,
        c.valor AS valor_cuota,
        c.estado AS estado_cuota
    FROM Evento e
    INNER JOIN MercadoApuesta ma ON e.id_evento = ma.id_evento
    INNER JOIN Cuota c ON ma.id_mercado = c.id_mercado
    WHERE e.nombre_evento LIKE '%' + @nombre_evento + '%'
      AND c.estado = 'ACTIVA'
    ORDER BY e.nombre_evento, ma.nombre_mercado, c.valor DESC;
END;
GO

EXEC dbo.usp_CuotasActivasPorEvento
	 @nombre_evento = 'Alianza'
GO

-- Procedimiento 8: Resumen de transacciones por tipo y estado
CREATE OR ALTER PROCEDURE dbo.usp_ResumenTransaccionesPorTipoEstado
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        tt.nombre_tipo AS tipo_transaccion,
        et.nombre_estado AS estado_transaccion,
        COUNT(tf.id_transaccion) AS cantidad_transacciones,
        SUM(tf.monto_total) AS monto_total,
        ROUND(AVG(tf.monto_total), 2) AS monto_promedio
    FROM TransaccionFinanciera tf
    INNER JOIN TipoTransaccion tt ON tf.id_tipo_transaccion = tt.id_tipo_transaccion
    INNER JOIN EstadoTransaccion et ON tf.id_estado = et.id_estado
    GROUP BY tt.nombre_tipo, et.nombre_estado
    ORDER BY monto_total DESC;
END;
GO

EXEC dbo.usp_ResumenTransaccionesPorTipoEstado
GO

-- Procedimiento 9: Transacciones pendientes por monto mínimo
CREATE OR ALTER PROCEDURE dbo.usp_TransaccionesPendientesPorMonto
    @monto_minimo DECIMAL(12,2) = 100.00
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        tf.id_transaccion,
        CONCAT(p.nombres, ' ', p.apellidos) AS usuario,
        tt.nombre_tipo AS tipo_transaccion,
        mp.nombre_metodo AS metodo_pago,
        tf.monto_total,
        m.codigo_moneda,
        tf.fecha_solicitud,
        et.nombre_estado AS estado_transaccion
    FROM TransaccionFinanciera tf
    INNER JOIN Usuario u ON tf.id_usuario = u.id_usuario
    INNER JOIN Persona p ON u.id_persona = p.id_persona
    INNER JOIN TipoTransaccion tt ON tf.id_tipo_transaccion = tt.id_tipo_transaccion
    INNER JOIN EstadoTransaccion et ON tf.id_estado = et.id_estado
    INNER JOIN MetodoPago mp ON tf.id_metodo_pago = mp.id_metodo_pago
    INNER JOIN Moneda m ON tf.id_moneda = m.id_moneda
    WHERE et.nombre_estado = 'PENDIENTE'
      AND tf.monto_total >= @monto_minimo
    ORDER BY tf.monto_total DESC, tf.fecha_solicitud ASC;
END;
GO

EXEC dbo.usp_TransaccionesPendientesPorMonto
GO

-- Procedimiento 10: Consultar saldo por usuario
CREATE OR ALTER PROCEDURE dbo.usp_ConsultarSaldoPorUsuario
    @id_usuario INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        u.id_usuario,
        CONCAT(p.nombres, ' ', p.apellidos) AS usuario,
        m.codigo_moneda,
        s.monto_disponible,
        s.monto_retenido,
        s.monto_total,
        s.ultima_actualizacion
    FROM Saldo s
    INNER JOIN Usuario u ON s.id_usuario = u.id_usuario
    INNER JOIN Persona p ON u.id_persona = p.id_persona
    INNER JOIN Moneda m ON s.id_moneda = m.id_moneda
    WHERE u.id_usuario = @id_usuario
    ORDER BY m.codigo_moneda;
END;
GO

EXEC dbo.usp_ConsultarSaldoPorUsuario
	@id_usuario = 20
GO

-- Procedimiento 11: Historial de saldo por usuario
CREATE OR ALTER PROCEDURE dbo.usp_HistorialSaldoPorUsuario
    @id_usuario INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        hs.id_historial_saldo,
        CONCAT(p.nombres, ' ', p.apellidos) AS usuario,
        hs.saldo_anterior,
        hs.saldo_posterior,
        ROUND(hs.saldo_posterior - hs.saldo_anterior, 2) AS variacion_saldo,
        hs.fecha_registro,
        tf.id_transaccion
    FROM HistorialSaldo hs
    INNER JOIN Saldo s ON hs.id_saldo = s.id_saldo
    INNER JOIN Usuario u ON s.id_usuario = u.id_usuario
    INNER JOIN Persona p ON u.id_persona = p.id_persona
    INNER JOIN TransaccionFinanciera tf ON hs.id_transaccion = tf.id_transaccion
    WHERE u.id_usuario = @id_usuario
    ORDER BY hs.fecha_registro DESC;
END;
GO

EXEC dbo.usp_ConsultarSaldoPorUsuario
	@id_usuario = 30
GO

-- Procedimiento 12: Balance financiero diario por rango de fechas
CREATE OR ALTER PROCEDURE dbo.usp_BalanceDiarioPorRangoFechas
    @fecha_inicio DATE,
    @fecha_fin DATE
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        CAST(tf.fecha_proceso AS DATE) AS fecha,
        SUM(CASE WHEN tt.naturaleza = 'INGRESO' THEN tf.monto_neto ELSE 0 END) AS total_ingresos,
        SUM(CASE WHEN tt.naturaleza = 'EGRESO' THEN tf.monto_neto ELSE 0 END) AS total_egresos,
        ROUND(
            SUM(CASE WHEN tt.naturaleza = 'INGRESO' THEN tf.monto_neto ELSE 0 END) -
            SUM(CASE WHEN tt.naturaleza = 'EGRESO' THEN tf.monto_neto ELSE 0 END), 2
        ) AS balance_dia
    FROM TransaccionFinanciera tf
    INNER JOIN TipoTransaccion tt ON tf.id_tipo_transaccion = tt.id_tipo_transaccion
    INNER JOIN EstadoTransaccion et ON tf.id_estado = et.id_estado
    WHERE tf.fecha_proceso >= @fecha_inicio
      AND tf.fecha_proceso < DATEADD(DAY, 1, @fecha_fin)
      AND et.nombre_estado = 'COMPLETADA'
    GROUP BY CAST(tf.fecha_proceso AS DATE)
    ORDER BY fecha DESC;
END;
GO

EXEC dbo.usp_BalanceDiarioPorRangoFechas
    @fecha_inicio = '2024-01-01',
    @fecha_fin    = '2024-12-31';
GO

-- Procedimiento 13: Comprobantes emitidos por rango de fechas
CREATE OR ALTER PROCEDURE dbo.usp_ComprobantesPorRangoFechas
    @fecha_inicio DATE,
    @fecha_fin DATE
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        c.id_comprobante,
        c.numero_comprobante,
        c.fecha_emision,
        tf.id_transaccion,
        tt.nombre_tipo AS tipo_transaccion,
        mp.nombre_metodo AS metodo_pago,
        tf.monto_total,
        m.codigo_moneda,
        et.nombre_estado AS estado_transaccion
    FROM Comprobante c
    INNER JOIN TransaccionFinanciera tf ON c.id_transaccion = tf.id_transaccion
    INNER JOIN TipoTransaccion tt ON tf.id_tipo_transaccion = tt.id_tipo_transaccion
    INNER JOIN MetodoPago mp ON tf.id_metodo_pago = mp.id_metodo_pago
    INNER JOIN Moneda m ON tf.id_moneda = m.id_moneda
    INNER JOIN EstadoTransaccion et ON tf.id_estado = et.id_estado
    WHERE c.fecha_emision >= @fecha_inicio
      AND c.fecha_emision < DATEADD(DAY, 1, @fecha_fin)
    ORDER BY c.fecha_emision DESC;
END;
GO

EXEC dbo.usp_ComprobantesPorRangoFechas
    @fecha_inicio = '2024-01-01',
    @fecha_fin    = '2024-12-31';
GO

-- Procedimiento 14: Trabajadores asignados a un local
CREATE OR ALTER PROCEDURE dbo.usp_TrabajadoresPorLocal
    @id_local INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        lo.id_local,
        lo.nombre_local,
        lo.distrito,
        CONCAT(p.nombres, ' ', p.apellidos) AS trabajador,
        r.nombre_rol,
        txl.fecha_asignacion,
        CASE 
            WHEN txl.estado = 1 THEN 'ACTIVO'
            ELSE 'INACTIVO'
        END AS estado_asignacion
    FROM TrabajadorxLocal txl
    INNER JOIN Trabajador t ON txl.id_trabajador = t.id_trabajador
    INNER JOIN Persona p ON t.id_persona = p.id_persona
    INNER JOIN Rol r ON t.id_rol = r.id_rol
    INNER JOIN Local lo ON txl.id_local = lo.id_local
    WHERE lo.id_local = @id_local
    ORDER BY r.nombre_rol, trabajador;
END;
GO

EXEC dbo.usp_TrabajadoresPorLocal
	@id_local = 3
GO

-- Procedimiento 15: Retornar cantidad y monto total de apuestas por año
CREATE OR ALTER PROCEDURE dbo.usp_ResumenApuestasPorAnio
    @anio INT,
    @cantidad_apuestas INT OUTPUT,
    @monto_total DECIMAL(12,2) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        @cantidad_apuestas = COUNT(*),
        @monto_total = ISNULL(SUM(monto_apostado), 0)
    FROM Apuesta
    WHERE YEAR(fecha_apuesta) = @anio;
END;
GO

DECLARE @cantidad INT;
DECLARE @monto    DECIMAL(12,2);

EXEC dbo.usp_ResumenApuestasPorAnio
    @anio               = 2024,
    @cantidad_apuestas  = @cantidad OUTPUT,
    @monto_total        = @monto    OUTPUT;

-- Ver los resultados
SELECT 
    @cantidad AS cantidad_apuestas,
    @monto    AS monto_total;
GO
