-- Consulta 1: Historial de apuestas registradas
SELECT
    a.id_apuesta,
    a.codigo_ticket,
    CONCAT(p.nombres, ' ', p.apellidos) AS cliente,
    l.nombre_local,
    ea.nombre_estado AS estado_apuesta,
    a.tipo_apuesta,
    a.monto_apostado,
    a.cuota_total,
    ROUND(a.monto_apostado * a.cuota_total, 2) AS premio_potencial,
    m.codigo_moneda,
    a.fecha_apuesta
FROM Apuesta a
INNER JOIN Usuario u ON a.id_usuario = u.id_usuario
INNER JOIN Persona p ON u.id_persona = p.id_persona
INNER JOIN EstadoApuesta ea ON a.id_estado_apuesta = ea.id_estado_apuesta
INNER JOIN Moneda m ON a.id_moneda = m.id_moneda
LEFT JOIN Local l ON a.id_local = l.id_local
WHERE a.fecha_apuesta BETWEEN '2024-03-01' AND '2024-06-30'
  AND ea.nombre_estado IN ('PENDIENTE', 'GANADA', 'PERDIDA', 'ANULADA')
ORDER BY a.fecha_apuesta DESC;

-- Consulta 2: Resumen de apuestas por estado
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
HAVING COUNT(a.id_apuesta) > 0
ORDER BY monto_total_apostado DESC;

-- Consulta 3: Clientes con monto apostado superior al promedio general
SELECT
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
HAVING SUM(a.monto_apostado) > (
    SELECT AVG(total_apostado)
    FROM (
        SELECT SUM(monto_apostado) AS total_apostado
        FROM Apuesta
        GROUP BY id_usuario
    ) AS resumen_usuarios
)
ORDER BY monto_total_apostado DESC;

-- Consulta 4: Eventos deportivos con apuestas superiores al promedio
SELECT
    resumen.id_evento,
    resumen.nombre_evento,
    resumen.nombre_deporte,
    resumen.nombre_liga,
    resumen.cantidad_apuestas,
    resumen.cuota_promedio
FROM (
    SELECT
        e.id_evento,
        e.nombre_evento,
        d.nombre_deporte,
        l.nombre_liga,
        COUNT(DISTINCT a.id_apuesta) AS cantidad_apuestas,
        ROUND(AVG(da.valor_cuota), 2) AS cuota_promedio
    FROM Evento e
    INNER JOIN Liga l ON e.id_liga = l.id_liga
    INNER JOIN Deporte d ON l.id_deporte = d.id_deporte
    LEFT JOIN MercadoApuesta ma ON e.id_evento = ma.id_evento
    LEFT JOIN Cuota c ON ma.id_mercado = c.id_mercado
    LEFT JOIN DetalleApuesta da ON c.id_cuota = da.id_cuota
    LEFT JOIN Apuesta a ON da.id_apuesta = a.id_apuesta
    GROUP BY e.id_evento, e.nombre_evento, d.nombre_deporte, l.nombre_liga
) AS resumen
WHERE resumen.cantidad_apuestas >= (
    SELECT AVG(CAST(cantidad_apuestas AS DECIMAL(10,2)))
    FROM (
        SELECT
            e.id_evento,
            COUNT(DISTINCT a.id_apuesta) AS cantidad_apuestas
        FROM Evento e
        LEFT JOIN MercadoApuesta ma ON e.id_evento = ma.id_evento
        LEFT JOIN Cuota c ON ma.id_mercado = c.id_mercado
        LEFT JOIN DetalleApuesta da ON c.id_cuota = da.id_cuota
        LEFT JOIN Apuesta a ON da.id_apuesta = a.id_apuesta
        GROUP BY e.id_evento
    ) AS promedio_eventos
)
AND resumen.cantidad_apuestas > 0
ORDER BY resumen.cantidad_apuestas DESC;

-- Consulta 5: Cuotas activas para eventos de Universitario
SELECT
    e.nombre_evento,
    ma.nombre_mercado,
    c.nombre_opcion,
    c.valor AS valor_cuota,
    c.estado AS estado_cuota
FROM Evento e
INNER JOIN MercadoApuesta ma ON e.id_evento = ma.id_evento
INNER JOIN Cuota c ON ma.id_mercado = c.id_mercado
WHERE e.nombre_evento LIKE '%Universitario%'
  AND c.estado = 'ACTIVA'
ORDER BY e.nombre_evento, ma.nombre_mercado, c.valor DESC;

-- Consulta 6: Apuestas con monto superior al promedio general
SELECT
    a.id_apuesta,
    a.codigo_ticket,
    CONCAT(p.nombres, ' ', p.apellidos) AS cliente,
    ea.nombre_estado,
    a.monto_apostado,
    a.fecha_apuesta
FROM Apuesta a
INNER JOIN Usuario u ON a.id_usuario = u.id_usuario
INNER JOIN Persona p ON u.id_persona = p.id_persona
INNER JOIN EstadoApuesta ea ON a.id_estado_apuesta = ea.id_estado_apuesta
WHERE a.monto_apostado > (
    SELECT AVG(monto_apostado)
    FROM Apuesta
)
AND ea.nombre_estado IN ('PENDIENTE', 'GANADA', 'PERDIDA')
ORDER BY a.monto_apostado DESC;

-- Consulta 7: Resumen de transacciones por tipo y estado
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
HAVING COUNT(tf.id_transaccion) > 0
ORDER BY monto_total DESC;

-- Consulta 8: Transacciones pendientes por revisar
SELECT
    tf.id_transaccion,
    CONCAT(p.nombres, ' ', p.apellidos) AS usuario,
    tt.nombre_tipo AS tipo_transaccion,
    mp.nombre_metodo AS metodo_pago,
    tf.monto_total,
    m.codigo_moneda,
    tf.fecha_solicitud,
    et.nombre_estado
FROM TransaccionFinanciera tf
INNER JOIN Usuario u ON tf.id_usuario = u.id_usuario
INNER JOIN Persona p ON u.id_persona = p.id_persona
INNER JOIN TipoTransaccion tt ON tf.id_tipo_transaccion = tt.id_tipo_transaccion
INNER JOIN EstadoTransaccion et ON tf.id_estado = et.id_estado
INNER JOIN MetodoPago mp ON tf.id_metodo_pago = mp.id_metodo_pago
INNER JOIN Moneda m ON tf.id_moneda = m.id_moneda
WHERE et.nombre_estado = 'PENDIENTE'
  AND tf.monto_total >= 100
ORDER BY tf.monto_total DESC, tf.fecha_solicitud ASC;

-- Consulta 9: Saldos disponibles y retenidos por usuario
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
WHERE m.codigo_moneda IN ('PEN', 'USD', 'EUR')
  AND s.monto_total >= 0
ORDER BY s.monto_total DESC;

-- Consulta 10: Mayores variaciones de saldo
SELECT TOP 10
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
WHERE ABS(hs.saldo_posterior - hs.saldo_anterior) > 0
ORDER BY ABS(hs.saldo_posterior - hs.saldo_anterior) DESC;

-- Consulta 11: Ingresos y egresos diarios del negocio
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
WHERE tf.fecha_proceso IS NOT NULL
  AND et.nombre_estado = 'COMPLETADA'
GROUP BY CAST(tf.fecha_proceso AS DATE)
ORDER BY fecha DESC;

-- Consulta 12: Locales con mayor volumen de apuestas
SELECT
    l.id_local,
    l.nombre_local,
    l.distrito,
    l.ciudad,
    COUNT(a.id_apuesta) AS cantidad_apuestas,
    SUM(a.monto_apostado) AS monto_total_apostado,
    ROUND(AVG(a.monto_apostado), 2) AS promedio_apuesta
FROM Local l
INNER JOIN Apuesta a ON l.id_local = a.id_local
WHERE l.estado = 1
GROUP BY l.id_local, l.nombre_local, l.distrito, l.ciudad
HAVING COUNT(a.id_apuesta) >= 1
ORDER BY monto_total_apostado DESC;

-- Consulta 13: Trabajadores asignados por local y rol
SELECT
    l.nombre_local,
    l.distrito,
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
INNER JOIN Local l ON txl.id_local = l.id_local
WHERE txl.estado = 1
ORDER BY l.nombre_local, r.nombre_rol, trabajador;

-- Consulta 14: Deportes y ligas con mayor actividad de apuestas
SELECT
    d.nombre_deporte,
    l.nombre_liga,
    COUNT(DISTINCT e.id_evento) AS cantidad_eventos,
    COUNT(DISTINCT a.id_apuesta) AS cantidad_apuestas,
    ROUND(AVG(da.valor_cuota), 2) AS cuota_promedio
FROM Deporte d
INNER JOIN Liga l ON d.id_deporte = l.id_deporte
INNER JOIN Evento e ON l.id_liga = e.id_liga
INNER JOIN MercadoApuesta ma ON e.id_evento = ma.id_evento
INNER JOIN Cuota c ON ma.id_mercado = c.id_mercado
INNER JOIN DetalleApuesta da ON c.id_cuota = da.id_cuota
INNER JOIN Apuesta a ON da.id_apuesta = a.id_apuesta
WHERE d.estado = 1
GROUP BY d.nombre_deporte, l.nombre_liga
HAVING COUNT(DISTINCT a.id_apuesta) > 0
ORDER BY cantidad_apuestas DESC;

-- Consulta 15: Comprobantes emitidos por método de pago
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
WHERE c.numero_comprobante LIKE 'COMP%'
  AND et.nombre_estado IN ('COMPLETADA', 'PENDIENTE')
ORDER BY c.fecha_emision DESC;