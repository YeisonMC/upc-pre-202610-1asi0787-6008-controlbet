--CREACION DE LA BASE DE DATOS 
CREATE DATABASE apuestas_deportivas;
GO

USE apuestas_deportivas;
GO

-- 1: CREACIÓN DE TABLAS 
CREATE TABLE Pais (
  id_pais     int          NOT NULL IDENTITY(1,1),
  nombre_pais varchar(100) NOT NULL,
  CONSTRAINT PK_Pais PRIMARY KEY (id_pais),
  CONSTRAINT UQ_nombre_pais UNIQUE (nombre_pais)
)
GO

CREATE TABLE Moneda (
  id_moneda     int           NOT NULL IDENTITY(1,1),
  codigo_moneda varchar(10)   NOT NULL,
  nombre_moneda varchar(50)   NOT NULL,
  tipo_cambio   decimal(10,4),
  CONSTRAINT PK_Moneda PRIMARY KEY (id_moneda),
  CONSTRAINT UQ_Moneda_codigo_moneda UNIQUE (codigo_moneda),
  CONSTRAINT UQ_Moneda_nombre_moneda UNIQUE (nombre_moneda),
  CONSTRAINT CK_Moneda_nombre_moneda CHECK ( nombre_moneda IN ( 'SOL PERUANO', 'DOLAR AMERICANO', 'EURO' ) ),
  CONSTRAINT CK_Moneda_codigo_moneda CHECK ( codigo_moneda IN ('PEN', 'USD', 'EUR') ), 
  CONSTRAINT CK_Moneda_tipo_cambio  CHECK ( tipo_cambio IS NULL OR tipo_cambio > 0 )
)
GO

CREATE TABLE Deporte (
  id_deporte     int         NOT NULL IDENTITY(1,1),
  nombre_deporte varchar(50) NOT NULL,
  estado         bit         NOT NULL,
  CONSTRAINT PK_Deporte PRIMARY KEY (id_deporte),
  CONSTRAINT UQ_nombre_deporte UNIQUE (nombre_deporte)
)
GO

CREATE TABLE Rol ( 
  id_rol      int          NOT NULL IDENTITY(1,1),
  nombre_rol  varchar(50)  NOT NULL,
  descripcion varchar(150),
  CONSTRAINT PK_Rol PRIMARY KEY (id_rol),
  CONSTRAINT UQ_Rol_nombre_rol UNIQUE (nombre_rol),
  CONSTRAINT CK_Rol_nombre_rol CHECK ( nombre_rol IN ( 'ADMINISTRADOR', 'CAJERO', 'APOSTADOR', 'ANALISTA' ) )
)
GO

CREATE TABLE EstadoApuesta (
  id_estado_apuesta int         NOT NULL IDENTITY(1,1),
  nombre_estado     varchar(50) NOT NULL,
  CONSTRAINT PK_EstadoApuesta PRIMARY KEY (id_estado_apuesta),
  CONSTRAINT CK_EstadoApuesta_nombre_estado CHECK (nombre_estado IN ('PENDIENTE', 'GANADA', 'PERDIDA', 'ANULADA', 'CANCELADA')),
  CONSTRAINT UQ_EstadoApuesta_nombre_estado UNIQUE (nombre_estado)
)
GO

CREATE TABLE EstadoTransaccion (
  id_estado     int         NOT NULL IDENTITY(1,1),
  nombre_estado varchar(50) NOT NULL,
  CONSTRAINT PK_EstadoTransaccion PRIMARY KEY (id_estado),
  CONSTRAINT CK_EstadoTransaccion_nombre_estado_transaccion CHECK (nombre_estado IN ('PENDIENTE', 'COMPLETADA', 'FALLIDA')),
  CONSTRAINT UQ_EstadoTransaccion_nombre_estado UNIQUE (nombre_estado)
)
GO

CREATE TABLE MetodoPago (
  id_metodo_pago int         NOT NULL IDENTITY(1,1),
  nombre_metodo  varchar(50) NOT NULL,
  tipo_metodo    varchar(30) NOT NULL,
  estado         bit         NOT NULL DEFAULT 1,
  CONSTRAINT PK_MetodoPago PRIMARY KEY (id_metodo_pago),
  CONSTRAINT CK_MetodoPago_nombre_metodo CHECK ( nombre_metodo IN ('TARJETA CREDITO', 'TARJETA DEBITO', 'YAPE', 'PLIN', 'TRANSFERENCIA BANCARIA', 'PAYPAL', 'EFECTIVO' )),
  CONSTRAINT CK_MetodoPago_tipo_metodo CHECK ( tipo_metodo IN ('DIGITAL', 'BANCARIO', 'EFECTIVO') ),
  CONSTRAINT UQ_EstadoApuesta_nombre_metodo UNIQUE (nombre_metodo)
)
GO

CREATE TABLE TipoTransaccion (
  id_tipo_transaccion int         NOT NULL IDENTITY(1,1),
  nombre_tipo         varchar(50) NOT NULL,
  naturaleza          VARCHAR(30) NOT NULL,
  afecta_saldo        bit         NOT NULL,
  CONSTRAINT PK_TipoTransaccion PRIMARY KEY (id_tipo_transaccion),
  CONSTRAINT CK_TipoTransaccion_nombre_tipo CHECK ( nombre_tipo IN ( 'DEPOSITO', 'RETIRO', 'APUESTA', 'PREMIO', 'BONIFICACION', 'COMISION', 'DEVOLUCION' )),
  CONSTRAINT CK_TipoTransaccion_naturaleza CHECK ( naturaleza IN ('INGRESO', 'EGRESO') ),
  CONSTRAINT UQ_EstadoApuesta_nombre_tipo UNIQUE (nombre_tipo)
)
GO

-- 2: PERSONAS, USUARIOS Y LOCALES
-- Gestión de clientes y trabajadores.
CREATE TABLE Persona (
  id_persona       int          NOT NULL IDENTITY(1,1),
  nombres          varchar(100) NOT NULL,
  apellidos        varchar(100) NOT NULL,
  tipo_documento   varchar(25)  NOT NULL,
  numero_documento varchar(20)  NOT NULL,
  correo           varchar(100) NOT NULL,
  telefono         varchar(20) ,
  fecha_nacimiento date        ,
  id_pais          int          NOT NULL,
  CONSTRAINT PK_Persona PRIMARY KEY (id_persona),
  CONSTRAINT CK_Persona_tipo_documento CHECK ( tipo_documento IN ('DNI', 'PASAPORTE', 'CARNET DE EXTRANJERIA', 'CC', 'CI')),
  CONSTRAINT UQ_Persona_documento UNIQUE (tipo_documento, numero_documento),
  CONSTRAINT UQ_Persona_correo UNIQUE (correo),
  CONSTRAINT CK_Persona_correo CHECK (correo LIKE '%@%.%'),
  CONSTRAINT UQ_Persona_telefono UNIQUE (telefono)
)
GO

CREATE TABLE Usuario (
  id_usuario     int          NOT NULL IDENTITY(1,1),
  fecha_registro datetime     NOT NULL,
  password_hash  varchar(255) NOT NULL,
  estado         bit          NOT NULL,
  id_persona     int          NOT NULL,
  CONSTRAINT PK_Usuario PRIMARY KEY (id_usuario)
)
GO

CREATE TABLE Trabajador (
  id_trabajador int          NOT NULL IDENTITY(1,1),
  username      varchar(50)  NOT NULL,
  password_hash varchar(255) NOT NULL,
  estado        bit          NOT NULL,
  id_rol        int          NOT NULL,
  id_persona    int          NOT NULL,
  CONSTRAINT PK_Trabajador PRIMARY KEY (id_trabajador)
)
GO

CREATE TABLE Local (
  id_local         int          NOT NULL IDENTITY(1,1),
  nombre_local     varchar(100) NOT NULL,
  direccion        varchar(150) NOT NULL,
  distrito         varchar(50)  NOT NULL,
  ciudad           varchar(50)  NOT NULL,
  telefono         varchar(20) ,
  horario_atencion varchar(100),
  estado           bit          NOT NULL,
  CONSTRAINT PK_Local PRIMARY KEY (id_local),
  CONSTRAINT UQ_Local_telefono UNIQUE (telefono),
  CONSTRAINT UQ_Local_direccion UNIQUE (direccion)
)
GO

CREATE TABLE TrabajadorxLocal (
  fecha_asignacion datetime NOT NULL,
  estado           bit      NOT NULL,
  id_trabajador    int      NOT NULL,
  id_local         int      NOT NULL,
  CONSTRAINT PK_TrabajadorxLocal PRIMARY KEY (id_trabajador, id_local)
)
GO

-- 3: GESTIÓN DE EVENTOS DEPORTIVOS Y CUOTAS
-- Ligas, Equipos y Eventos a los que se puede apostar.
CREATE TABLE Liga (
  id_liga     int          NOT NULL IDENTITY(1,1),
  nombre_liga varchar(100) NOT NULL,
  id_deporte  int          NOT NULL,
  id_pais     int          NOT NULL,
  CONSTRAINT PK_Liga PRIMARY KEY (id_liga),
  CONSTRAINT UQ_nombre_liga UNIQUE (nombre_liga)
)
GO

CREATE TABLE Equipo (
  id_equipo     int          NOT NULL IDENTITY(1,1),
  nombre_equipo varchar(100) NOT NULL,
  id_deporte    int          NOT NULL,
  id_pais       int          NOT NULL,
  CONSTRAINT PK_Equipo PRIMARY KEY (id_equipo),
  CONSTRAINT UQ_nombre_equipo UNIQUE (nombre_equipo)
)
GO

CREATE TABLE Evento (
  id_evento     int          NOT NULL IDENTITY(1,1),
  nombre_evento varchar(150) NOT NULL,
  fecha_hora    datetime     NOT NULL,
  estado        varchar(30)  NOT NULL DEFAULT 'PROGRAMADO',
  id_liga       int          NOT NULL,
  CONSTRAINT PK_Evento PRIMARY KEY (id_evento),
  CONSTRAINT CK_Evento_estado_evento CHECK (estado IN ('PROGRAMADO', 'EN CURSO', 'FINALIZADO', 'SUSPENDIDO', 'CANCELADO', 'POSTERGADO'))
)
GO

CREATE TABLE EventoParticipante (
  id_evento int         NOT NULL,
  id_equipo int         NOT NULL,
  condicion varchar(20) NOT NULL,
  CONSTRAINT PK_EventoParticipante PRIMARY KEY (id_evento, id_equipo),
  CONSTRAINT CK_EventoParticipante_condicion CHECK (condicion IN ('LOCAL', 'VISITANTE'))
)
GO

CREATE TABLE MercadoApuesta (
  id_mercado     int          NOT NULL IDENTITY(1,1),
  nombre_mercado varchar(100) NOT NULL,
  estado         varchar(20)  NOT NULL,
  descripcion    varchar(200),
  id_evento      int          NOT NULL,
  CONSTRAINT PK_MercadoApuesta PRIMARY KEY (id_mercado),
  CONSTRAINT CK_MercadoApuesta_estado CHECK (estado IN ('ACTIVO', 'SUSPENDIDO', 'CERRADO'))
)
GO

CREATE TABLE Cuota (
  id_cuota      int           NOT NULL IDENTITY(1,1),
  nombre_opcion varchar(100)  NOT NULL,
  valor         decimal(6,2)  NOT NULL,
  estado        varchar(20)   NOT NULL,
  id_mercado    int           NOT NULL,
  CONSTRAINT PK_Cuota PRIMARY KEY (id_cuota),
  CONSTRAINT CK_Cuota_estado_cuota CHECK (estado IN ('ACTIVA', 'SUSPENDIDA', 'CERRADA')),
  CONSTRAINT CK_Cuota_valor_cuota CHECK (valor >= 1.01)
)
GO


-- 4: FINANZAS Y APUESTAS
-- Registro de saldos, transacciones, tickets y comprobantes.
CREATE TABLE Saldo (
  id_saldo             int           NOT NULL IDENTITY(1,1),
  monto_disponible     decimal(12,2) NOT NULL,
  monto_retenido       decimal(12,2) NOT NULL,
  monto_total          decimal(12,2) NOT NULL,
  ultima_actualizacion datetime      NOT NULL,
  id_moneda            int           NOT NULL,
  id_usuario           int           NOT NULL, 

  CONSTRAINT PK_Saldo PRIMARY KEY (id_saldo),
  CONSTRAINT CK_Saldo_monto_disponible CHECK (monto_disponible >= 0),
  CONSTRAINT CK_Saldo_monto_retenido   CHECK (monto_retenido >= 0),
  CONSTRAINT CK_Saldo_monto_total      CHECK (monto_total >= 0)
)
GO

CREATE TABLE TransaccionFinanciera (
  id_transaccion      int           NOT NULL IDENTITY(1,1),
  monto_total         decimal(12,2) NOT NULL,
  monto_neto          decimal(12,2) NOT NULL,
  fecha_solicitud     datetime      NOT NULL,
  fecha_proceso       datetime     ,
  referencia_externa  varchar(100) ,
  observacion         varchar(200) ,
  id_tipo_transaccion int           NOT NULL,
  id_estado           int           NOT NULL,
  id_metodo_pago      int           NOT NULL,
  id_moneda           int           NOT NULL,
  id_usuario          int           NOT NULL,
  CONSTRAINT PK_TransaccionFinanciera PRIMARY KEY (id_transaccion),
  CONSTRAINT CK_TransaccionFinanciera_monto_total CHECK (monto_total > 0),
  CONSTRAINT CK_TransaccionFinanciera_monto_neto  CHECK (monto_neto > 0)
)
GO

CREATE TABLE HistorialSaldo (
  id_historial_saldo int           NOT NULL IDENTITY(1,1),
  saldo_anterior     decimal(12,2) NOT NULL,
  saldo_posterior    decimal(12,2) NOT NULL,
  fecha_registro     datetime      NOT NULL,
  id_saldo           int           NOT NULL,
  id_transaccion     int           NOT NULL,
  CONSTRAINT PK_HistorialSaldo PRIMARY KEY (id_historial_saldo),
  CONSTRAINT CK_HistorialSaldo_saldo_anterior CHECK (saldo_anterior >=0),
   CONSTRAINT CK_HistorialSaldo_saldo_posterior CHECK (saldo_posterior >=0)
)
GO

CREATE TABLE Comprobante (
  id_comprobante     int          NOT NULL IDENTITY(1,1),
  numero_comprobante varchar(50)  NOT NULL,
  fecha_emision      datetime     NOT NULL,
  url_pdf            varchar(255),
  id_transaccion     int          NOT NULL,
  CONSTRAINT PK_Comprobante PRIMARY KEY (id_comprobante),
  CONSTRAINT UQ_numero_comprobante UNIQUE (numero_comprobante)
)
GO

CREATE TABLE Apuesta (
  id_apuesta        int IDENTITY(1,1) NOT NULL,
  codigo_ticket     varchar(50)   NOT NULL,
  tipo_apuesta      varchar(20)   NOT NULL,
  monto_apostado    decimal(12,2) NOT NULL,
  cuota_total       decimal(10,2) NOT NULL,
  fecha_apuesta     datetime      NOT NULL,
  id_estado_apuesta int           NOT NULL,
  id_moneda         int           NOT NULL,
  id_usuario        int           NOT NULL,
  id_local          int          ,

  CONSTRAINT PK_Apuesta PRIMARY KEY (id_apuesta),
  CONSTRAINT UQ_Apuesta_codigo_ticket UNIQUE (codigo_ticket),
  CONSTRAINT CK_Apuesta_monto_apostado CHECK (monto_apostado >= 1),
  CONSTRAINT CK_Apuesta_cuota_total CHECK (cuota_total >= 1.01),
  CONSTRAINT CK_Apuesta_tipo_apuesta CHECK (tipo_apuesta IN ('SIMPLE', 'MULTIPLE', 'EN VIVO'))
)
GO

CREATE TABLE DetalleApuesta (
  valor_cuota       decimal(6,2) NOT NULL,
  resultado_detalle varchar(20) ,
  id_apuesta        int          NOT NULL,
  id_cuota          int          NOT NULL,
  CONSTRAINT PK_DetalleApuesta PRIMARY KEY (id_apuesta, id_cuota),
  CONSTRAINT CK_DetalleApuesta_resultado_detalle CHECK ( resultado_detalle IN ('GANADO', 'PERDIDO', 'ANULADO', 'PENDIENTE') )
)
GO

CREATE TABLE ApuestaTransaccion (
  id_apuesta     int NOT NULL,
  id_transaccion int NOT NULL,
  CONSTRAINT PK_ApuestaTransaccion PRIMARY KEY (id_apuesta, id_transaccion)
)
GO

-- CREACIÓN DE RELACIONES (LLAVES FORÁNEAS)
-- Se ejecutan al final para evitar errores de dependencias.
ALTER TABLE Persona ADD CONSTRAINT FK_Pais_TO_Persona FOREIGN KEY (id_pais) REFERENCES Pais (id_pais);
GO
ALTER TABLE Usuario ADD CONSTRAINT FK_Persona_TO_Usuario FOREIGN KEY (id_persona) REFERENCES Persona (id_persona);
GO
ALTER TABLE Trabajador ADD CONSTRAINT FK_Rol_TO_Trabajador FOREIGN KEY (id_rol) REFERENCES Rol (id_rol);
GO
ALTER TABLE Trabajador ADD CONSTRAINT FK_Persona_TO_Trabajador FOREIGN KEY (id_persona) REFERENCES Persona (id_persona);
GO
ALTER TABLE TrabajadorxLocal ADD CONSTRAINT FK_Trabajador_TO_TrabajadorxLocal FOREIGN KEY (id_trabajador) REFERENCES Trabajador (id_trabajador);
GO
ALTER TABLE TrabajadorxLocal ADD CONSTRAINT FK_Local_TO_TrabajadorxLocal FOREIGN KEY (id_local) REFERENCES Local (id_local);
GO
ALTER TABLE Liga ADD CONSTRAINT FK_Deporte_TO_Liga FOREIGN KEY (id_deporte) REFERENCES Deporte (id_deporte);
GO
ALTER TABLE Liga ADD CONSTRAINT FK_Pais_TO_Liga FOREIGN KEY (id_pais) REFERENCES Pais (id_pais);
GO
ALTER TABLE Equipo ADD CONSTRAINT FK_Deporte_TO_Equipo FOREIGN KEY (id_deporte) REFERENCES Deporte (id_deporte);
GO
ALTER TABLE Equipo ADD CONSTRAINT FK_Pais_TO_Equipo FOREIGN KEY (id_pais) REFERENCES Pais (id_pais);
GO
ALTER TABLE Evento ADD CONSTRAINT FK_Liga_TO_Evento FOREIGN KEY (id_liga) REFERENCES Liga (id_liga);
GO
ALTER TABLE EventoParticipante ADD CONSTRAINT FK_Evento_TO_EventoParticipante FOREIGN KEY (id_evento) REFERENCES Evento (id_evento);
GO
ALTER TABLE EventoParticipante ADD CONSTRAINT FK_Equipo_TO_EventoParticipante FOREIGN KEY (id_equipo) REFERENCES Equipo (id_equipo);
GO
ALTER TABLE MercadoApuesta ADD CONSTRAINT FK_Evento_TO_MercadoApuesta FOREIGN KEY (id_evento) REFERENCES Evento (id_evento);
GO
ALTER TABLE Cuota ADD CONSTRAINT FK_MercadoApuesta_TO_Cuota FOREIGN KEY (id_mercado) REFERENCES MercadoApuesta (id_mercado);
GO
ALTER TABLE Saldo ADD CONSTRAINT FK_Moneda_TO_Saldo FOREIGN KEY (id_moneda) REFERENCES Moneda (id_moneda);
GO
ALTER TABLE Saldo ADD CONSTRAINT FK_Usuario_TO_Saldo FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario);
GO
ALTER TABLE TransaccionFinanciera ADD CONSTRAINT FK_TipoTransaccion_TO_TransaccionFinanciera FOREIGN KEY (id_tipo_transaccion) REFERENCES TipoTransaccion (id_tipo_transaccion);
GO
ALTER TABLE TransaccionFinanciera ADD CONSTRAINT FK_EstadoTransaccion_TO_TransaccionFinanciera FOREIGN KEY (id_estado) REFERENCES EstadoTransaccion (id_estado);
GO
ALTER TABLE TransaccionFinanciera ADD CONSTRAINT FK_MetodoPago_TO_TransaccionFinanciera FOREIGN KEY (id_metodo_pago) REFERENCES MetodoPago (id_metodo_pago);
GO
ALTER TABLE TransaccionFinanciera ADD CONSTRAINT FK_Moneda_TO_TransaccionFinanciera FOREIGN KEY (id_moneda) REFERENCES Moneda (id_moneda);
GO
ALTER TABLE TransaccionFinanciera ADD CONSTRAINT FK_Usuario_TO_TransaccionFinanciera FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario);
GO
ALTER TABLE HistorialSaldo ADD CONSTRAINT FK_Saldo_TO_HistorialSaldo FOREIGN KEY (id_saldo) REFERENCES Saldo (id_saldo);
GO
ALTER TABLE HistorialSaldo ADD CONSTRAINT FK_TransaccionFinanciera_TO_HistorialSaldo FOREIGN KEY (id_transaccion) REFERENCES TransaccionFinanciera (id_transaccion);
GO
ALTER TABLE Comprobante ADD CONSTRAINT FK_TransaccionFinanciera_TO_Comprobante FOREIGN KEY (id_transaccion) REFERENCES TransaccionFinanciera (id_transaccion);
GO
ALTER TABLE Apuesta ADD CONSTRAINT FK_EstadoApuesta_TO_Apuesta FOREIGN KEY (id_estado_apuesta) REFERENCES EstadoApuesta (id_estado_apuesta);
GO
ALTER TABLE Apuesta ADD CONSTRAINT FK_Moneda_TO_Apuesta FOREIGN KEY (id_moneda) REFERENCES Moneda (id_moneda);
GO
ALTER TABLE Apuesta ADD CONSTRAINT FK_Usuario_TO_Apuesta FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario);
GO
ALTER TABLE Apuesta ADD CONSTRAINT FK_Local_TO_Apuesta FOREIGN KEY (id_local) REFERENCES Local (id_local);
GO
ALTER TABLE DetalleApuesta ADD CONSTRAINT FK_Apuesta_TO_DetalleApuesta FOREIGN KEY (id_apuesta) REFERENCES Apuesta (id_apuesta);
GO
ALTER TABLE DetalleApuesta ADD CONSTRAINT FK_Cuota_TO_DetalleApuesta FOREIGN KEY (id_cuota) REFERENCES Cuota (id_cuota);
GO
ALTER TABLE ApuestaTransaccion ADD CONSTRAINT FK_Apuesta_TO_ApuestaTransaccion FOREIGN KEY (id_apuesta) REFERENCES Apuesta (id_apuesta);
GO
ALTER TABLE ApuestaTransaccion ADD CONSTRAINT FK_TransaccionFinanciera_TO_ApuestaTransaccion FOREIGN KEY (id_transaccion) REFERENCES TransaccionFinanciera (id_transaccion);
GO