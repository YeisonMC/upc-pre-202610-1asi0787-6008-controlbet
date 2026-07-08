USE apuestas_deportivas;
GO

-- 1. Apuestas por estado y fecha
CREATE NONCLUSTERED INDEX IX_Apuesta_Estado_Fecha
ON dbo.Apuesta(id_estado_apuesta, fecha_apuesta);
GO

-- 2. Apuestas por fecha
CREATE NONCLUSTERED INDEX IX_Apuesta_Fecha
ON dbo.Apuesta(fecha_apuesta);
GO

-- 3. Apuestas por usuario y fecha
CREATE NONCLUSTERED INDEX IX_Apuesta_Usuario_Fecha
ON dbo.Apuesta(id_usuario, fecha_apuesta);
GO

-- 4. Apuestas por monto
CREATE NONCLUSTERED INDEX IX_Apuesta_Monto
ON dbo.Apuesta(monto_apostado);
GO

-- 5. Apuestas por local
CREATE NONCLUSTERED INDEX IX_Apuesta_Local
ON dbo.Apuesta(id_local);
GO

-- 6. Detalle de apuesta por cuota
CREATE NONCLUSTERED INDEX IX_DetalleApuesta_Cuota
ON dbo.DetalleApuesta(id_cuota);
GO

-- 7. Mercados por evento
CREATE NONCLUSTERED INDEX IX_MercadoApuesta_Evento
ON dbo.MercadoApuesta(id_evento);
GO

-- 8. Cuotas por mercado, estado y valor
CREATE NONCLUSTERED INDEX IX_Cuota_Mercado_Estado_Valor
ON dbo.Cuota(id_mercado, estado, valor);
GO

-- 9. Transacciones por estado, monto y fecha de solicitud
CREATE NONCLUSTERED INDEX IX_Transaccion_Estado_Monto_FechaSolicitud
ON dbo.TransaccionFinanciera(id_estado, monto_total, fecha_solicitud);
GO

-- 10. Transacciones por estado y fecha de proceso
CREATE NONCLUSTERED INDEX IX_Transaccion_Estado_FechaProceso
ON dbo.TransaccionFinanciera(id_estado, fecha_proceso);
GO

-- 11. Transacciones por tipo y estado
CREATE NONCLUSTERED INDEX IX_Transaccion_Tipo_Estado
ON dbo.TransaccionFinanciera(id_tipo_transaccion, id_estado);
GO

-- 12. Saldos por usuario y moneda
CREATE NONCLUSTERED INDEX IX_Saldo_Usuario_Moneda
ON dbo.Saldo(id_usuario, id_moneda);
GO

-- 13. Historial de saldo por saldo y fecha
CREATE NONCLUSTERED INDEX IX_HistorialSaldo_Saldo_Fecha
ON dbo.HistorialSaldo(id_saldo, fecha_registro);
GO

-- 14. Comprobantes por fecha de emisión
CREATE NONCLUSTERED INDEX IX_Comprobante_Fecha
ON dbo.Comprobante(fecha_emision);
GO

-- 15. Trabajadores por local y estado
CREATE NONCLUSTERED INDEX IX_TrabajadorxLocal_Local_Estado
ON dbo.TrabajadorxLocal(id_local, estado);
GO

EXEC sp_updatestats;
GO