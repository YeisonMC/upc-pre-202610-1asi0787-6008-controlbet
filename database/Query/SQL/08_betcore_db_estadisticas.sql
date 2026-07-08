USE apuestas_deportivas;
GO

-- 1. ST_Apuesta_Estado_Fecha
CREATE STATISTICS ST_Apuesta_Estado_Fecha
ON dbo.Apuesta(id_estado_apuesta, fecha_apuesta);
GO

EXEC sp_helpstats 'dbo.Apuesta', 'ALL';
GO

DBCC SHOW_STATISTICS ('dbo.Apuesta', 'ST_Apuesta_Estado_Fecha');
GO

-- 2. ST_Apuesta_Usuario_Fecha
CREATE STATISTICS ST_Apuesta_Usuario_Fecha
ON dbo.Apuesta(id_usuario, fecha_apuesta);
GO

EXEC sp_helpstats 'dbo.Apuesta', 'ALL';
GO

DBCC SHOW_STATISTICS ('dbo.Apuesta', 'ST_Apuesta_Usuario_Fecha');
GO

-- 3. ST_Apuesta_Monto
CREATE STATISTICS ST_Apuesta_Monto
ON dbo.Apuesta(monto_apostado);
GO

EXEC sp_helpstats 'dbo.Apuesta', 'ALL';
GO

DBCC SHOW_STATISTICS ('dbo.Apuesta', 'ST_Apuesta_Monto');
GO

-- 4. ST_Transaccion_Estado_Monto_FechaSolicitud
CREATE STATISTICS ST_Transaccion_Estado_Monto_FechaSolicitud
ON dbo.TransaccionFinanciera(id_estado, monto_total, fecha_solicitud);
GO

EXEC sp_helpstats 'dbo.TransaccionFinanciera', 'ALL';
GO

DBCC SHOW_STATISTICS ('dbo.TransaccionFinanciera', 'ST_Transaccion_Estado_Monto_FechaSolicitud');
GO

-- 5. ST_Transaccion_Estado_FechaProceso
CREATE STATISTICS ST_Transaccion_Estado_FechaProceso
ON dbo.TransaccionFinanciera(id_estado, fecha_proceso);
GO

EXEC sp_helpstats 'dbo.TransaccionFinanciera', 'ALL';
GO

DBCC SHOW_STATISTICS ('dbo.TransaccionFinanciera', 'ST_Transaccion_Estado_FechaProceso');
GO

-- 6. ST_Transaccion_Tipo_Estado
CREATE STATISTICS ST_Transaccion_Tipo_Estado
ON dbo.TransaccionFinanciera(id_tipo_transaccion, id_estado);
GO

EXEC sp_helpstats 'dbo.TransaccionFinanciera', 'ALL';
GO

DBCC SHOW_STATISTICS ('dbo.TransaccionFinanciera', 'ST_Transaccion_Tipo_Estado');
GO

-- 7. ST_Cuota_Mercado_Estado
CREATE STATISTICS ST_Cuota_Mercado_Estado
ON dbo.Cuota(id_mercado, estado);
GO

EXEC sp_helpstats 'dbo.Cuota', 'ALL';
GO

DBCC SHOW_STATISTICS ('dbo.Cuota', 'ST_Cuota_Mercado_Estado');
GO

-- 8. ST_Saldo_Usuario_Moneda
CREATE STATISTICS ST_Saldo_Usuario_Moneda
ON dbo.Saldo(id_usuario, id_moneda);
GO

EXEC sp_helpstats 'dbo.Saldo', 'ALL';
GO

DBCC SHOW_STATISTICS ('dbo.Saldo', 'ST_Saldo_Usuario_Moneda');
GO

-- 9. ST_HistorialSaldo_Saldo_Fecha
CREATE STATISTICS ST_HistorialSaldo_Saldo_Fecha
ON dbo.HistorialSaldo(id_saldo, fecha_registro);
GO

EXEC sp_helpstats 'dbo.HistorialSaldo', 'ALL';
GO

DBCC SHOW_STATISTICS ('dbo.HistorialSaldo', 'ST_HistorialSaldo_Saldo_Fecha');
GO

-- 10. ST_Comprobante_Fecha
CREATE STATISTICS ST_Comprobante_Fecha
ON dbo.Comprobante(fecha_emision);
GO

EXEC sp_helpstats 'dbo.Comprobante', 'ALL';
GO

DBCC SHOW_STATISTICS ('dbo.Comprobante', 'ST_Comprobante_Fecha');
GO