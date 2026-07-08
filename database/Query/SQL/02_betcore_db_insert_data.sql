-- INSERCCION DE DATOS 
USE apuestas_deportivas
GO

-- 1. TABLA PAIS
INSERT INTO Pais (nombre_pais) VALUES
('Perú'),
('Argentina'),
('España'),
('Estados Unidos'),
('Brasil'),
('Inglaterra'),
('Chile'),
('Colombia'),
('México'),
('Uruguay'),
('Paraguay'),
('Bolivia'),
('Italia'),
('Francia'),
('Alemania');
GO

-- 2. TABLA MONEDA 
INSERT INTO Moneda (codigo_moneda, nombre_moneda, tipo_cambio) VALUES
('PEN', 'SOL PERUANO',      NULL),
('USD', 'DOLAR AMERICANO',  3.7500),
('EUR', 'EURO',             4.1000)
GO

-- 3. TABLA DEPORTE 
INSERT INTO Deporte (nombre_deporte, estado) VALUES
('Fútbol',  1),
('Básquet', 1),
('Vóley',   1)
GO

-- 4. TABLA ROL
INSERT INTO Rol (nombre_rol, descripcion) VALUES
('ADMINISTRADOR', 'Gestiona el sistema completo, usuarios y configuraciones'),
('CAJERO',        'Procesa depósitos, retiros y pagos en ventanilla'),
('APOSTADOR',     'Usuario final que realiza las apuestas'),
('ANALISTA',      'Define cuotas, mercados y eventos deportivos')
GO

-- 5. TABLA EstadoApuesta
INSERT INTO EstadoApuesta (nombre_estado) VALUES
('PENDIENTE'),
('GANADA'),
('PERDIDA'),
('ANULADA'),
('CANCELADA')
GO

-- 6. TABLA EstadoTransaccion 
INSERT INTO EstadoTransaccion (nombre_estado) VALUES
('PENDIENTE'),
('COMPLETADA'),
('FALLIDA')
GO

-- 7. TABLA MetodoPago
INSERT INTO MetodoPago (nombre_metodo, tipo_metodo, estado) VALUES
('TARJETA CREDITO',        'BANCARIO', 1),
('TARJETA DEBITO',         'BANCARIO', 1),
('YAPE',                   'DIGITAL',  1),
('PLIN',                   'DIGITAL',  1),
('TRANSFERENCIA BANCARIA', 'BANCARIO', 1),
('PAYPAL',                 'DIGITAL',  1),
('EFECTIVO',               'EFECTIVO', 1)
GO

-- 8. TABLA TipoTransaccion
INSERT INTO TipoTransaccion (nombre_tipo, naturaleza, afecta_saldo) VALUES
('DEPOSITO',    'INGRESO', 1),
('PREMIO',      'INGRESO', 1),
('BONIFICACION','INGRESO', 1),
('DEVOLUCION',  'INGRESO', 1),
('RETIRO',      'EGRESO',  1),
('APUESTA',     'EGRESO',  1),
('COMISION',    'EGRESO',  1)
GO

-- 9. TABLA Persona 
INSERT INTO Persona (nombres, apellidos, tipo_documento, numero_documento, correo, telefono, fecha_nacimiento, id_pais) VALUES
('Byron', 'Tirado Quispe', 'DNI', '74521369', 'byron.tirado@gmail.com', '987111222', '1995-03-20', 1),
('Jefferson', 'Pérez Pino', 'DNI', '70011223', 'jefferson.perez@gmail.com', '987333444', '1990-08-15', 1),
('Luis Fernando', 'Ramírez Torres', 'DNI', '71452389', 'luis.ramirez@gmail.com', '987555666', '1997-11-02', 1),
('María Elena', 'Quispe Salinas', 'DNI', '73219456', 'maria.quispe@gmail.com', '987888999', '1993-04-08', 1),
('Gamaniel', 'Cruz Valerio', 'DNI', '72345678', 'gamaniel.cruz@gmail.com', '987654321', '1998-05-12', 1),
('Paula', 'Chávez Pino', 'DNI', '77889900', 'paula.chavez@gmail.com', '986111000', '2003-06-25', 1),
('Giovanni', 'Gallegos De La Cruz', 'DNI', '75432198', 'giovanni.gallegos@gmail.com', '986222111', '2001-09-30', 1),
('Brayan', 'Huerta Cárdenas', 'DNI', '78901234', 'brayan.huerta@gmail.com', '986333222', '2002-12-05', 1),
('Fabricio', 'Rivera Rupay', 'DNI', '79012345', 'fabricio.rivera@gmail.com', '986444333', '2001-04-18', 1),
('Carlos', 'Mendoza Vega', 'DNI', '76543299', 'carlos.mendoza@gmail.com', '985111111', '1996-02-14', 1),
('Andrea', 'Soto Pinedo', 'DNI', '71234588', 'andrea.soto@gmail.com', '985222222', '1994-07-23', 1),
('Diego', 'Vargas Ríos', 'DNI', '73456722', 'diego.vargas@gmail.com', '985333333', '1989-10-11', 1),
('Sofía', 'Castillo Mora', 'DNI', '74567833', 'sofia.castillo@gmail.com', '985444444', '1998-12-30', 1),
('Marco', 'Sánchez Lara', 'DNI', '75678244', 'marco.sanchez@gmail.com', '985555111', '1991-05-08', 1),
('Valeria', 'Rojas Núñez', 'CARNET DE EXTRANJERIA', 'CE789456123', 'valeria.rojas@gmail.com', '+57312456789', '1996-09-17', 8),
('Joaquín', 'Flores Bautista', 'DNI', '77890466', 'joaquin.flores@gmail.com', '985777777', '1993-01-22', 1),
('Camila', 'Espinoza Vela', 'DNI', '78901577', 'camila.espinoza@gmail.com', '985888888', '1995-11-04', 1),
('Lionel', 'Suárez Martínez', 'PASAPORTE', 'AR123456', 'lionel.suarez@gmail.com', '+54911234567', '1992-07-22', 2),
('Rodrigo', 'Pérez Alarcón', 'PASAPORTE', 'CHL456123', 'rodrigo.perez@gmail.com', '+56912345678', '1990-03-29', 7),
('Lucía', 'Romero Aguilar', 'DNI', '70123799', 'lucia.romero@gmail.com', '984000000', '1997-08-19', 1),
('Andrés', 'Quispe Mendoza', 'DNI', '80123456', 'andres.quispe@gmail.com', '984111000', '1992-04-10', 1),
('Patricia', 'Morales Vega', 'DNI', '81234567', 'patricia.morales@gmail.com', '984222000', '1988-06-15', 1),
('Luis', 'Torres Salinas', 'DNI', '82345678', 'luis.torres@gmail.com', '984333000', '1995-09-21', 1),
('Ana', 'Castro Linares', 'DNI', '83456789', 'ana.castro@gmail.com', '984444000', '1993-12-03', 1),
('Roberto', 'Ramos Pinto', 'DNI', '84567890', 'roberto.ramos@gmail.com', '984555000', '1985-02-28', 1),
('Daniela', 'Reyes Bravo', 'DNI', '85678901', 'daniela.reyes@gmail.com', '984666000', '1996-07-09', 1),
('José', 'Carrasco Vidal', 'DNI', '86789012', 'jose.carrasco@gmail.com', '984777000', '1990-11-13', 1),
('Karla', 'Medina Solís', 'DNI', '87890123', 'karla.medina@gmail.com', '984888000', '1994-05-26', 1),
('Miguel', 'Acosta Núñez', 'DNI', '88901234', 'miguel.acosta@gmail.com', '984999000', '1989-08-18', 1),
('Cecilia', 'Vilcahuamán Cano', 'DNI', '89012345', 'cecilia.vilcahuaman@gmail.com', '983000000', '1997-01-07', 1),
('Jhon Jairo', 'Restrepo Ospina', 'CC', '1020456321', 'jhon.restrepo92@gmail.com', '+573154567890', '1992-05-14', 8),
('Lina María', 'Zuluaga Londoño', 'CC', '1032789456', 'lina.zuluaga.z@gmail.com', '+573107894561', '1996-11-22', 8),
('Santiago José', 'Palacio Uribe', 'CC', '1017345987', 'spalacio.uribe@gmail.com', '+573214563210', '1994-02-08', 8),
('Ximena', 'Córdoba Murillo', 'CC', '1045987654', 'ximena.cordoba@gmail.com', '+573009876543', '1999-08-19', 8),
('Mateo', 'Echeverry Henao', 'CC', '1035654321', 'mateo.echeverry.h@gmail.com', '+573183216549', '1995-03-31', 8),
('Facundo', 'Ferrari Bianchi', 'DNI', '38452101', 'facu.ferrari@gmail.com', '+5491154789632', '1995-10-12', 2),
('Martina', 'Rodríguez Peña', 'DNI', '40123702', 'marti.rodriguez.p@gmail.com', '+5491163258741', '1997-04-05', 2),
('Mariano', 'López Di Marco', 'DNI', '36789403', 'marianolopez91@gmail.com', '+5493415987412', '1991-12-28', 2),
('Agustina Sol', 'Fernández Díaz', 'DNI', '42314504', 'agus.sol.fd@gmail.com', '+5492614785236', '2000-01-15', 2),
('Bautista', 'Romero Silva', 'DNI', '39512705', 'bautista.romero.s@gmail.com', '+5491125896314', '1996-07-07', 2),
('Franz Alejandro', 'Mamani Choque', 'CI', '8451231', 'franz.mamani.93@gmail.com', '+59171542369', '1993-09-02', 12),
('Gabriela', 'Flores Condori', 'CI', '9321452', 'gaby.flores.bo@gmail.com', '+59160852147', '1998-06-24', 12),
('Ronald', 'Quispe Torrico', 'CI', '7541283', 'rquispe.torrico@gmail.com', '+59173014526', '1990-11-17', 12),
('Mariel', 'Siles Aramayo', 'CI', '1023454', 'mariel.siles@gmail.com', '+59165036985', '2001-02-10', 12),
('Efraín', 'Guzmán Rojas', 'CI', '6985215', 'efrain.guzman.r@gmail.com', '+59172145896', '1992-12-05', 12),
('Jose', 'Vargas Dominguez', 'DNI', '74851236', 'jose.vargas@gmail.com', '987654322', '1995-03-15', 1),
('Yeissen Beckam', 'Macalupu Marchan', 'DNI', '75632148', 'yeissen.macalupu@gmail.com', '976543210', '2000-06-22', 1),
('Andersson', 'Saguma Villacencia', 'DNI', '73541289', 'andersson.saguma@gmail.com', '965432109', '1998-11-10', 1),
('Viviana', 'Cabello Collado', 'DNI', '72963541', 'viviana.cabello@gmail.com', '954321098', '1997-07-04', 1),
('Arturo Elias', 'Vargas Dominguez', 'DNI', '71854236', 'arturo.vargas@gmail.com', '943210987', '1993-01-28', 1),
('Ronaldo Vilmor', 'Vilchez Samir', 'DNI', '70741523', 'ronaldo.vilchez@gmail.com', '932109876', '1996-09-17', 1),
('Angel', 'Mamani Yacsavilca', 'DNI', '69854712', 'angel.mamani@gmail.com', '921098765', '1999-04-05', 1),
('Oswaldo Enrique', 'Mamani Huaman', 'DNI', '68745231', 'oswaldo.mamani@gmail.com', '910987654', '1994-12-30', 1),
('Lucia Fernanda', 'Quispe Torres', 'DNI', '67854123', 'lucia.quispe@gmail.com', '909876543', '2001-08-14', 1),
('Carlos Miguel', 'Flores Huanca', 'DNI', '66741235', 'carlos.flores@gmail.com', '998765432', '1992-05-20', 1),
('Maria Elena', 'Condori Apaza', 'DNI', '65896321', 'maria.condori@gmail.com', '987123456', '2000-02-11', 1),
('Diego Armando', 'Salcedo Rimac', 'DNI', '64785236', 'diego.salcedo@gmail.com', '976234567', '1997-10-03', 1),
('Santiago Nicolas', 'Fernandez Romero', 'PASAPORTE', 'AAB123456', 'santiago.fernandez2@gmail.com', '+54911234568', '1996-06-18', 2),
('Pablo Alejandro', 'Garcia Martinez', 'PASAPORTE', 'ESP789012', 'pablo.garcia@gmail.com', '+34612345678', '1995-09-25', 3),
('Valentina', 'Restrepo Montoya', 'CARNET DE EXTRANJERIA', 'CE456789013', 'valentina.restrepo@gmail.com', '+57312345678', '1999-03-07', 8),
('Renato', 'Salazar Gutiérrez', 'DNI', '89123456', 'renato.salazar@gmail.com', '983111222', '1996-03-12', 1),
('Milagros', 'Paredes Huamán', 'DNI', '89234567', 'milagros.paredes@gmail.com', '983222333', '1998-10-25', 1),
('Sebastián', 'López Carrillo', 'DNI', '89345678', 'sebastian.lopez@gmail.com', '983333444', '2000-01-18', 1),
('Fernanda', 'Aguilar Montes', 'DNI', '89456789', 'fernanda.aguilar@gmail.com', '983444555', '1997-06-09', 1),
('Iván', 'Delgado Romero', 'DNI', '89567890', 'ivan.delgado@gmail.com', '983555666', '1994-12-01', 1),
('Thiago', 'Méndez Acosta', 'PASAPORTE', 'ARG987654', 'thiago.mendez@gmail.com', '+5491132147896', '1995-08-14', 2),
('Julieta', 'Ríos Benítez', 'PASAPORTE', 'ARG654321', 'julieta.rios@gmail.com', '+5491145789632', '1999-02-27', 2),
('Mateo', 'Serrano Vidal', 'PASAPORTE', 'ESP456789', 'mateo.serrano@gmail.com', '+34698745123', '1993-05-21', 3),
('Claudia', 'Navarro Ortega', 'PASAPORTE', 'ESP654987', 'claudia.navarro@gmail.com', '+34674125896', '1996-09-03', 3),
('Lucas', 'Pereira Souza', 'PASAPORTE', 'BRA123987', 'lucas.pereira@gmail.com', '+5511987456321', '1992-11-30', 5),
('Isabella', 'Martins Oliveira', 'PASAPORTE', 'BRA789123', 'isabella.martins@gmail.com', '+5521987632145', '1998-04-16', 5),
('Tomás', 'Herrera Fuentes', 'PASAPORTE', 'CHL987321', 'tomas.herrera@gmail.com', '+56987451236', '1991-07-07', 7),
('Daniela', 'Muñoz Cárdenas', 'PASAPORTE', 'CHL321987', 'daniela.munoz@gmail.com', '+56974125896', '1997-03-19', 7),
('Samuel', 'Gómez Restrepo', 'CARNET DE EXTRANJERIA', 'CE987654321', 'samuel.gomez@gmail.com', '+573018745632', '1995-01-11', 8),
('Natalia', 'Vargas Mejía', 'CARNET DE EXTRANJERIA', 'CE654987321', 'natalia.vargas@gmail.com', '+573204589632', '2001-08-23', 8)
GO

-- 10. TABLA Trabajador 
INSERT INTO Trabajador (username, password_hash, estado, id_rol, id_persona) VALUES
('byron.tirado',       'hashed_byron123',     1, 2, 1),
('jefferson.perez',    'hashed_jefferson123',  1, 1, 2),
('luis.ramirez',       'hashed_luis123',       1, 4, 3),
('maria.quispe',       'hashed_maria123',      1, 2, 4),
('gamaniel.cruz',      'hashed_gamaniel123',   1, 4, 5),
('paula.chavez',       'hashed_paula123',      1, 2, 6),
('giovanni.gallegos',  'hashed_giovanni123',   1, 4, 7),
('brayan.huerta',      'hashed_brayan123',     1, 2, 8),
('fabricio.rivera',    'hashed_fabricio123',   1, 1, 9),
('carlos.mendoza',     'hashed_carlos123',     1, 4, 10),
('andrea.soto',        'hashed_andrea123',     1, 2, 11),
('diego.vargas',       'hashed_diego123',      1, 4, 12),
('sofia.castillo',     'hashed_sofia123',      1, 2, 13),
('marco.sanchez',      'hashed_marco123',      1, 1, 14),
('valeria.rojas',      'hashed_valeria123',    1, 2, 15),
('joaquin.flores',     'hashed_joaquin123',    1, 4, 16),
('camila.espinoza',    'hashed_camila123',     1, 2, 17),
('andres.quispe',      'hashed_andres123',     1, 4, 21),
('patricia.morales',   'hashed_patricia123',   1, 2, 22),
('luis.torres',        'hashed_luist123',      1, 1, 23)
GO

UPDATE Trabajador
SET password_hash = CONVERT(VARCHAR(64), HASHBYTES('SHA2_256', username + '123'), 2);
GO

-- 11. TABLA Usuario  
INSERT INTO Usuario (fecha_registro, password_hash, estado, id_persona) VALUES
('2023-01-15', 'hashed_pwd_18',  1, 18),
('2023-02-20', 'hashed_pwd_19',  1, 19),
('2023-03-10', 'hashed_pwd_20',  1, 20),
('2022-11-05', 'hashed_pwd_24',  1, 24),
('2022-08-17', 'hashed_pwd_25',  1, 25),
('2023-04-22', 'hashed_pwd_26',  1, 26),
('2021-12-30', 'hashed_pwd_27',  1, 27),
('2022-06-14', 'hashed_pwd_28',  1, 28),
('2023-05-08', 'hashed_pwd_29',  1, 29),
('2022-09-19', 'hashed_pwd_30',  1, 30),
('2023-01-25', 'hashed_pwd_31',  1, 31),
('2022-07-11', 'hashed_pwd_32',  1, 32),
('2023-03-30', 'hashed_pwd_33',  1, 33),
('2022-10-05', 'hashed_pwd_34',  1, 34),
('2023-02-14', 'hashed_pwd_35',  1, 35),
('2022-05-22', 'hashed_pwd_36',  1, 36),
('2023-06-01', 'hashed_pwd_37',  1, 37),
('2022-04-18', 'hashed_pwd_38',  1, 38),
('2023-07-09', 'hashed_pwd_39',  1, 39),
('2022-03-27', 'hashed_pwd_40',  1, 40),
('2023-08-15', 'hashed_pwd_41',  1, 41),
('2022-02-10', 'hashed_pwd_42',  1, 42),
('2023-09-20', 'hashed_pwd_43',  1, 43),
('2022-01-05', 'hashed_pwd_44',  1, 44),
('2023-10-11', 'hashed_pwd_45',  1, 45),
('2022-12-01', 'hashed_pwd_46',  1, 46),
('2023-11-22', 'hashed_pwd_47',  1, 47),
('2022-11-14', 'hashed_pwd_48',  1, 48),
('2023-01-08', 'hashed_pwd_49',  1, 49),
('2022-10-29', 'hashed_pwd_50',  1, 50),
('2023-02-17', 'hashed_pwd_51',  1, 51),
('2022-09-03', 'hashed_pwd_52',  1, 52),
('2023-03-25', 'hashed_pwd_53',  1, 53),
('2022-08-20', 'hashed_pwd_54',  1, 54),
('2023-04-14', 'hashed_pwd_55',  1, 55),
('2022-07-07', 'hashed_pwd_56',  1, 56),
('2023-05-30', 'hashed_pwd_57',  1, 57),
('2022-06-23', 'hashed_pwd_58',  1, 58),
('2023-06-18', 'hashed_pwd_59',  1, 59),
('2022-05-16', 'hashed_pwd_60',  1, 60),
('2023-07-04', 'hashed_pwd_61',  1, 61),
('2022-04-09', 'hashed_pwd_62',  1, 62),
('2023-08-21', 'hashed_pwd_63',  1, 63),
('2022-03-02', 'hashed_pwd_64',  1, 64),
('2023-09-13', 'hashed_pwd_65',  1, 65),
('2022-02-24', 'hashed_pwd_66',  1, 66),
('2023-10-05', 'hashed_pwd_67',  1, 67),
('2022-01-17', 'hashed_pwd_68',  1, 68),
('2023-11-28', 'hashed_pwd_69',  1, 69),
('2022-12-12', 'hashed_pwd_70',  1, 70),
('2023-01-31', 'hashed_pwd_71',  1, 71),
('2022-11-08', 'hashed_pwd_72',  1, 72),
('2023-02-22', 'hashed_pwd_73',  1, 73),
('2022-10-15', 'hashed_pwd_74',  1, 74),
('2023-03-07', 'hashed_pwd_75',  1, 75)
GO

UPDATE Usuario
SET password_hash = CONVERT(VARCHAR(64), HASHBYTES('SHA2_256', CONCAT('usuario', id_usuario, '123')), 2);
GO

-- 12. Tabla Local 
INSERT INTO Local (nombre_local, direccion, distrito, ciudad, telefono, horario_atencion, estado) VALUES
('Apuesta Ganadora - Miraflores',    'Av. Larco 345',             'Miraflores',     'Lima',      '014456789', 'Lun-Dom 9:00-22:00', 1),
('Apuesta Ganadora - San Isidro',    'Av. Conquistadores 567',    'San Isidro',     'Lima',      '014567890', 'Lun-Dom 9:00-22:00', 1),
('Apuesta Ganadora - Surco',         'Av. Primavera 890',         'Santiago de Surco', 'Lima',   '014678901', 'Lun-Dom 9:00-23:00', 1),
('Apuesta Ganadora - San Borja',     'Av. San Luis 234',          'San Borja',      'Lima',      '014789012', 'Lun-Dom 9:00-22:00', 1),
('Apuesta Ganadora - La Molina',     'Av. La Molina 456',         'La Molina',      'Lima',      '014890123', 'Lun-Dom 10:00-22:00', 1),
('Apuesta Ganadora - Callao',        'Av. Sáenz Peña 123',        'Callao',         'Callao',    '015123456', 'Lun-Dom 9:00-22:00', 1),
('Apuesta Ganadora - Trujillo',      'Jr. Pizarro 678',           'Trujillo',       'Trujillo',  '044234567', 'Lun-Dom 9:00-21:00', 1),
('Apuesta Ganadora - Arequipa',      'Av. Ejército 345',          'Cayma',          'Arequipa',  '054345678', 'Lun-Dom 9:00-21:00', 1),
('Apuesta Ganadora - Cusco',         'Av. El Sol 789',            'Cusco',          'Cusco',     '084456789', 'Lun-Dom 9:00-21:00', 1),
('Apuesta Ganadora - Piura',         'Av. Grau 456',              'Piura',          'Piura',     '073567890', 'Lun-Dom 9:00-21:00', 1)
GO

-- 13. TABLA TrabajadorxLocal 
INSERT INTO TrabajadorxLocal (fecha_asignacion, estado, id_trabajador, id_local) VALUES
('2023-01-10', 1,  1,  1),
('2023-01-10', 1,  2,  1),
('2023-01-15', 1,  3,  2),
('2023-01-15', 1,  4,  2),
('2023-02-01', 1,  5,  3),
('2023-02-01', 1,  6,  3),
('2023-02-10', 1,  7,  4),
('2023-02-10', 1,  8,  4),
('2023-03-01', 1,  9,  5),
('2023-03-01', 1, 10,  5),
('2023-03-15', 1, 11,  6),
('2023-03-15', 1, 12,  6),
('2023-04-01', 1, 13,  7),
('2023-04-01', 1, 14,  7),
('2023-04-15', 1, 15,  8),
('2023-04-15', 1, 16,  8),
('2023-05-01', 1, 17,  9),
('2023-05-01', 1, 18,  9),
('2023-05-15', 1, 19, 10),
('2023-05-15', 1, 20, 10)
GO

-- 14. TABLA Liga
INSERT INTO Liga (nombre_liga, id_deporte, id_pais) VALUES
-- FÚTBOL (id_deporte = 1)
('Liga 1 Perú',                1,  1),
('Premier League',             1,  6),
('La Liga',                    1,  3),
('Serie A',                    1, 13),
('Bundesliga',                 1, 15),
('Ligue 1',                    1, 14),
('Liga Profesional Argentina', 1,  2),
('Primera División Chile',     1,  7),
('Liga BetPlay Colombia',      1,  8),
('Liga MX',                    1,  9),
('Brasileirao Serie A',        1,  5),
('UEFA Champions League',      1,  3),
('Copa Libertadores',          1,  2),
('Eredivisie',                 1,  4),
('Primeira Liga Portugal',     1,  3),

-- BÁSQUET (id_deporte = 2)
('NBA',                        2,  4),
('Liga ACB España',            2,  3),
('EuroLeague',                 2, 13),
('NBB Brasil',                 2,  5),
('Liga Nacional Argentina',    2,  2),
('BSL Turquía',                2, 13),
('LNB Perú',                   2,  1),
('Lega Basket Italia',         2, 13),
('Pro A Francia',              2, 14),
('BBL Alemania',               2, 15),

-- VÓLEY (id_deporte = 3)
('Liga Nacional Vóley Perú',   3,  1),
('Superliga Femenina España',  3,  3),
('Serie A1 Italia',            3, 13),
('Ligue A Francia',            3, 14),
('Bundesliga Vóley',           3, 15)
GO

-- 15. Tabla Equipo  
INSERT INTO Equipo (nombre_equipo, id_deporte, id_pais) VALUES
-- FÚTBOL PERÚ (id_deporte=1, id_pais=1)
('Universitario de Deportes', 1, 1),
('Alianza Lima',              1, 1),
('Sporting Cristal',          1, 1),
('FBC Melgar',                1, 1),
('Cesar Vallejo',             1, 1),

-- FÚTBOL INGLATERRA (id_deporte=1, id_pais=6)
('Manchester City',           1, 6),
('Liverpool',                 1, 6),
('Arsenal',                   1, 6),
('Chelsea',                   1, 6),
('Manchester United',         1, 6),

-- FÚTBOL ESPAÑA (id_deporte=1, id_pais=3)
('Real Madrid',               1, 3),
('Barcelona',                 1, 3),
('Atletico de Madrid',        1, 3),
('Sevilla',                   1, 3),
('Valencia',                  1, 3),

-- FÚTBOL ITALIA (id_deporte=1, id_pais=13)
('Juventus',                  1, 13),
('Inter de Milan',            1, 13),
('AC Milan',                  1, 13),
('Napoli',                    1, 13),
('AS Roma',                   1, 13),

-- FÚTBOL ALEMANIA (id_deporte=1, id_pais=15)
('Bayern Munich',             1, 15),
('Borussia Dortmund',         1, 15),
('Bayer Leverkusen',          1, 15),
('RB Leipzig',                1, 15),

-- FÚTBOL FRANCIA (id_deporte=1, id_pais=14)
('Paris Saint-Germain',       1, 14),
('Olympique de Marsella',     1, 14),
('Monaco',                    1, 14),

-- FÚTBOL ARGENTINA (id_deporte=1, id_pais=2)
('Boca Juniors',              1, 2),
('River Plate',               1, 2),
('Racing Club',               1, 2),
('Independiente',             1, 2),

-- FÚTBOL BRASIL (id_deporte=1, id_pais=5)
('Flamengo',                  1, 5),
('Palmeiras',                 1, 5),
('Santos',                    1, 5),
('Corinthians',               1, 5),

-- FÚTBOL COLOMBIA (id_deporte=1, id_pais=8)
('Millonarios',               1, 8),
('Atletico Nacional',         1, 8),
('America de Cali',           1, 8),

-- FÚTBOL CHILE (id_deporte=1, id_pais=7)
('Colo Colo',                 1, 7),
('Universidad de Chile',      1, 7),
('Universidad Catolica',      1, 7),

-- BÁSQUET EEUU (id_deporte=2, id_pais=4)
('Los Angeles Lakers',        2, 4),
('Golden State Warriors',     2, 4),
('Boston Celtics',            2, 4),
('Chicago Bulls',             2, 4),
('Miami Heat',                2, 4),
('Denver Nuggets',            2, 4),
('Phoenix Suns',              2, 4),
('Dallas Mavericks',          2, 4),

-- BÁSQUET ESPAÑA (id_deporte=2, id_pais=3)
('Real Madrid Basket',        2, 3),
('Barcelona Basket',          2, 3),
('Valencia Basket',           2, 3),

-- BÁSQUET ITALIA (id_deporte=2, id_pais=13)
('Olimpia Milano',            2, 13),
('Virtus Bologna',            2, 13),

-- BÁSQUET PERÚ (id_deporte=2, id_pais=1)
('Aguila Real',               2, 1),
('Regatas Lima',              2, 1),

-- VÓLEY PERÚ (id_deporte=3, id_pais=1)
('Alianza Lima Vóley',        3, 1),
('Universitario Vóley',       3, 1),
('Sport Boys Vóley',          3, 1),
('GAUX Arequipa',             3, 1),

-- VÓLEY ITALIA (id_deporte=3, id_pais=13)
('Imoco Volley',              3, 13),
('Igor Gorgonzola Novara',    3, 13),

-- VÓLEY BRASIL (id_deporte=3, id_pais=5)
('Praia Clube',               3, 5),
('Osasco Voleibol',           3, 5),

-- VÓLEY ESPAÑA (id_deporte=3, id_pais=3)
('CV Teruel',                 3, 3),
('Haro Rioja Vóley',          3, 3)
GO

-- 16. TABLA Evento
INSERT INTO Evento (nombre_evento, fecha_hora, estado, id_liga) VALUES

-- LIGA 1 PERÚ (id_liga=1)
('Universitario vs Alianza Lima',       '2024-03-15 15:00:00', 'FINALIZADO',  1),
('Sporting Cristal vs FBC Melgar',      '2024-03-22 20:00:00', 'FINALIZADO',  1),
('Alianza Lima vs Cesar Vallejo',       '2024-04-05 18:00:00', 'FINALIZADO',  1),
('FBC Melgar vs Universitario',         '2024-04-19 15:30:00', 'FINALIZADO',  1),
('Cesar Vallejo vs Sporting Cristal',   '2024-05-03 20:00:00', 'FINALIZADO',  1),
('Universitario vs Sporting Cristal',   '2024-06-15 15:00:00', 'PROGRAMADO',  1),
('Alianza Lima vs FBC Melgar',          '2024-06-22 20:00:00', 'PROGRAMADO',  1),

-- PREMIER LEAGUE (id_liga=2)
('Manchester City vs Liverpool',        '2024-03-10 16:30:00', 'FINALIZADO',  2),
('Arsenal vs Chelsea',                  '2024-03-17 17:00:00', 'FINALIZADO',  2),
('Manchester United vs Arsenal',        '2024-03-31 16:00:00', 'FINALIZADO',  2),
('Liverpool vs Chelsea',                '2024-04-14 16:30:00', 'FINALIZADO',  2),
('Manchester City vs Arsenal',          '2024-06-20 17:00:00', 'PROGRAMADO',  2),
('Chelsea vs Manchester United',        '2024-06-27 16:30:00', 'PROGRAMADO',  2),

-- LA LIGA (id_liga=3)
('Real Madrid vs Barcelona',            '2024-03-17 21:00:00', 'FINALIZADO',  3),
('Atletico de Madrid vs Sevilla',       '2024-03-24 19:00:00', 'FINALIZADO',  3),
('Barcelona vs Valencia',               '2024-04-07 21:00:00', 'FINALIZADO',  3),
('Sevilla vs Real Madrid',              '2024-04-21 19:00:00', 'FINALIZADO',  3),
('Real Madrid vs Atletico de Madrid',   '2024-06-18 21:00:00', 'PROGRAMADO',  3),
('Barcelona vs Sevilla',                '2024-06-25 19:00:00', 'PROGRAMADO',  3),

-- SERIE A (id_liga=4)
('Juventus vs Inter de Milan',          '2024-03-08 20:45:00', 'FINALIZADO',  4),
('AC Milan vs Napoli',                  '2024-03-15 20:45:00', 'FINALIZADO',  4),
('Inter de Milan vs AS Roma',           '2024-03-29 20:45:00', 'FINALIZADO',  4),
('Napoli vs Juventus',                  '2024-04-12 20:45:00', 'FINALIZADO',  4),
('Juventus vs AC Milan',                '2024-06-16 20:45:00', 'PROGRAMADO',  4),

-- BUNDESLIGA (id_liga=5)
('Bayern Munich vs Borussia Dortmund',  '2024-03-09 18:30:00', 'FINALIZADO',  5),
('RB Leipzig vs Bayer Leverkusen',      '2024-03-16 15:30:00', 'FINALIZADO',  5),
('Borussia Dortmund vs Bayer Leverkusen','2024-04-06 18:30:00','FINALIZADO',  5),
('Bayern Munich vs RB Leipzig',         '2024-06-19 18:30:00', 'PROGRAMADO',  5),

-- LIGUE 1 (id_liga=6)
('Paris Saint-Germain vs Monaco',       '2024-03-16 21:00:00', 'FINALIZADO',  6),
('Olympique de Marsella vs PSG',        '2024-03-30 21:00:00', 'FINALIZADO',  6),
('Monaco vs Olympique de Marsella',     '2024-06-21 21:00:00', 'PROGRAMADO',  6),

-- LIGA PROFESIONAL ARGENTINA (id_liga=7)
('Boca Juniors vs River Plate',         '2024-03-10 21:00:00', 'FINALIZADO',  7),
('Racing Club vs Independiente',        '2024-03-24 18:00:00', 'FINALIZADO',  7),
('River Plate vs Racing Club',          '2024-06-16 21:00:00', 'PROGRAMADO',  7),

-- BRASILEIRAO (id_liga=11)
('Flamengo vs Palmeiras',               '2024-03-09 20:00:00', 'FINALIZADO', 11),
('Santos vs Corinthians',               '2024-03-23 18:00:00', 'FINALIZADO', 11),
('Palmeiras vs Corinthians',            '2024-06-22 20:00:00', 'PROGRAMADO', 11),

-- UEFA CHAMPIONS LEAGUE (id_liga=12)
('Real Madrid vs Manchester City',      '2024-04-09 21:00:00', 'FINALIZADO', 12),
('Bayern Munich vs Arsenal',            '2024-04-17 21:00:00', 'FINALIZADO', 12),
('Barcelona vs PSG',                    '2024-04-16 21:00:00', 'FINALIZADO', 12),
('Inter de Milan vs Liverpool',         '2024-06-25 21:00:00', 'PROGRAMADO', 12),

-- COPA LIBERTADORES (id_liga=13)
('Boca Juniors vs Flamengo',            '2024-04-03 21:00:00', 'FINALIZADO', 13),
('River Plate vs Palmeiras',            '2024-04-10 21:00:00', 'FINALIZADO', 13),
('Universitario vs Atletico Nacional',  '2024-06-19 20:00:00', 'PROGRAMADO', 13),

-- NBA (id_liga=16)
('Lakers vs Celtics',                   '2024-03-08 02:30:00', 'FINALIZADO', 16),
('Warriors vs Bulls',                   '2024-03-15 03:00:00', 'FINALIZADO', 16),
('Heat vs Nuggets',                     '2024-03-22 02:00:00', 'FINALIZADO', 16),
('Suns vs Mavericks',                   '2024-04-05 03:30:00', 'FINALIZADO', 16),
('Lakers vs Warriors',                  '2024-06-18 03:00:00', 'PROGRAMADO', 16),
('Celtics vs Heat',                     '2024-06-25 02:30:00', 'PROGRAMADO', 16),

-- EUROLEAGUE (id_liga=18)
('Real Madrid Basket vs Olimpia Milano','2024-03-14 20:00:00', 'FINALIZADO', 18),
('Barcelona Basket vs Virtus Bologna',  '2024-03-21 20:00:00', 'FINALIZADO', 18),
('Olimpia Milano vs Barcelona Basket',  '2024-06-20 20:00:00', 'PROGRAMADO', 18),

-- LIGA NACIONAL VÓLEY PERÚ (id_liga=26)
('Alianza Lima Vóley vs Universitario Vóley', '2024-03-09 18:00:00', 'FINALIZADO', 26),
('Sport Boys Vóley vs GAUX Arequipa',         '2024-03-16 18:00:00', 'FINALIZADO', 26),
('Universitario Vóley vs Sport Boys Vóley',   '2024-06-15 18:00:00', 'PROGRAMADO', 26),

-- SERIE A1 ITALIA VÓLEY (id_liga=28)
('Imoco Volley vs Igor Gorgonzola Novara',    '2024-03-10 18:00:00', 'FINALIZADO', 28),
('Igor Gorgonzola Novara vs Imoco Volley',    '2024-06-16 18:00:00', 'PROGRAMADO', 28)
GO

--SELECT id_equipo, nombre_equipo, id_deporte FROM Equipo ORDER BY id_deporte, id_equipo
--GO
--SELECT id_evento, nombre_evento FROM Evento ORDER BY id_evento
--GO

-- 17. TABLA EventoParticipante 
INSERT INTO EventoParticipante (id_evento, id_equipo, condicion) VALUES

-- LIGA 1 PERÚ
-- Evento 1: Universitario vs Alianza Lima
(1,  1, 'LOCAL'),
(1,  2, 'VISITANTE'),
-- Evento 2: Sporting Cristal vs FBC Melgar
(2,  3, 'LOCAL'),
(2,  4, 'VISITANTE'),
-- Evento 3: Alianza Lima vs Cesar Vallejo
(3,  2, 'LOCAL'),
(3,  5, 'VISITANTE'),
-- Evento 4: FBC Melgar vs Universitario
(4,  4, 'LOCAL'),
(4,  1, 'VISITANTE'),
-- Evento 5: Cesar Vallejo vs Sporting Cristal
(5,  5, 'LOCAL'),
(5,  3, 'VISITANTE'),
-- Evento 6: Universitario vs Sporting Cristal
(6,  1, 'LOCAL'),
(6,  3, 'VISITANTE'),
-- Evento 7: Alianza Lima vs FBC Melgar
(7,  2, 'LOCAL'),
(7,  4, 'VISITANTE'),

-- PREMIER LEAGUE
-- Evento 8: Manchester City vs Liverpool
(8,  6, 'LOCAL'),
(8,  7, 'VISITANTE'),
-- Evento 9: Arsenal vs Chelsea
(9,  8, 'LOCAL'),
(9,  9, 'VISITANTE'),
-- Evento 10: Manchester United vs Arsenal
(10, 10, 'LOCAL'),
(10,  8, 'VISITANTE'),
-- Evento 11: Liverpool vs Chelsea
(11,  7, 'LOCAL'),
(11,  9, 'VISITANTE'),
-- Evento 12: Manchester City vs Arsenal
(12,  6, 'LOCAL'),
(12,  8, 'VISITANTE'),
-- Evento 13: Chelsea vs Manchester United
(13,  9, 'LOCAL'),
(13, 10, 'VISITANTE'),

-- LA LIGA
-- Evento 14: Real Madrid vs Barcelona
(14, 11, 'LOCAL'),
(14, 12, 'VISITANTE'),
-- Evento 15: Atletico de Madrid vs Sevilla
(15, 13, 'LOCAL'),
(15, 14, 'VISITANTE'),
-- Evento 16: Barcelona vs Valencia
(16, 12, 'LOCAL'),
(16, 15, 'VISITANTE'),
-- Evento 17: Sevilla vs Real Madrid
(17, 14, 'LOCAL'),
(17, 11, 'VISITANTE'),
-- Evento 18: Real Madrid vs Atletico de Madrid
(18, 11, 'LOCAL'),
(18, 13, 'VISITANTE'),
-- Evento 19: Barcelona vs Sevilla
(19, 12, 'LOCAL'),
(19, 14, 'VISITANTE'),

-- SERIE A
-- Evento 20: Juventus vs Inter de Milan
(20, 16, 'LOCAL'),
(20, 17, 'VISITANTE'),
-- Evento 21: AC Milan vs Napoli
(21, 18, 'LOCAL'),
(21, 19, 'VISITANTE'),
-- Evento 22: Inter de Milan vs AS Roma
(22, 17, 'LOCAL'),
(22, 20, 'VISITANTE'),
-- Evento 23: Napoli vs Juventus
(23, 19, 'LOCAL'),
(23, 16, 'VISITANTE'),
-- Evento 24: Juventus vs AC Milan
(24, 16, 'LOCAL'),
(24, 18, 'VISITANTE'),

-- BUNDESLIGA
-- Evento 25: Bayern Munich vs Borussia Dortmund
(25, 21, 'LOCAL'),
(25, 22, 'VISITANTE'),
-- Evento 26: RB Leipzig vs Bayer Leverkusen
(26, 24, 'LOCAL'),
(26, 23, 'VISITANTE'),
-- Evento 27: Borussia Dortmund vs Bayer Leverkusen
(27, 22, 'LOCAL'),
(27, 23, 'VISITANTE'),
-- Evento 28: Bayern Munich vs RB Leipzig
(28, 21, 'LOCAL'),
(28, 24, 'VISITANTE'),

-- LIGUE 1
-- Evento 29: PSG vs Monaco
(29, 25, 'LOCAL'),
(29, 27, 'VISITANTE'),
-- Evento 30: Olympique de Marsella vs PSG
(30, 26, 'LOCAL'),
(30, 25, 'VISITANTE'),
-- Evento 31: Monaco vs Olympique de Marsella
(31, 27, 'LOCAL'),
(31, 26, 'VISITANTE'),

-- LIGA PROFESIONAL ARGENTINA
-- Evento 32: Boca Juniors vs River Plate
(32, 28, 'LOCAL'),
(32, 29, 'VISITANTE'),
-- Evento 33: Racing Club vs Independiente
(33, 30, 'LOCAL'),
(33, 31, 'VISITANTE'),
-- Evento 34: River Plate vs Racing Club
(34, 29, 'LOCAL'),
(34, 30, 'VISITANTE'),

-- BRASILEIRAO
-- Evento 35: Flamengo vs Palmeiras
(35, 32, 'LOCAL'),
(35, 33, 'VISITANTE'),
-- Evento 36: Santos vs Corinthians
(36, 34, 'LOCAL'),
(36, 35, 'VISITANTE'),
-- Evento 37: Palmeiras vs Corinthians
(37, 33, 'LOCAL'),
(37, 35, 'VISITANTE'),

-- UEFA CHAMPIONS LEAGUE
-- Evento 38: Real Madrid vs Manchester City
(38, 11, 'LOCAL'),
(38,  6, 'VISITANTE'),
-- Evento 39: Bayern Munich vs Arsenal
(39, 21, 'LOCAL'),
(39,  8, 'VISITANTE'),
-- Evento 40: Barcelona vs PSG
(40, 12, 'LOCAL'),
(40, 25, 'VISITANTE'),
-- Evento 41: Inter de Milan vs Liverpool
(41, 17, 'LOCAL'),
(41,  7, 'VISITANTE'),

-- COPA LIBERTADORES
-- Evento 42: Boca Juniors vs Flamengo
(42, 28, 'LOCAL'),
(42, 32, 'VISITANTE'),
-- Evento 43: River Plate vs Palmeiras
(43, 29, 'LOCAL'),
(43, 33, 'VISITANTE'),
-- Evento 44: Universitario vs Atletico Nacional
(44,  1, 'LOCAL'),
(44, 37, 'VISITANTE'),

-- NBA
-- Evento 45: Lakers vs Celtics
(45, 45, 'LOCAL'),
(45, 46, 'VISITANTE'),
-- Evento 46: Warriors vs Bulls
(46, 46, 'LOCAL'),
(46, 48, 'VISITANTE'),
-- Evento 47: Heat vs Nuggets
(47, 50, 'LOCAL'),
(47, 49, 'VISITANTE'),
-- Evento 48: Suns vs Mavericks
(48, 51, 'LOCAL'),
(48, 52, 'VISITANTE'),
-- Evento 49: Lakers vs Warriors
(49, 45, 'LOCAL'),
(49, 46, 'VISITANTE'),
-- Evento 50: Celtics vs Heat
(50, 47, 'LOCAL'),
(50, 50, 'VISITANTE'),

-- EUROLEAGUE
-- Evento 51: Real Madrid Basket vs Olimpia Milano
(51, 53, 'LOCAL'),
(51, 56, 'VISITANTE'),
-- Evento 52: Barcelona Basket vs Virtus Bologna
(52, 54, 'LOCAL'),
(52, 57, 'VISITANTE'),
-- Evento 53: Olimpia Milano vs Barcelona Basket
(53, 56, 'LOCAL'),
(53, 54, 'VISITANTE'),

-- VÓLEY PERÚ
-- Evento 54: Alianza Lima Vóley vs Universitario Vóley
(54, 60, 'LOCAL'),
(54, 61, 'VISITANTE'),
-- Evento 55: Sport Boys Vóley vs GAUX Arequipa
(55, 62, 'LOCAL'),
(55, 63, 'VISITANTE'),
-- Evento 56: Universitario Vóley vs Sport Boys Vóley
(56, 61, 'LOCAL'),
(56, 62, 'VISITANTE'),

-- SERIE A1 VÓLEY ITALIA
-- Evento 57: Imoco Volley vs Igor Gorgonzola Novara
(57, 64, 'LOCAL'),
(57, 65, 'VISITANTE'),
-- Evento 58: Igor Gorgonzola Novara vs Imoco Volley
(58, 65, 'LOCAL'),
(58, 64, 'VISITANTE')
GO

--SELECT id_evento, nombre_evento, estado FROM Evento ORDER BY id_evento
--GO

-- 18. TABLA MercadoApuesta 
INSERT INTO MercadoApuesta (nombre_mercado, estado, descripcion, id_evento) VALUES

-- EVENTO 1: Universitario vs Alianza Lima (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',           1),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',   1),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol', 1),

-- EVENTO 2: Sporting Cristal vs FBC Melgar (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',           2),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',   2),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol', 2),

-- EVENTO 3: Alianza Lima vs Cesar Vallejo (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',           3),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',   3),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol', 3),

-- EVENTO 4: FBC Melgar vs Universitario (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',           4),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',   4),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol', 4),

-- EVENTO 5: Cesar Vallejo vs Sporting Cristal (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',           5),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',   5),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol', 5),

-- EVENTO 6: Universitario vs Sporting Cristal (PROGRAMADO)
('Ganador del Partido',    'ACTIVO',  'Apuesta al equipo ganador del partido',           6),
('Total de Goles',         'ACTIVO',  'Apuesta sobre el total de goles en el partido',   6),
('Ambos Equipos Anotan',   'ACTIVO',  'Apuesta si ambos equipos marcan al menos un gol', 6),
('Handicap',               'ACTIVO',  'Apuesta con ventaja para equilibrar los equipos', 6),

-- EVENTO 7: Alianza Lima vs FBC Melgar (PROGRAMADO)
('Ganador del Partido',    'ACTIVO',  'Apuesta al equipo ganador del partido',           7),
('Total de Goles',         'ACTIVO',  'Apuesta sobre el total de goles en el partido',   7),
('Ambos Equipos Anotan',   'ACTIVO',  'Apuesta si ambos equipos marcan al menos un gol', 7),
('Handicap',               'ACTIVO',  'Apuesta con ventaja para equilibrar los equipos', 7),

-- EVENTO 8: Manchester City vs Liverpool (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',           8),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',   8),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol', 8),

-- EVENTO 9: Arsenal vs Chelsea (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',           9),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',   9),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol', 9),

-- EVENTO 10: Manchester United vs Arsenal (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          10),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',  10),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol',10),

-- EVENTO 11: Liverpool vs Chelsea (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          11),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',  11),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol',11),

-- EVENTO 12: Manchester City vs Arsenal (PROGRAMADO)
('Ganador del Partido',    'ACTIVO',  'Apuesta al equipo ganador del partido',          12),
('Total de Goles',         'ACTIVO',  'Apuesta sobre el total de goles en el partido',  12),
('Ambos Equipos Anotan',   'ACTIVO',  'Apuesta si ambos equipos marcan al menos un gol',12),
('Handicap',               'ACTIVO',  'Apuesta con ventaja para equilibrar los equipos',12),

-- EVENTO 13: Chelsea vs Manchester United (PROGRAMADO)
('Ganador del Partido',    'ACTIVO',  'Apuesta al equipo ganador del partido',          13),
('Total de Goles',         'ACTIVO',  'Apuesta sobre el total de goles en el partido',  13),
('Ambos Equipos Anotan',   'ACTIVO',  'Apuesta si ambos equipos marcan al menos un gol',13),
('Handicap',               'ACTIVO',  'Apuesta con ventaja para equilibrar los equipos',13),

-- EVENTO 14: Real Madrid vs Barcelona (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          14),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',  14),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol',14),

-- EVENTO 15: Atletico de Madrid vs Sevilla (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          15),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',  15),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol',15),

-- EVENTO 16: Barcelona vs Valencia (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          16),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',  16),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol',16),

-- EVENTO 17: Sevilla vs Real Madrid (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          17),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',  17),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol',17),

-- EVENTO 18: Real Madrid vs Atletico de Madrid (PROGRAMADO)
('Ganador del Partido',    'ACTIVO',  'Apuesta al equipo ganador del partido',          18),
('Total de Goles',         'ACTIVO',  'Apuesta sobre el total de goles en el partido',  18),
('Ambos Equipos Anotan',   'ACTIVO',  'Apuesta si ambos equipos marcan al menos un gol',18),
('Handicap',               'ACTIVO',  'Apuesta con ventaja para equilibrar los equipos',18),

-- EVENTO 19: Barcelona vs Sevilla (PROGRAMADO)
('Ganador del Partido',    'ACTIVO',  'Apuesta al equipo ganador del partido',          19),
('Total de Goles',         'ACTIVO',  'Apuesta sobre el total de goles en el partido',  19),
('Handicap',               'ACTIVO',  'Apuesta con ventaja para equilibrar los equipos',19),

-- EVENTO 20: Juventus vs Inter de Milan (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          20),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',  20),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol',20),

-- EVENTO 21: AC Milan vs Napoli (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          21),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',  21),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol',21),

-- EVENTO 22: Inter de Milan vs AS Roma (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          22),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',  22),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol',22),

-- EVENTO 23: Napoli vs Juventus (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          23),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',  23),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol',23),

-- EVENTO 24: Juventus vs AC Milan (PROGRAMADO)
('Ganador del Partido',    'ACTIVO',  'Apuesta al equipo ganador del partido',          24),
('Total de Goles',         'ACTIVO',  'Apuesta sobre el total de goles en el partido',  24),
('Handicap',               'ACTIVO',  'Apuesta con ventaja para equilibrar los equipos',24),

-- EVENTO 25: Bayern Munich vs Borussia Dortmund (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          25),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',  25),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol',25),

-- EVENTO 26: RB Leipzig vs Bayer Leverkusen (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          26),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',  26),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol',26),

-- EVENTO 27: Borussia Dortmund vs Bayer Leverkusen (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          27),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',  27),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol',27),

-- EVENTO 28: Bayern Munich vs RB Leipzig (PROGRAMADO)
('Ganador del Partido',    'ACTIVO',  'Apuesta al equipo ganador del partido',          28),
('Total de Goles',         'ACTIVO',  'Apuesta sobre el total de goles en el partido',  28),
('Handicap',               'ACTIVO',  'Apuesta con ventaja para equilibrar los equipos',28),

-- EVENTO 32: Boca Juniors vs River Plate (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          32),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',  32),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol',32),

-- EVENTO 33: Racing Club vs Independiente (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          33),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',  33),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol',33),

-- EVENTO 34: River Plate vs Racing Club (PROGRAMADO)
('Ganador del Partido',    'ACTIVO',  'Apuesta al equipo ganador del partido',          34),
('Total de Goles',         'ACTIVO',  'Apuesta sobre el total de goles en el partido',  34),
('Handicap',               'ACTIVO',  'Apuesta con ventaja para equilibrar los equipos',34),

-- EVENTO 38: Real Madrid vs Manchester City (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          38),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',  38),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol',38),

-- EVENTO 39: Bayern Munich vs Arsenal (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          39),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',  39),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol',39),

-- EVENTO 40: Barcelona vs PSG (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          40),
('Total de Goles',         'CERRADO', 'Apuesta sobre el total de goles en el partido',  40),
('Ambos Equipos Anotan',   'CERRADO', 'Apuesta si ambos equipos marcan al menos un gol',40),

-- EVENTO 41: Inter de Milan vs Liverpool (PROGRAMADO)
('Ganador del Partido',    'ACTIVO',  'Apuesta al equipo ganador del partido',          41),
('Total de Goles',         'ACTIVO',  'Apuesta sobre el total de goles en el partido',  41),
('Handicap',               'ACTIVO',  'Apuesta con ventaja para equilibrar los equipos',41),

-- EVENTO 45: Lakers vs Celtics (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          45),
('Total de Puntos',        'CERRADO', 'Apuesta sobre el total de puntos en el partido', 45),
('Handicap',               'CERRADO', 'Apuesta con ventaja para equilibrar los equipos',45),

-- EVENTO 46: Warriors vs Bulls (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          46),
('Total de Puntos',        'CERRADO', 'Apuesta sobre el total de puntos en el partido', 46),
('Handicap',               'CERRADO', 'Apuesta con ventaja para equilibrar los equipos',46),

-- EVENTO 47: Heat vs Nuggets (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          47),
('Total de Puntos',        'CERRADO', 'Apuesta sobre el total de puntos en el partido', 47),
('Handicap',               'CERRADO', 'Apuesta con ventaja para equilibrar los equipos',47),

-- EVENTO 48: Suns vs Mavericks (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          48),
('Total de Puntos',        'CERRADO', 'Apuesta sobre el total de puntos en el partido', 48),
('Handicap',               'CERRADO', 'Apuesta con ventaja para equilibrar los equipos',48),

-- EVENTO 49: Lakers vs Warriors (PROGRAMADO)
('Ganador del Partido',    'ACTIVO',  'Apuesta al equipo ganador del partido',          49),
('Total de Puntos',        'ACTIVO',  'Apuesta sobre el total de puntos en el partido', 49),
('Handicap',               'ACTIVO',  'Apuesta con ventaja para equilibrar los equipos',49),

-- EVENTO 50: Celtics vs Heat (PROGRAMADO)
('Ganador del Partido',    'ACTIVO',  'Apuesta al equipo ganador del partido',          50),
('Total de Puntos',        'ACTIVO',  'Apuesta sobre el total de puntos en el partido', 50),
('Handicap',               'ACTIVO',  'Apuesta con ventaja para equilibrar los equipos',50),

-- EVENTO 54: Alianza Lima Vóley vs Universitario Vóley (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          54),
('Total de Sets',          'CERRADO', 'Apuesta sobre el total de sets jugados',         54),

-- EVENTO 55: Sport Boys Vóley vs GAUX Arequipa (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          55),
('Total de Sets',          'CERRADO', 'Apuesta sobre el total de sets jugados',         55),

-- EVENTO 56: Universitario Vóley vs Sport Boys Vóley (PROGRAMADO)
('Ganador del Partido',    'ACTIVO',  'Apuesta al equipo ganador del partido',          56),
('Total de Sets',          'ACTIVO',  'Apuesta sobre el total de sets jugados',         56),

-- EVENTO 57: Imoco Volley vs Igor Gorgonzola Novara (FINALIZADO)
('Ganador del Partido',    'CERRADO', 'Apuesta al equipo ganador del partido',          57),
('Total de Sets',          'CERRADO', 'Apuesta sobre el total de sets jugados',         57),

-- EVENTO 58: Igor Gorgonzola Novara vs Imoco Volley (PROGRAMADO)
('Ganador del Partido',    'ACTIVO',  'Apuesta al equipo ganador del partido',          58),
('Total de Sets',          'ACTIVO',  'Apuesta sobre el total de sets jugados',         58)
GO

-- 19. TABLA Cuota 
INSERT INTO Cuota (nombre_opcion, valor, estado, id_mercado) VALUES

-- MERCADO 1: Ganador del Partido - Evento 1 (Universitario vs Alianza Lima) CERRADO
('Universitario',  2.10, 'CERRADA', 1),
('Empate',         3.20, 'CERRADA', 1),
('Alianza Lima',   3.50, 'CERRADA', 1),

-- MERCADO 2: Total de Goles - Evento 1 CERRADO
('Mas de 2.5',     1.85, 'CERRADA', 2),
('Menos de 2.5',   1.95, 'CERRADA', 2),

-- MERCADO 3: Ambos Equipos Anotan - Evento 1 CERRADO
('Si',             1.75, 'CERRADA', 3),
('No',             2.05, 'CERRADA', 3),

-- MERCADO 4: Ganador del Partido - Evento 2 (Sporting Cristal vs FBC Melgar) CERRADO
('Sporting Cristal', 2.20, 'CERRADA', 4),
('Empate',           3.10, 'CERRADA', 4),
('FBC Melgar',       3.40, 'CERRADA', 4),

-- MERCADO 5: Total de Goles - Evento 2 CERRADO
('Mas de 2.5',     1.90, 'CERRADA', 5),
('Menos de 2.5',   1.90, 'CERRADA', 5),

-- MERCADO 6: Ambos Equipos Anotan - Evento 2 CERRADO
('Si',             1.80, 'CERRADA', 6),
('No',             2.00, 'CERRADA', 6),

-- MERCADO 7: Ganador del Partido - Evento 3 (Alianza Lima vs Cesar Vallejo) CERRADO
('Alianza Lima',   1.85, 'CERRADA', 7),
('Empate',         3.30, 'CERRADA', 7),
('Cesar Vallejo',  4.20, 'CERRADA', 7),

-- MERCADO 8: Total de Goles - Evento 3 CERRADO
('Mas de 2.5',     1.95, 'CERRADA', 8),
('Menos de 2.5',   1.85, 'CERRADA', 8),

-- MERCADO 9: Ambos Equipos Anotan - Evento 3 CERRADO
('Si',             1.70, 'CERRADA', 9),
('No',             2.10, 'CERRADA', 9),

-- MERCADO 10: Ganador del Partido - Evento 4 (FBC Melgar vs Universitario) CERRADO
('FBC Melgar',     2.50, 'CERRADA', 10),
('Empate',         3.20, 'CERRADA', 10),
('Universitario',  2.80, 'CERRADA', 10),

-- MERCADO 11: Total de Goles - Evento 4 CERRADO
('Mas de 2.5',     1.85, 'CERRADA', 11),
('Menos de 2.5',   1.95, 'CERRADA', 11),

-- MERCADO 12: Ambos Equipos Anotan - Evento 4 CERRADO
('Si',             1.75, 'CERRADA', 12),
('No',             2.05, 'CERRADA', 12),

-- MERCADO 13: Ganador del Partido - Evento 5 (Cesar Vallejo vs Sporting Cristal) CERRADO
('Cesar Vallejo',  3.10, 'CERRADA', 13),
('Empate',         3.20, 'CERRADA', 13),
('Sporting Cristal',2.10,'CERRADA', 13),

-- MERCADO 14: Total de Goles - Evento 5 CERRADO
('Mas de 2.5',     1.90, 'CERRADA', 14),
('Menos de 2.5',   1.90, 'CERRADA', 14),

-- MERCADO 15: Ambos Equipos Anotan - Evento 5 CERRADO
('Si',             1.80, 'CERRADA', 15),
('No',             2.00, 'CERRADA', 15),

-- MERCADO 16: Ganador del Partido - Evento 6 (Universitario vs Sporting Cristal) ACTIVO
('Universitario',  2.05, 'ACTIVA',  16),
('Empate',         3.25, 'ACTIVA',  16),
('Sporting Cristal',3.40,'ACTIVA',  16),

-- MERCADO 17: Total de Goles - Evento 6 ACTIVO
('Mas de 2.5',     1.90, 'ACTIVA',  17),
('Menos de 2.5',   1.90, 'ACTIVA',  17),

-- MERCADO 18: Ambos Equipos Anotan - Evento 6 ACTIVO
('Si',             1.75, 'ACTIVA',  18),
('No',             2.05, 'ACTIVA',  18),

-- MERCADO 19: Handicap - Evento 6 ACTIVO
('Universitario -1', 2.50, 'ACTIVA', 19),
('Sporting Cristal +1', 1.60, 'ACTIVA', 19),

-- MERCADO 20: Ganador del Partido - Evento 7 (Alianza Lima vs FBC Melgar) ACTIVO
('Alianza Lima',   1.90, 'ACTIVA',  20),
('Empate',         3.30, 'ACTIVA',  20),
('FBC Melgar',     4.00, 'ACTIVA',  20),

-- MERCADO 21: Total de Goles - Evento 7 ACTIVO
('Mas de 2.5',     1.85, 'ACTIVA',  21),
('Menos de 2.5',   1.95, 'ACTIVA',  21),

-- MERCADO 22: Ambos Equipos Anotan - Evento 7 ACTIVO
('Si',             1.80, 'ACTIVA',  22),
('No',             2.00, 'ACTIVA',  22),

-- MERCADO 23: Handicap - Evento 7 ACTIVO
('Alianza Lima -1',  2.40, 'ACTIVA', 23),
('FBC Melgar +1',    1.65, 'ACTIVA', 23),

-- MERCADO 24: Ganador del Partido - Evento 8 (Manchester City vs Liverpool) CERRADO
('Manchester City', 2.10, 'CERRADA', 24),
('Empate',          3.50, 'CERRADA', 24),
('Liverpool',       3.20, 'CERRADA', 24),

-- MERCADO 25: Total de Goles - Evento 8 CERRADO
('Mas de 2.5',     1.80, 'CERRADA', 25),
('Menos de 2.5',   2.00, 'CERRADA', 25),

-- MERCADO 26: Ambos Equipos Anotan - Evento 8 CERRADO
('Si',             1.70, 'CERRADA', 26),
('No',             2.10, 'CERRADA', 26),

-- MERCADO 27: Ganador del Partido - Evento 9 (Arsenal vs Chelsea) CERRADO
('Arsenal',        2.20, 'CERRADA', 27),
('Empate',         3.40, 'CERRADA', 27),
('Chelsea',        3.10, 'CERRADA', 27),

-- MERCADO 28: Total de Goles - Evento 9 CERRADO
('Mas de 2.5',     1.85, 'CERRADA', 28),
('Menos de 2.5',   1.95, 'CERRADA', 28),

-- MERCADO 29: Ambos Equipos Anotan - Evento 9 CERRADO
('Si',             1.75, 'CERRADA', 29),
('No',             2.05, 'CERRADA', 29),

-- MERCADO 36: Ganador del Partido - Evento 12 (Man City vs Arsenal) ACTIVO
('Manchester City', 1.95, 'ACTIVA', 36),
('Empate',          3.40, 'ACTIVA', 36),
('Arsenal',         3.80, 'ACTIVA', 36),

-- MERCADO 37: Total de Goles - Evento 12 ACTIVO
('Mas de 2.5',     1.85, 'ACTIVA',  37),
('Menos de 2.5',   1.95, 'ACTIVA',  37),

-- MERCADO 38: Ambos Equipos Anotan - Evento 12 ACTIVO
('Si',             1.70, 'ACTIVA',  38),
('No',             2.10, 'ACTIVA',  38),

-- MERCADO 39: Handicap - Evento 12 ACTIVO
('Man City -1',    2.30, 'ACTIVA',  39),
('Arsenal +1',     1.70, 'ACTIVA',  39),

-- MERCADO 50: Ganador del Partido - Evento 14 (Real Madrid vs Barcelona) CERRADO
('Real Madrid',    2.05, 'CERRADA', 50),
('Empate',         3.60, 'CERRADA', 50),
('Barcelona',      3.40, 'CERRADA', 50),

-- MERCADO 51: Total de Goles - Evento 14 CERRADO
('Mas de 2.5',     1.75, 'CERRADA', 51),
('Menos de 2.5',   2.05, 'CERRADA', 51),

-- MERCADO 52: Ambos Equipos Anotan - Evento 14 CERRADO
('Si',             1.65, 'CERRADA', 52),
('No',             2.20, 'CERRADA', 52),

-- MERCADO 56: Ganador del Partido - Evento 18 (Real Madrid vs Atletico) ACTIVO
('Real Madrid',    1.85, 'ACTIVA',  56),
('Empate',         3.50, 'ACTIVA',  56),
('Atletico Madrid',4.10, 'ACTIVA',  56),

-- MERCADO 57: Total de Goles - Evento 18 ACTIVO
('Mas de 2.5',     1.90, 'ACTIVA',  57),
('Menos de 2.5',   1.90, 'ACTIVA',  57),

-- MERCADO 58: Ambos Equipos Anotan - Evento 18 ACTIVO
('Si',             1.75, 'ACTIVA',  58),
('No',             2.05, 'ACTIVA',  58),

-- MERCADO 59: Handicap - Evento 18 ACTIVO
('Real Madrid -1', 2.20, 'ACTIVA',  59),
('Atletico +1',    1.75, 'ACTIVA',  59),

-- MERCADO 63: Ganador del Partido - Evento 20 (Juventus vs Inter) CERRADO
('Juventus',       2.30, 'CERRADA', 63),
('Empate',         3.30, 'CERRADA', 63),
('Inter de Milan', 2.90, 'CERRADA', 63),

-- MERCADO 64: Total de Goles - Evento 20 CERRADO
('Mas de 2.5',     1.85, 'CERRADA', 64),
('Menos de 2.5',   1.95, 'CERRADA', 64),

-- MERCADO 65: Ambos Equipos Anotan - Evento 20 CERRADO
('Si',             1.75, 'CERRADA', 65),
('No',             2.05, 'CERRADA', 65),

-- MERCADO 78: Ganador del Partido - Evento 25 (Bayern vs Borussia) CERRADO
('Bayern Munich',      1.70, 'CERRADA', 78),
('Empate',             4.00, 'CERRADA', 78),
('Borussia Dortmund',  4.50, 'CERRADA', 78),

-- MERCADO 79: Total de Goles - Evento 25 CERRADO
('Mas de 2.5',     1.80, 'CERRADA', 79),
('Menos de 2.5',   2.00, 'CERRADA', 79),

-- MERCADO 80: Ambos Equipos Anotan - Evento 25 CERRADO
('Si',             1.65, 'CERRADA', 80),
('No',             2.20, 'CERRADA', 80),

-- MERCADO 87: Ganador del Partido - Evento 28 (Bayern vs RB Leipzig) ACTIVO
('Bayern Munich',  1.75, 'ACTIVA',  87),
('Empate',         3.80, 'ACTIVA',  87),
('RB Leipzig',     4.20, 'ACTIVA',  87),

-- MERCADO 88: Total de Goles - Evento 28 ACTIVO
('Mas de 2.5',     1.85, 'ACTIVA',  88),
('Menos de 2.5',   1.95, 'ACTIVA',  88),

-- MERCADO 89: Handicap - Evento 28 ACTIVO
('Bayern Munich -1', 2.10, 'ACTIVA', 89),
('RB Leipzig +1',    1.80, 'ACTIVA', 89),

-- MERCADO 90: Ganador del Partido - Evento 32 (Boca vs River) CERRADO
('Boca Juniors',   2.40, 'CERRADA', 90),
('Empate',         3.20, 'CERRADA', 90),
('River Plate',    2.80, 'CERRADA', 90),

-- MERCADO 91: Total de Goles - Evento 32 CERRADO
('Mas de 2.5',     1.90, 'CERRADA', 91),
('Menos de 2.5',   1.90, 'CERRADA', 91),

-- MERCADO 99: Handicap - Evento 34 (River vs Racing) ACTIVO
('River Plate -1', 2.20, 'ACTIVA',  99),
('Racing Club +1', 1.75, 'ACTIVA',  99),

-- MERCADO 111: Ganador del Partido - Evento 45 (Lakers vs Celtics) CERRADO
('Lakers',         2.30, 'CERRADA', 111),
('Celtics',        1.65, 'CERRADA', 111),

-- MERCADO 112: Total de Puntos - Evento 45 CERRADO
('Mas de 220.5',   1.90, 'CERRADA', 112),
('Menos de 220.5', 1.90, 'CERRADA', 112),

-- MERCADO 113: Handicap - Evento 45 CERRADO
('Lakers +5.5',    1.85, 'CERRADA', 113),
('Celtics -5.5',   1.95, 'CERRADA', 113),

-- MERCADO 114: Ganador del Partido - Evento 46 (Warriors vs Bulls) CERRADO
('Warriors',       1.60, 'CERRADA', 114),
('Bulls',          2.40, 'CERRADA', 114),

-- MERCADO 115: Total de Puntos - Evento 46 CERRADO
('Mas de 215.5',   1.90, 'CERRADA', 115),
('Menos de 215.5', 1.90, 'CERRADA', 115),

-- MERCADO 123: Ganador del Partido - Evento 49 (Lakers vs Warriors) ACTIVO
('Lakers',         2.10, 'ACTIVA',  123),
('Warriors',       1.75, 'ACTIVA',  123),

-- MERCADO 124: Total de Puntos - Evento 49 ACTIVO
('Mas de 225.5',   1.90, 'ACTIVA',  124),
('Menos de 225.5', 1.90, 'ACTIVA',  124),

-- MERCADO 125: Handicap - Evento 49 ACTIVO
('Lakers +3.5',    1.85, 'ACTIVA',  125),
('Warriors -3.5',  1.95, 'ACTIVA',  125),

-- MERCADO 129: Ganador del Partido - Evento 54 (Alianza Lima Vóley vs Universitario) CERRADO
('Alianza Lima Vóley',   1.80, 'CERRADA', 129),
('Universitario Vóley',  2.10, 'CERRADA', 129),

-- MERCADO 130: Total de Sets - Evento 54 CERRADO
('3 Sets',   2.50, 'CERRADA', 130),
('4 Sets',   2.80, 'CERRADA', 130),
('5 Sets',   3.20, 'CERRADA', 130),

-- MERCADO 131: Ganador del Partido - Evento 55 (Sport Boys vs GAUX) CERRADO
('Sport Boys Vóley', 2.20, 'CERRADA', 131),
('GAUX Arequipa',    1.75, 'CERRADA', 131),

-- MERCADO 132: Total de Sets - Evento 55 CERRADO
('3 Sets',   2.40, 'CERRADA', 132),
('4 Sets',   2.90, 'CERRADA', 132),
('5 Sets',   3.50, 'CERRADA', 132),

-- MERCADO 133: Ganador del Partido - Evento 56 (Universitario Vóley vs Sport Boys) ACTIVO
('Universitario Vóley', 1.90, 'ACTIVA', 133),
('Sport Boys Vóley',    2.00, 'ACTIVA', 133),

-- MERCADO 134: Total de Sets - Evento 56 ACTIVO
('3 Sets',   2.30, 'ACTIVA',  134),
('4 Sets',   2.70, 'ACTIVA',  134),
('5 Sets',   3.40, 'ACTIVA',  134),

-- MERCADO 135: Ganador del Partido - Evento 57 (Imoco vs Igor) CERRADO
('Imoco Volley',          1.65, 'CERRADA', 135),
('Igor Gorgonzola Novara',2.30, 'CERRADA', 135),

-- MERCADO 136: Total de Sets - Evento 57 CERRADO
('3 Sets',   2.20, 'CERRADA', 136),
('4 Sets',   2.60, 'CERRADA', 136),
('5 Sets',   3.30, 'CERRADA', 136),

-- MERCADO 137: Ganador del Partido - Evento 58 (Igor vs Imoco) ACTIVO
('Igor Gorgonzola Novara', 2.50, 'ACTIVA', 137),
('Imoco Volley',           1.60, 'ACTIVA', 137),

-- MERCADO 138: Total de Sets - Evento 58 ACTIVO
('3 Sets',   2.30, 'ACTIVA',  138),
('4 Sets',   2.80, 'ACTIVA',  138),
('5 Sets',   3.50, 'ACTIVA',  138)
GO

-- 20. TABLA Saldo 
INSERT INTO Saldo (monto_disponible, monto_retenido, monto_total, ultima_actualizacion, id_moneda, id_usuario) VALUES

-- SALDOS EN PEN (id_moneda=1)
(500.00,   0.00,  500.00, '2024-05-01 10:00:00', 1,  1),
(1200.50,  50.00, 1250.50,'2024-05-02 11:30:00', 1,  2),
(350.00,   0.00,  350.00, '2024-05-03 09:15:00', 1,  3),
(2500.00, 100.00, 2600.00,'2024-05-04 14:20:00', 1,  4),
(750.00,   0.00,  750.00, '2024-05-05 16:45:00', 1,  5),
(180.00,  20.00,  200.00, '2024-05-06 08:30:00', 1,  6),
(3200.00, 200.00, 3400.00,'2024-05-07 12:00:00', 1,  7),
(900.00,   0.00,  900.00, '2024-05-08 17:30:00', 1,  8),
(450.00,  50.00,  500.00, '2024-05-09 10:45:00', 1,  9),
(1500.00,  0.00, 1500.00, '2024-05-10 13:20:00', 1, 10),
(620.00,  80.00,  700.00, '2024-05-11 09:00:00', 1, 11),
(280.00,   0.00,  280.00, '2024-05-12 15:30:00', 1, 12),
(1800.00, 200.00,2000.00, '2024-05-13 11:15:00', 1, 13),
(420.00,   0.00,  420.00, '2024-05-14 14:00:00', 1, 14),
(950.00, 150.00, 1100.00, '2024-05-15 10:30:00', 1, 15),
(330.00,   0.00,  330.00, '2024-05-16 16:00:00', 1, 16),
(2100.00, 100.00,2200.00, '2024-05-17 09:45:00', 1, 17),
(670.00,   0.00,  670.00, '2024-05-18 13:00:00', 1, 18),
(1400.00,  0.00, 1400.00, '2024-05-19 11:30:00', 1, 19),
(550.00,  50.00,  600.00, '2024-05-20 10:00:00', 1, 20),
(800.00,   0.00,  800.00, '2024-05-21 14:30:00', 1, 21),
(1650.00, 150.00,1800.00, '2024-05-22 09:15:00', 1, 22),
(370.00,   0.00,  370.00, '2024-05-23 16:45:00', 1, 23),
(2800.00, 200.00,3000.00, '2024-05-24 12:00:00', 1, 24),
(490.00,  10.00,  500.00, '2024-05-25 10:15:00', 1, 25),
(1100.00,  0.00, 1100.00, '2024-05-26 13:45:00', 1, 26),
(720.00,  80.00,  800.00, '2024-05-27 09:30:00', 1, 27),
(260.00,   0.00,  260.00, '2024-05-28 15:00:00', 1, 28),
(1950.00, 50.00, 2000.00, '2024-05-29 11:00:00', 1, 29),
(430.00,   0.00,  430.00, '2024-05-30 14:15:00', 1, 30),
(870.00, 130.00, 1000.00, '2024-05-31 10:45:00', 1, 31),
(310.00,   0.00,  310.00, '2024-06-01 16:30:00', 1, 32),
(2200.00, 300.00,2500.00, '2024-06-02 09:00:00', 1, 33),
(580.00,   0.00,  580.00, '2024-06-03 13:15:00', 1, 34),
(1300.00, 200.00,1500.00, '2024-06-04 11:45:00', 1, 35),
(440.00,   0.00,  440.00, '2024-06-05 10:00:00', 1, 36),
(760.00,  40.00,  800.00, '2024-06-06 14:30:00', 1, 37),
(290.00,   0.00,  290.00, '2024-06-07 09:15:00', 1, 38),
(1750.00, 250.00,2000.00, '2024-06-08 12:45:00', 1, 39),
(510.00,   0.00,  510.00, '2024-06-09 16:00:00', 1, 40),

-- SALDOS EN USD (id_moneda=2)
(200.00,  0.00,  200.00, '2024-05-01 10:00:00', 2, 41),
(450.50, 49.50,  500.00, '2024-05-05 11:30:00', 2, 42),
(150.00,  0.00,  150.00, '2024-05-10 09:15:00', 2, 43),
(800.00, 200.00,1000.00, '2024-05-15 14:20:00', 2, 44),
(320.00,  0.00,  320.00, '2024-05-20 16:45:00', 2, 45),
(175.00, 25.00,  200.00, '2024-05-25 08:30:00', 2, 46),
(600.00,  0.00,  600.00, '2024-05-30 12:00:00', 2, 47),
(950.00, 50.00, 1000.00, '2024-06-01 17:30:00', 2, 48),

-- SALDOS EN EUR (id_moneda=3)
(300.00,   0.00,  300.00, '2024-05-01 10:00:00', 3, 49),
(750.00, 250.00, 1000.00, '2024-05-10 11:30:00', 3, 50),
(180.00,   0.00,  180.00, '2024-05-15 09:15:00', 3, 51),
(420.00,  80.00,  500.00, '2024-05-20 14:20:00', 3, 52),
(650.00,   0.00,  650.00, '2024-05-25 16:45:00', 3, 53),
(200.00, 100.00,  300.00, '2024-06-01 08:30:00', 3, 54),
(480.00,  20.00,  500.00, '2024-06-05 12:00:00', 3, 55)
GO

-- 21. TABLA TransaccionFinanciera 
INSERT INTO TransaccionFinanciera (monto_total, monto_neto, fecha_solicitud, fecha_proceso, referencia_externa, observacion, id_tipo_transaccion, id_estado, id_metodo_pago, id_moneda, id_usuario) VALUES

-- DEPÓSITOS COMPLETADOS (id_tipo=1, id_estado=2)
(500.00,  500.00, '2024-01-05 10:00:00', '2024-01-05 10:05:00', 'DEP-001', 'Depósito inicial',         1, 2, 3, 1,  1),
(1250.00, 1250.00,'2024-01-06 11:00:00', '2024-01-06 11:03:00', 'DEP-002', 'Depósito inicial',         1, 2, 4, 1,  2),
(350.00,  350.00, '2024-01-07 09:00:00', '2024-01-07 09:02:00', 'DEP-003', 'Depósito inicial',         1, 2, 7, 1,  3),
(2600.00, 2600.00,'2024-01-08 14:00:00', '2024-01-08 14:04:00', 'DEP-004', 'Depósito inicial',         1, 2, 1, 1,  4),
(750.00,  750.00, '2024-01-09 16:00:00', '2024-01-09 16:02:00', 'DEP-005', 'Depósito inicial',         1, 2, 3, 1,  5),
(200.00,  200.00, '2024-01-10 08:00:00', '2024-01-10 08:03:00', 'DEP-006', 'Depósito inicial',         1, 2, 4, 1,  6),
(3400.00, 3400.00,'2024-01-11 12:00:00', '2024-01-11 12:05:00', 'DEP-007', 'Depósito inicial',         1, 2, 5, 1,  7),
(900.00,  900.00, '2024-01-12 17:00:00', '2024-01-12 17:02:00', 'DEP-008', 'Depósito inicial',         1, 2, 3, 1,  8),
(500.00,  500.00, '2024-01-13 10:00:00', '2024-01-13 10:03:00', 'DEP-009', 'Depósito inicial',         1, 2, 4, 1,  9),
(1500.00, 1500.00,'2024-01-14 13:00:00', '2024-01-14 13:04:00', 'DEP-010', 'Depósito inicial',         1, 2, 1, 1, 10),
(700.00,  700.00, '2024-01-15 09:00:00', '2024-01-15 09:02:00', 'DEP-011', 'Depósito inicial',         1, 2, 3, 1, 11),
(280.00,  280.00, '2024-01-16 15:00:00', '2024-01-16 15:03:00', 'DEP-012', 'Depósito inicial',         1, 2, 7, 1, 12),
(2000.00, 2000.00,'2024-01-17 11:00:00', '2024-01-17 11:04:00', 'DEP-013', 'Depósito inicial',         1, 2, 5, 1, 13),
(420.00,  420.00, '2024-01-18 14:00:00', '2024-01-18 14:02:00', 'DEP-014', 'Depósito inicial',         1, 2, 3, 1, 14),
(1100.00, 1100.00,'2024-01-19 10:00:00', '2024-01-19 10:03:00', 'DEP-015', 'Depósito inicial',         1, 2, 4, 1, 15),
(330.00,  330.00, '2024-01-20 16:00:00', '2024-01-20 16:02:00', 'DEP-016', 'Depósito inicial',         1, 2, 3, 1, 16),
(2200.00, 2200.00,'2024-01-21 09:00:00', '2024-01-21 09:04:00', 'DEP-017', 'Depósito inicial',         1, 2, 1, 1, 17),
(670.00,  670.00, '2024-01-22 13:00:00', '2024-01-22 13:02:00', 'DEP-018', 'Depósito inicial',         1, 2, 3, 1, 18),
(1400.00, 1400.00,'2024-01-23 11:00:00', '2024-01-23 11:03:00', 'DEP-019', 'Depósito inicial',         1, 2, 5, 1, 19),
(600.00,  600.00, '2024-01-24 10:00:00', '2024-01-24 10:02:00', 'DEP-020', 'Depósito inicial',         1, 2, 4, 1, 20),

-- DEPÓSITOS EN USD (id_moneda=2)
(200.00,  200.00, '2024-01-25 10:00:00', '2024-01-25 10:03:00', 'DEP-021', 'Depósito USD',             1, 2, 6, 2, 41),
(500.00,  500.00, '2024-01-26 11:00:00', '2024-01-26 11:02:00', 'DEP-022', 'Depósito USD',             1, 2, 6, 2, 42),
(150.00,  150.00, '2024-01-27 09:00:00', '2024-01-27 09:03:00', 'DEP-023', 'Depósito USD',             1, 2, 5, 2, 43),
(1000.00, 1000.00,'2024-01-28 14:00:00', '2024-01-28 14:04:00', 'DEP-024', 'Depósito USD',             1, 2, 6, 2, 44),
(320.00,  320.00, '2024-01-29 16:00:00', '2024-01-29 16:02:00', 'DEP-025', 'Depósito USD',             1, 2, 5, 2, 45),

-- DEPÓSITOS EN EUR (id_moneda=3)
(300.00,  300.00, '2024-01-30 10:00:00', '2024-01-30 10:03:00', 'DEP-026', 'Depósito EUR',             1, 2, 6, 3, 49),
(1000.00, 1000.00,'2024-01-31 11:00:00', '2024-01-31 11:04:00', 'DEP-027', 'Depósito EUR',             1, 2, 5, 3, 50),
(180.00,  180.00, '2024-02-01 09:00:00', '2024-02-01 09:02:00', 'DEP-028', 'Depósito EUR',             1, 2, 6, 3, 51),
(500.00,  500.00, '2024-02-02 14:00:00', '2024-02-02 14:03:00', 'DEP-029', 'Depósito EUR',             1, 2, 5, 3, 52),
(650.00,  650.00, '2024-02-03 16:00:00', '2024-02-03 16:02:00', 'DEP-030', 'Depósito EUR',             1, 2, 6, 3, 53),

-- RETIROS COMPLETADOS (id_tipo=5, id_estado=2)
(200.00,  195.00, '2024-02-05 10:00:00', '2024-02-05 10:10:00', 'RET-001', 'Retiro solicitado',        5, 2, 3, 1,  1),
(500.00,  490.00, '2024-02-06 11:00:00', '2024-02-06 11:08:00', 'RET-002', 'Retiro solicitado',        5, 2, 4, 1,  4),
(300.00,  294.00, '2024-02-07 09:00:00', '2024-02-07 09:07:00', 'RET-003', 'Retiro solicitado',        5, 2, 5, 1,  7),
(150.00,  147.00, '2024-02-08 14:00:00', '2024-02-08 14:06:00', 'RET-004', 'Retiro solicitado',        5, 2, 3, 1, 10),
(100.00,   98.00, '2024-02-09 16:00:00', '2024-02-09 16:05:00', 'RET-005', 'Retiro solicitado',        5, 2, 4, 2, 42),
(250.00,  245.00, '2024-02-10 08:00:00', '2024-02-10 08:08:00', 'RET-006', 'Retiro solicitado',        5, 2, 6, 3, 50),

-- RETIROS PENDIENTES (id_tipo=5, id_estado=1)
(400.00,  392.00, '2024-05-28 10:00:00', NULL, 'RET-007', 'Retiro en proceso',                         5, 1, 3, 1, 13),
(180.00,  176.40, '2024-05-28 11:00:00', NULL, 'RET-008', 'Retiro en proceso',                         5, 1, 4, 1, 17),
(200.00,  196.00, '2024-05-28 12:00:00', NULL, 'RET-009', 'Retiro en proceso',                         5, 1, 5, 2, 44),

-- RETIROS FALLIDOS (id_tipo=5, id_estado=3)
(500.00,  490.00, '2024-03-10 10:00:00', '2024-03-10 10:15:00', 'RET-010', 'Fondos insuficientes',     5, 3, 3, 1,  3),
(300.00,  294.00, '2024-03-11 11:00:00', '2024-03-11 11:10:00', 'RET-011', 'Error en cuenta destino',  5, 3, 5, 2, 43),

-- PREMIOS COMPLETADOS (id_tipo=2, id_estado=2)
(750.00,  750.00, '2024-03-16 18:00:00', '2024-03-16 18:05:00', 'PRE-001', 'Premio apuesta ganada',    2, 2, 3, 1,  1),
(1200.00, 1200.00,'2024-03-17 20:00:00', '2024-03-17 20:05:00', 'PRE-002', 'Premio apuesta ganada',    2, 2, 4, 1,  4),
(450.00,  450.00, '2024-03-22 19:00:00', '2024-03-22 19:04:00', 'PRE-003', 'Premio apuesta ganada',    2, 2, 3, 1,  8),
(980.00,  980.00, '2024-03-24 21:00:00', '2024-03-24 21:05:00', 'PRE-004', 'Premio apuesta ganada',    2, 2, 5, 1, 13),
(320.00,  320.00, '2024-03-31 17:00:00', '2024-03-31 17:03:00', 'PRE-005', 'Premio apuesta ganada',    2, 2, 3, 2, 42),
(560.00,  560.00, '2024-04-07 20:00:00', '2024-04-07 20:04:00', 'PRE-006', 'Premio apuesta ganada',    2, 2, 6, 3, 50),

-- BONIFICACIONES (id_tipo=3, id_estado=2)
(50.00,   50.00,  '2024-02-15 10:00:00', '2024-02-15 10:01:00', 'BON-001', 'Bono bienvenida',          3, 2, 3, 1,  1),
(50.00,   50.00,  '2024-02-15 10:00:00', '2024-02-15 10:01:00', 'BON-002', 'Bono bienvenida',          3, 2, 3, 1,  2),
(50.00,   50.00,  '2024-02-15 10:00:00', '2024-02-15 10:01:00', 'BON-003', 'Bono bienvenida',          3, 2, 3, 1,  3),
(100.00,  100.00, '2024-03-01 10:00:00', '2024-03-01 10:01:00', 'BON-004', 'Bono recarga 10%',         3, 2, 3, 1,  7),
(100.00,  100.00, '2024-03-01 10:00:00', '2024-03-01 10:01:00', 'BON-005', 'Bono recarga 10%',         3, 2, 3, 1, 13),
(25.00,   25.00,  '2024-03-15 10:00:00', '2024-03-15 10:01:00', 'BON-006', 'Bono referido',            3, 2, 3, 2, 41),

-- DEVOLUCIONES (id_tipo=4, id_estado=2)
(100.00,  100.00, '2024-04-05 12:00:00', '2024-04-05 12:03:00', 'DEV-001', 'Devolución apuesta anulada',4, 2, 3, 1,  5),
(200.00,  200.00, '2024-04-10 14:00:00', '2024-04-10 14:02:00', 'DEV-002', 'Devolución apuesta anulada',4, 2, 4, 1, 10),
(150.00,  150.00, '2024-04-15 16:00:00', '2024-04-15 16:03:00', 'DEV-003', 'Devolución apuesta anulada',4, 2, 3, 1, 15),
(80.00,   80.00,  '2024-04-20 10:00:00', '2024-04-20 10:02:00', 'DEV-004', 'Devolución apuesta anulada',4, 2, 3, 2, 43),

-- APUESTAS DESCONTADAS (id_tipo=6, id_estado=2)
(50.00,   50.00,  '2024-03-15 15:30:00', '2024-03-15 15:30:00', 'APU-001', 'Descuento apuesta',        6, 2, 3, 1,  1),
(100.00,  100.00, '2024-03-22 20:30:00', '2024-03-22 20:30:00', 'APU-002', 'Descuento apuesta',        6, 2, 4, 1,  4),
(75.00,   75.00,  '2024-03-17 17:30:00', '2024-03-17 17:30:00', 'APU-003', 'Descuento apuesta',        6, 2, 3, 1,  8),
(200.00,  200.00, '2024-03-24 21:00:00', '2024-03-24 21:00:00', 'APU-004', 'Descuento apuesta',        6, 2, 5, 1, 13),
(60.00,   60.00,  '2024-03-31 17:00:00', '2024-03-31 17:00:00', 'APU-005', 'Descuento apuesta',        6, 2, 3, 2, 42),
(120.00,  120.00, '2024-04-07 20:00:00', '2024-04-07 20:00:00', 'APU-006', 'Descuento apuesta',        6, 2, 6, 3, 50),
(80.00,   80.00,  '2024-04-09 21:30:00', '2024-04-09 21:30:00', 'APU-007', 'Descuento apuesta',        6, 2, 3, 1,  2),
(150.00,  150.00, '2024-04-16 20:00:00', '2024-04-16 20:00:00', 'APU-008', 'Descuento apuesta',        6, 2, 4, 1,  7),
(90.00,   90.00,  '2024-04-21 19:30:00', '2024-04-21 19:30:00', 'APU-009', 'Descuento apuesta',        6, 2, 3, 1, 17),
(110.00,  110.00, '2024-04-28 16:00:00', '2024-04-28 16:00:00', 'APU-010', 'Descuento apuesta',        6, 2, 5, 1, 22),

-- COMISIONES (id_tipo=7, id_estado=2)
(5.00,    5.00,   '2024-02-05 10:10:00', '2024-02-05 10:10:00', 'COM-001', 'Comisión por retiro',      7, 2, 3, 1,  1),
(10.00,   10.00,  '2024-02-06 11:08:00', '2024-02-06 11:08:00', 'COM-002', 'Comisión por retiro',      7, 2, 4, 1,  4),
(6.00,    6.00,   '2024-02-07 09:07:00', '2024-02-07 09:07:00', 'COM-003', 'Comisión por retiro',      7, 2, 5, 1,  7),
(3.00,    3.00,   '2024-02-08 14:06:00', '2024-02-08 14:06:00', 'COM-004', 'Comisión por retiro',      7, 2, 3, 1, 10),
(2.00,    2.00,   '2024-02-09 16:05:00', '2024-02-09 16:05:00', 'COM-005', 'Comisión por retiro',      7, 2, 4, 2, 42),
(5.00,    5.00,   '2024-02-10 08:08:00', '2024-02-10 08:08:00', 'COM-006', 'Comisión por retiro',      7, 2, 6, 3, 50),

--NUEVO
(40.00, 40.00, '2024-03-08 02:00:00', '2024-03-08 02:00:00', 'APU-011', 'Descuento apuesta TCK-APU-011', 6, 2, 5, 1, 3),
(70.00, 70.00, '2024-03-15 02:30:00', '2024-03-15 02:30:00', 'APU-012', 'Descuento apuesta TCK-APU-012', 6, 2, 4, 1, 5),
(90.00, 90.00, '2024-03-09 17:00:00', '2024-03-09 17:00:00', 'APU-013', 'Descuento apuesta TCK-APU-013', 6, 2, 5, 1, 9),
(130.00, 130.00, '2024-03-10 20:30:00', '2024-03-10 20:30:00', 'APU-014', 'Descuento apuesta TCK-APU-014', 6, 2, 3, 1, 10),
(55.00, 55.00, '2024-03-16 20:30:00', '2024-03-16 20:30:00', 'APU-015', 'Descuento apuesta TCK-APU-015', 6, 2, 5, 1, 11),
(150.00, 150.00, '2024-03-17 20:20:00', '2024-03-17 20:20:00', 'APU-016', 'Descuento apuesta TCK-APU-016', 6, 2, 3, 1, 12),
(85.00, 85.00, '2024-03-21 19:30:00', '2024-03-21 19:30:00', 'APU-017', 'Descuento apuesta TCK-APU-017', 6, 2, 1, 1, 14),
(65.00, 65.00, '2024-03-24 18:30:00', '2024-03-24 18:30:00', 'APU-018', 'Descuento apuesta TCK-APU-018', 6, 2, 4, 1, 15),
(100.00, 100.00, '2024-03-09 17:30:00', '2024-03-09 17:30:00', 'APU-019', 'Descuento apuesta TCK-APU-019', 6, 2, 1, 1, 16),
(45.00, 45.00, '2024-03-10 17:30:00', '2024-03-10 17:30:00', 'APU-020', 'Descuento apuesta TCK-APU-020', 6, 2, 5, 1, 18),
(25.00, 25.00, '2024-03-08 02:10:00', '2024-03-08 02:10:00', 'APU-021', 'Descuento apuesta TCK-APU-021', 6, 2, 5, 2, 41),
(50.00, 50.00, '2024-03-14 19:30:00', '2024-03-14 19:30:00', 'APU-022', 'Descuento apuesta TCK-APU-022', 6, 2, 6, 2, 43),
(80.00, 80.00, '2024-04-05 03:00:00', '2024-04-05 03:00:00', 'APU-023', 'Descuento apuesta TCK-APU-023', 6, 2, 6, 2, 44),
(35.00, 35.00, '2024-03-15 03:20:00', '2024-03-15 03:20:00', 'APU-024', 'Descuento apuesta TCK-APU-024', 6, 2, 6, 2, 45),
(60.00, 60.00, '2024-06-18 02:00:00', '2024-06-18 02:00:00', 'APU-025', 'Descuento apuesta TCK-APU-025', 6, 2, 6, 2, 46),
(40.00, 40.00, '2024-03-14 19:40:00', '2024-03-14 19:40:00', 'APU-026', 'Descuento apuesta TCK-APU-026', 6, 2, 6, 3, 49),
(75.00, 75.00, '2024-03-21 19:30:00', '2024-03-21 19:30:00', 'APU-027', 'Descuento apuesta TCK-APU-027', 6, 2, 5, 3, 51),
(100.00, 100.00, '2024-04-16 20:30:00', '2024-04-16 20:30:00', 'APU-028', 'Descuento apuesta TCK-APU-028', 6, 2, 5, 3, 52),
(55.00, 55.00, '2024-03-10 17:30:00', '2024-03-10 17:30:00', 'APU-029', 'Descuento apuesta TCK-APU-029', 6, 2, 5, 3, 53),
(30.00, 30.00, '2024-06-16 17:00:00', '2024-06-16 17:00:00', 'APU-030', 'Descuento apuesta TCK-APU-030', 6, 2, 5, 3, 54),
(60.00, 60.00, '2024-06-10 12:00:00', '2024-06-10 12:00:00', 'APU-031', 'Descuento apuesta TCK-APU-031', 6, 2, 5, 1, 19),
(120.00, 120.00, '2024-06-11 13:30:00', '2024-06-11 13:30:00', 'APU-032', 'Descuento apuesta TCK-APU-032', 6, 2, 3, 1, 20),
(95.00, 95.00, '2024-06-12 15:00:00', '2024-06-12 15:00:00', 'APU-033', 'Descuento apuesta TCK-APU-033', 6, 2, 5, 1, 21),
(70.00, 70.00, '2024-06-13 10:30:00', '2024-06-13 10:30:00', 'APU-034', 'Descuento apuesta TCK-APU-034', 6, 2, 4, 1, 23),
(150.00, 150.00, '2024-06-14 16:45:00', '2024-06-14 16:45:00', 'APU-035', 'Descuento apuesta TCK-APU-035', 6, 2, 1, 1, 24),
(45.00, 45.00, '2024-06-15 11:20:00', '2024-06-15 11:20:00', 'APU-036', 'Descuento apuesta TCK-APU-036', 6, 2, 4, 1, 25),
(80.00, 80.00, '2024-06-16 09:40:00', '2024-06-16 09:40:00', 'APU-037', 'Descuento apuesta TCK-APU-037', 6, 2, 1, 1, 26),
(35.00, 35.00, '2024-06-17 14:10:00', '2024-06-17 14:10:00', 'APU-038', 'Descuento apuesta TCK-APU-038', 6, 2, 4, 1, 27),
(100.00, 100.00, '2024-06-18 18:30:00', '2024-06-18 18:30:00', 'APU-039', 'Descuento apuesta TCK-APU-039', 6, 2, 1, 1, 28),
(50.00, 50.00, '2024-06-19 12:15:00', '2024-06-19 12:15:00', 'APU-040', 'Descuento apuesta TCK-APU-040', 6, 2, 4, 1, 29),
(18.00, 18.00, '2024-05-20 11:07:00', '2024-05-20 11:07:00', 'APU-041', 'Descuento apuesta TCK-AUT-001', 6, 2, 5, 1, 1),
(20.00, 20.00, '2024-05-21 12:14:00', '2024-05-21 12:14:00', 'APU-042', 'Descuento apuesta TCK-AUT-002', 6, 2, 1, 1, 1),
(22.00, 22.00, '2024-05-22 13:21:00', '2024-05-22 13:21:00', 'APU-043', 'Descuento apuesta TCK-AUT-003', 6, 2, 3, 1, 1),
(25.00, 25.00, '2024-05-23 14:28:00', '2024-05-23 14:28:00', 'APU-044', 'Descuento apuesta TCK-AUT-004', 6, 2, 4, 1, 1),
(28.00, 28.00, '2024-05-24 15:35:00', '2024-05-24 15:35:00', 'APU-045', 'Descuento apuesta TCK-AUT-005', 6, 2, 5, 1, 1),
(30.00, 30.00, '2024-05-25 16:42:00', '2024-05-25 16:42:00', 'APU-046', 'Descuento apuesta TCK-AUT-006', 6, 2, 1, 1, 1),
(35.00, 35.00, '2024-05-26 17:49:00', '2024-05-26 17:49:00', 'APU-047', 'Descuento apuesta TCK-AUT-007', 6, 2, 3, 1, 1),
(40.00, 40.00, '2024-05-27 18:56:00', '2024-05-27 18:56:00', 'APU-048', 'Descuento apuesta TCK-AUT-008', 6, 2, 4, 1, 1),
(45.00, 45.00, '2024-05-28 19:03:00', '2024-05-28 19:03:00', 'APU-049', 'Descuento apuesta TCK-AUT-009', 6, 2, 5, 1, 1),
(12.00, 12.00, '2024-05-29 10:10:00', '2024-05-29 10:10:00', 'APU-050', 'Descuento apuesta TCK-AUT-010', 6, 2, 3, 1, 2),
(15.00, 15.00, '2024-05-30 11:17:00', '2024-05-30 11:17:00', 'APU-051', 'Descuento apuesta TCK-AUT-011', 6, 2, 4, 1, 2),
(18.00, 18.00, '2024-05-31 12:24:00', '2024-05-31 12:24:00', 'APU-052', 'Descuento apuesta TCK-AUT-012', 6, 2, 5, 1, 2),
(20.00, 20.00, '2024-06-01 13:31:00', '2024-06-01 13:31:00', 'APU-053', 'Descuento apuesta TCK-AUT-013', 6, 2, 1, 1, 2),
(22.00, 22.00, '2024-06-02 14:38:00', '2024-06-02 14:38:00', 'APU-054', 'Descuento apuesta TCK-AUT-014', 6, 2, 3, 1, 2),
(25.00, 25.00, '2024-06-03 15:45:00', '2024-06-03 15:45:00', 'APU-055', 'Descuento apuesta TCK-AUT-015', 6, 2, 4, 1, 2),
(28.00, 28.00, '2024-06-04 16:52:00', '2024-06-04 16:52:00', 'APU-056', 'Descuento apuesta TCK-AUT-016', 6, 2, 5, 1, 2),
(30.00, 30.00, '2024-06-05 17:59:00', '2024-06-05 17:59:00', 'APU-057', 'Descuento apuesta TCK-AUT-017', 6, 2, 1, 1, 2),
(35.00, 35.00, '2024-06-06 18:06:00', '2024-06-06 18:06:00', 'APU-058', 'Descuento apuesta TCK-AUT-018', 6, 2, 3, 1, 2),
(45.00, 45.00, '2024-06-07 19:13:00', '2024-06-07 19:13:00', 'APU-059', 'Descuento apuesta TCK-AUT-019', 6, 2, 5, 1, 3),
(50.00, 50.00, '2024-06-08 10:20:00', '2024-06-08 10:20:00', 'APU-060', 'Descuento apuesta TCK-AUT-020', 6, 2, 1, 1, 3),
(12.00, 12.00, '2024-06-09 11:27:00', '2024-06-09 11:27:00', 'APU-061', 'Descuento apuesta TCK-AUT-021', 6, 2, 3, 1, 3),
(15.00, 15.00, '2024-06-10 12:34:00', '2024-06-10 12:34:00', 'APU-062', 'Descuento apuesta TCK-AUT-022', 6, 2, 4, 1, 3),
(18.00, 18.00, '2024-06-11 13:41:00', '2024-06-11 13:41:00', 'APU-063', 'Descuento apuesta TCK-AUT-023', 6, 2, 5, 1, 3),
(20.00, 20.00, '2024-06-12 14:48:00', '2024-06-12 14:48:00', 'APU-064', 'Descuento apuesta TCK-AUT-024', 6, 2, 1, 1, 3),
(22.00, 22.00, '2024-06-13 15:55:00', '2024-06-13 15:55:00', 'APU-065', 'Descuento apuesta TCK-AUT-025', 6, 2, 3, 1, 3),
(25.00, 25.00, '2024-06-14 16:02:00', '2024-06-14 16:02:00', 'APU-066', 'Descuento apuesta TCK-AUT-026', 6, 2, 4, 1, 3),
(28.00, 28.00, '2024-06-15 17:09:00', '2024-06-15 17:09:00', 'APU-067', 'Descuento apuesta TCK-AUT-027', 6, 2, 5, 1, 3),
(35.00, 35.00, '2024-06-16 18:16:00', '2024-06-16 18:16:00', 'APU-068', 'Descuento apuesta TCK-AUT-028', 6, 2, 3, 1, 4),
(40.00, 40.00, '2024-06-17 19:23:00', '2024-06-17 19:23:00', 'APU-069', 'Descuento apuesta TCK-AUT-029', 6, 2, 4, 1, 4),
(45.00, 45.00, '2024-06-18 10:30:00', '2024-06-18 10:30:00', 'APU-070', 'Descuento apuesta TCK-AUT-030', 6, 2, 5, 1, 4),
(50.00, 50.00, '2024-06-19 11:37:00', '2024-06-19 11:37:00', 'APU-071', 'Descuento apuesta TCK-AUT-031', 6, 2, 1, 1, 4),
(12.00, 12.00, '2024-06-20 12:44:00', '2024-06-20 12:44:00', 'APU-072', 'Descuento apuesta TCK-AUT-032', 6, 2, 3, 1, 4),
(15.00, 15.00, '2024-06-21 13:51:00', '2024-06-21 13:51:00', 'APU-073', 'Descuento apuesta TCK-AUT-033', 6, 2, 4, 1, 4),
(18.00, 18.00, '2024-06-22 14:58:00', '2024-06-22 14:58:00', 'APU-074', 'Descuento apuesta TCK-AUT-034', 6, 2, 5, 1, 4),
(20.00, 20.00, '2024-06-23 15:05:00', '2024-06-23 15:05:00', 'APU-075', 'Descuento apuesta TCK-AUT-035', 6, 2, 1, 1, 4),
(22.00, 22.00, '2024-05-20 16:12:00', '2024-05-20 16:12:00', 'APU-076', 'Descuento apuesta TCK-AUT-036', 6, 2, 3, 1, 4),
(28.00, 28.00, '2024-05-21 17:19:00', '2024-05-21 17:19:00', 'APU-077', 'Descuento apuesta TCK-AUT-037', 6, 2, 5, 1, 5),
(30.00, 30.00, '2024-05-22 18:26:00', '2024-05-22 18:26:00', 'APU-078', 'Descuento apuesta TCK-AUT-038', 6, 2, 1, 1, 5),
(35.00, 35.00, '2024-05-23 19:33:00', '2024-05-23 19:33:00', 'APU-079', 'Descuento apuesta TCK-AUT-039', 6, 2, 3, 1, 5),
(40.00, 40.00, '2024-05-24 10:40:00', '2024-05-24 10:40:00', 'APU-080', 'Descuento apuesta TCK-AUT-040', 6, 2, 4, 1, 5),
(45.00, 45.00, '2024-05-25 11:47:00', '2024-05-25 11:47:00', 'APU-081', 'Descuento apuesta TCK-AUT-041', 6, 2, 5, 1, 5),
(50.00, 50.00, '2024-05-26 12:54:00', '2024-05-26 12:54:00', 'APU-082', 'Descuento apuesta TCK-AUT-042', 6, 2, 1, 1, 5),
(12.00, 12.00, '2024-05-27 13:01:00', '2024-05-27 13:01:00', 'APU-083', 'Descuento apuesta TCK-AUT-043', 6, 2, 3, 1, 5),
(15.00, 15.00, '2024-05-28 14:08:00', '2024-05-28 14:08:00', 'APU-084', 'Descuento apuesta TCK-AUT-044', 6, 2, 4, 1, 5),
(18.00, 18.00, '2024-05-29 15:15:00', '2024-05-29 15:15:00', 'APU-085', 'Descuento apuesta TCK-AUT-045', 6, 2, 5, 1, 5),
(22.00, 22.00, '2024-05-30 16:22:00', '2024-05-30 16:22:00', 'APU-086', 'Descuento apuesta TCK-AUT-046', 6, 2, 3, 1, 6),
(25.00, 25.00, '2024-05-31 17:29:00', '2024-05-31 17:29:00', 'APU-087', 'Descuento apuesta TCK-AUT-047', 6, 2, 4, 1, 6),
(28.00, 28.00, '2024-06-01 18:36:00', '2024-06-01 18:36:00', 'APU-088', 'Descuento apuesta TCK-AUT-048', 6, 2, 5, 1, 6),
(30.00, 30.00, '2024-06-02 19:43:00', '2024-06-02 19:43:00', 'APU-089', 'Descuento apuesta TCK-AUT-049', 6, 2, 1, 1, 6),
(35.00, 35.00, '2024-06-03 10:50:00', '2024-06-03 10:50:00', 'APU-090', 'Descuento apuesta TCK-AUT-050', 6, 2, 3, 1, 6),
(10.00, 10.00, '2024-06-04 11:57:00', '2024-06-04 11:57:00', 'APU-091', 'Descuento apuesta TCK-AUT-051', 6, 2, 4, 1, 6),
(10.00, 10.00, '2024-06-05 12:04:00', '2024-06-05 12:04:00', 'APU-092', 'Descuento apuesta TCK-AUT-052', 6, 2, 5, 1, 6),
(10.00, 10.00, '2024-06-06 13:11:00', '2024-06-06 13:11:00', 'APU-093', 'Descuento apuesta TCK-AUT-053', 6, 2, 1, 1, 6),
(15.00, 15.00, '2024-06-07 14:18:00', '2024-06-07 14:18:00', 'APU-094', 'Descuento apuesta TCK-AUT-054', 6, 2, 4, 1, 7),
(18.00, 18.00, '2024-06-08 15:25:00', '2024-06-08 15:25:00', 'APU-095', 'Descuento apuesta TCK-AUT-055', 6, 2, 5, 1, 7),
(20.00, 20.00, '2024-06-09 16:32:00', '2024-06-09 16:32:00', 'APU-096', 'Descuento apuesta TCK-AUT-056', 6, 2, 1, 1, 7),
(22.00, 22.00, '2024-06-10 17:39:00', '2024-06-10 17:39:00', 'APU-097', 'Descuento apuesta TCK-AUT-057', 6, 2, 3, 1, 7),
(25.00, 25.00, '2024-06-11 18:46:00', '2024-06-11 18:46:00', 'APU-098', 'Descuento apuesta TCK-AUT-058', 6, 2, 4, 1, 7),
(28.00, 28.00, '2024-06-12 19:53:00', '2024-06-12 19:53:00', 'APU-099', 'Descuento apuesta TCK-AUT-059', 6, 2, 5, 1, 7),
(30.00, 30.00, '2024-06-13 10:00:00', '2024-06-13 10:00:00', 'APU-100', 'Descuento apuesta TCK-AUT-060', 6, 2, 1, 1, 7),
(40.00, 40.00, '2024-06-14 11:07:00', '2024-06-14 11:07:00', 'APU-101', 'Descuento apuesta TCK-AUT-061', 6, 2, 4, 1, 8),
(45.00, 45.00, '2024-06-15 12:14:00', '2024-06-15 12:14:00', 'APU-102', 'Descuento apuesta TCK-AUT-062', 6, 2, 5, 1, 8),
(50.00, 50.00, '2024-06-16 13:21:00', '2024-06-16 13:21:00', 'APU-103', 'Descuento apuesta TCK-AUT-063', 6, 2, 1, 1, 8),
(12.00, 12.00, '2024-06-17 14:28:00', '2024-06-17 14:28:00', 'APU-104', 'Descuento apuesta TCK-AUT-064', 6, 2, 3, 1, 8),
(15.00, 15.00, '2024-06-18 15:35:00', '2024-06-18 15:35:00', 'APU-105', 'Descuento apuesta TCK-AUT-065', 6, 2, 4, 1, 8),
(18.00, 18.00, '2024-06-19 16:42:00', '2024-06-19 16:42:00', 'APU-106', 'Descuento apuesta TCK-AUT-066', 6, 2, 5, 1, 8),
(20.00, 20.00, '2024-06-20 17:49:00', '2024-06-20 17:49:00', 'APU-107', 'Descuento apuesta TCK-AUT-067', 6, 2, 1, 1, 8),
(25.00, 25.00, '2024-06-21 18:56:00', '2024-06-21 18:56:00', 'APU-108', 'Descuento apuesta TCK-AUT-068', 6, 2, 4, 1, 9),
(28.00, 28.00, '2024-06-22 19:03:00', '2024-06-22 19:03:00', 'APU-109', 'Descuento apuesta TCK-AUT-069', 6, 2, 5, 1, 9),
(30.00, 30.00, '2024-06-23 10:10:00', '2024-06-23 10:10:00', 'APU-110', 'Descuento apuesta TCK-AUT-070', 6, 2, 1, 1, 9),
(35.00, 35.00, '2024-05-20 11:17:00', '2024-05-20 11:17:00', 'APU-111', 'Descuento apuesta TCK-AUT-071', 6, 2, 3, 1, 9),
(40.00, 40.00, '2024-05-21 12:24:00', '2024-05-21 12:24:00', 'APU-112', 'Descuento apuesta TCK-AUT-072', 6, 2, 4, 1, 9),
(45.00, 45.00, '2024-05-22 13:31:00', '2024-05-22 13:31:00', 'APU-113', 'Descuento apuesta TCK-AUT-073', 6, 2, 5, 1, 9),
(50.00, 50.00, '2024-05-23 14:38:00', '2024-05-23 14:38:00', 'APU-114', 'Descuento apuesta TCK-AUT-074', 6, 2, 1, 1, 9),
(15.00, 15.00, '2024-05-24 15:45:00', '2024-05-24 15:45:00', 'APU-115', 'Descuento apuesta TCK-AUT-075', 6, 2, 4, 1, 10),
(18.00, 18.00, '2024-05-25 16:52:00', '2024-05-25 16:52:00', 'APU-116', 'Descuento apuesta TCK-AUT-076', 6, 2, 5, 1, 10),
(20.00, 20.00, '2024-05-26 17:59:00', '2024-05-26 17:59:00', 'APU-117', 'Descuento apuesta TCK-AUT-077', 6, 2, 1, 1, 10),
(22.00, 22.00, '2024-05-27 18:06:00', '2024-05-27 18:06:00', 'APU-118', 'Descuento apuesta TCK-AUT-078', 6, 2, 3, 1, 10),
(25.00, 25.00, '2024-05-28 19:13:00', '2024-05-28 19:13:00', 'APU-119', 'Descuento apuesta TCK-AUT-079', 6, 2, 4, 1, 10),
(28.00, 28.00, '2024-05-29 10:20:00', '2024-05-29 10:20:00', 'APU-120', 'Descuento apuesta TCK-AUT-080', 6, 2, 5, 1, 10),
(30.00, 30.00, '2024-05-30 11:27:00', '2024-05-30 11:27:00', 'APU-121', 'Descuento apuesta TCK-AUT-081', 6, 2, 1, 1, 10),
(40.00, 40.00, '2024-05-31 12:34:00', '2024-05-31 12:34:00', 'APU-122', 'Descuento apuesta TCK-AUT-082', 6, 2, 4, 1, 11),
(45.00, 45.00, '2024-06-01 13:41:00', '2024-06-01 13:41:00', 'APU-123', 'Descuento apuesta TCK-AUT-083', 6, 2, 5, 1, 11),
(50.00, 50.00, '2024-06-02 14:48:00', '2024-06-02 14:48:00', 'APU-124', 'Descuento apuesta TCK-AUT-084', 6, 2, 1, 1, 11),
(12.00, 12.00, '2024-06-03 15:55:00', '2024-06-03 15:55:00', 'APU-125', 'Descuento apuesta TCK-AUT-085', 6, 2, 3, 1, 11),
(15.00, 15.00, '2024-06-04 16:02:00', '2024-06-04 16:02:00', 'APU-126', 'Descuento apuesta TCK-AUT-086', 6, 2, 4, 1, 11),
(18.00, 18.00, '2024-06-05 17:09:00', '2024-06-05 17:09:00', 'APU-127', 'Descuento apuesta TCK-AUT-087', 6, 2, 5, 1, 11),
(20.00, 20.00, '2024-06-06 18:16:00', '2024-06-06 18:16:00', 'APU-128', 'Descuento apuesta TCK-AUT-088', 6, 2, 1, 1, 11),
(25.00, 25.00, '2024-06-07 19:23:00', '2024-06-07 19:23:00', 'APU-129', 'Descuento apuesta TCK-AUT-089', 6, 2, 4, 1, 12),
(28.00, 28.00, '2024-06-08 10:30:00', '2024-06-08 10:30:00', 'APU-130', 'Descuento apuesta TCK-AUT-090', 6, 2, 5, 1, 12),
(30.00, 30.00, '2024-06-09 11:37:00', '2024-06-09 11:37:00', 'APU-131', 'Descuento apuesta TCK-AUT-091', 6, 2, 1, 1, 12),
(35.00, 35.00, '2024-06-10 12:44:00', '2024-06-10 12:44:00', 'APU-132', 'Descuento apuesta TCK-AUT-092', 6, 2, 3, 1, 12),
(40.00, 40.00, '2024-06-11 13:51:00', '2024-06-11 13:51:00', 'APU-133', 'Descuento apuesta TCK-AUT-093', 6, 2, 4, 1, 12),
(45.00, 45.00, '2024-06-12 14:58:00', '2024-06-12 14:58:00', 'APU-134', 'Descuento apuesta TCK-AUT-094', 6, 2, 5, 1, 12),
(50.00, 50.00, '2024-06-13 15:05:00', '2024-06-13 15:05:00', 'APU-135', 'Descuento apuesta TCK-AUT-095', 6, 2, 1, 1, 12),
(15.00, 15.00, '2024-06-14 16:12:00', '2024-06-14 16:12:00', 'APU-136', 'Descuento apuesta TCK-AUT-096', 6, 2, 4, 1, 13),
(18.00, 18.00, '2024-06-15 17:19:00', '2024-06-15 17:19:00', 'APU-137', 'Descuento apuesta TCK-AUT-097', 6, 2, 5, 1, 13),
(20.00, 20.00, '2024-06-16 18:26:00', '2024-06-16 18:26:00', 'APU-138', 'Descuento apuesta TCK-AUT-098', 6, 2, 1, 1, 13),
(22.00, 22.00, '2024-06-17 19:33:00', '2024-06-17 19:33:00', 'APU-139', 'Descuento apuesta TCK-AUT-099', 6, 2, 3, 1, 13),
(25.00, 25.00, '2024-06-18 10:40:00', '2024-06-18 10:40:00', 'APU-140', 'Descuento apuesta TCK-AUT-100', 6, 2, 4, 1, 13),
(28.00, 28.00, '2024-06-19 11:47:00', '2024-06-19 11:47:00', 'APU-141', 'Descuento apuesta TCK-AUT-101', 6, 2, 5, 1, 13),
(30.00, 30.00, '2024-06-20 12:54:00', '2024-06-20 12:54:00', 'APU-142', 'Descuento apuesta TCK-AUT-102', 6, 2, 1, 1, 13),
(40.00, 40.00, '2024-06-21 13:01:00', '2024-06-21 13:01:00', 'APU-143', 'Descuento apuesta TCK-AUT-103', 6, 2, 4, 1, 14),
(45.00, 45.00, '2024-06-22 14:08:00', '2024-06-22 14:08:00', 'APU-144', 'Descuento apuesta TCK-AUT-104', 6, 2, 5, 1, 14),
(50.00, 50.00, '2024-06-23 15:15:00', '2024-06-23 15:15:00', 'APU-145', 'Descuento apuesta TCK-AUT-105', 6, 2, 1, 1, 14),
(12.00, 12.00, '2024-05-20 16:22:00', '2024-05-20 16:22:00', 'APU-146', 'Descuento apuesta TCK-AUT-106', 6, 2, 3, 1, 14),
(15.00, 15.00, '2024-05-21 17:29:00', '2024-05-21 17:29:00', 'APU-147', 'Descuento apuesta TCK-AUT-107', 6, 2, 4, 1, 14),
(18.00, 18.00, '2024-05-22 18:36:00', '2024-05-22 18:36:00', 'APU-148', 'Descuento apuesta TCK-AUT-108', 6, 2, 5, 1, 14),
(20.00, 20.00, '2024-05-23 19:43:00', '2024-05-23 19:43:00', 'APU-149', 'Descuento apuesta TCK-AUT-109', 6, 2, 1, 1, 14),
(25.00, 25.00, '2024-05-24 10:50:00', '2024-05-24 10:50:00', 'APU-150', 'Descuento apuesta TCK-AUT-110', 6, 2, 4, 1, 15),
(28.00, 28.00, '2024-05-25 11:57:00', '2024-05-25 11:57:00', 'APU-151', 'Descuento apuesta TCK-AUT-111', 6, 2, 5, 1, 15),
(30.00, 30.00, '2024-05-26 12:04:00', '2024-05-26 12:04:00', 'APU-152', 'Descuento apuesta TCK-AUT-112', 6, 2, 1, 1, 15),
(35.00, 35.00, '2024-05-27 13:11:00', '2024-05-27 13:11:00', 'APU-153', 'Descuento apuesta TCK-AUT-113', 6, 2, 3, 1, 15),
(40.00, 40.00, '2024-05-28 14:18:00', '2024-05-28 14:18:00', 'APU-154', 'Descuento apuesta TCK-AUT-114', 6, 2, 4, 1, 15),
(45.00, 45.00, '2024-05-29 15:25:00', '2024-05-29 15:25:00', 'APU-155', 'Descuento apuesta TCK-AUT-115', 6, 2, 5, 1, 15),
(50.00, 50.00, '2024-05-30 16:32:00', '2024-05-30 16:32:00', 'APU-156', 'Descuento apuesta TCK-AUT-116', 6, 2, 1, 1, 15),
(15.00, 15.00, '2024-05-31 17:39:00', '2024-05-31 17:39:00', 'APU-157', 'Descuento apuesta TCK-AUT-117', 6, 2, 4, 1, 16),
(18.00, 18.00, '2024-06-01 18:46:00', '2024-06-01 18:46:00', 'APU-158', 'Descuento apuesta TCK-AUT-118', 6, 2, 5, 1, 16),
(20.00, 20.00, '2024-06-02 19:53:00', '2024-06-02 19:53:00', 'APU-159', 'Descuento apuesta TCK-AUT-119', 6, 2, 1, 1, 16),
(22.00, 22.00, '2024-06-03 10:00:00', '2024-06-03 10:00:00', 'APU-160', 'Descuento apuesta TCK-AUT-120', 6, 2, 3, 1, 16),
(28.00, 28.00, '2024-06-04 11:07:00', '2024-06-04 11:07:00', 'APU-161', 'Descuento apuesta TCK-AUT-121', 6, 2, 5, 1, 17),
(30.00, 30.00, '2024-06-05 12:14:00', '2024-06-05 12:14:00', 'APU-162', 'Descuento apuesta TCK-AUT-122', 6, 2, 1, 1, 17),
(35.00, 35.00, '2024-06-06 13:21:00', '2024-06-06 13:21:00', 'APU-163', 'Descuento apuesta TCK-AUT-123', 6, 2, 3, 1, 17),
(40.00, 40.00, '2024-06-07 14:28:00', '2024-06-07 14:28:00', 'APU-164', 'Descuento apuesta TCK-AUT-124', 6, 2, 4, 1, 17),
(50.00, 50.00, '2024-06-08 15:35:00', '2024-06-08 15:35:00', 'APU-165', 'Descuento apuesta TCK-AUT-125', 6, 2, 1, 1, 18),
(12.00, 12.00, '2024-06-09 16:42:00', '2024-06-09 16:42:00', 'APU-166', 'Descuento apuesta TCK-AUT-126', 6, 2, 3, 1, 18),
(15.00, 15.00, '2024-06-10 17:49:00', '2024-06-10 17:49:00', 'APU-167', 'Descuento apuesta TCK-AUT-127', 6, 2, 4, 1, 18),
(18.00, 18.00, '2024-06-11 18:56:00', '2024-06-11 18:56:00', 'APU-168', 'Descuento apuesta TCK-AUT-128', 6, 2, 5, 1, 18),
(22.00, 22.00, '2024-06-12 19:03:00', '2024-06-12 19:03:00', 'APU-169', 'Descuento apuesta TCK-AUT-129', 6, 2, 3, 1, 19),
(25.00, 25.00, '2024-06-13 10:10:00', '2024-06-13 10:10:00', 'APU-170', 'Descuento apuesta TCK-AUT-130', 6, 2, 4, 1, 19),
(28.00, 28.00, '2024-06-14 11:17:00', '2024-06-14 11:17:00', 'APU-171', 'Descuento apuesta TCK-AUT-131', 6, 2, 5, 1, 19),
(30.00, 30.00, '2024-06-15 12:24:00', '2024-06-15 12:24:00', 'APU-172', 'Descuento apuesta TCK-AUT-132', 6, 2, 1, 1, 19),
(40.00, 40.00, '2024-06-16 13:31:00', '2024-06-16 13:31:00', 'APU-173', 'Descuento apuesta TCK-AUT-133', 6, 2, 4, 1, 20),
(45.00, 45.00, '2024-06-17 14:38:00', '2024-06-17 14:38:00', 'APU-174', 'Descuento apuesta TCK-AUT-134', 6, 2, 5, 1, 20),
(50.00, 50.00, '2024-06-18 15:45:00', '2024-06-18 15:45:00', 'APU-175', 'Descuento apuesta TCK-AUT-135', 6, 2, 1, 1, 20),
(12.00, 12.00, '2024-06-19 16:52:00', '2024-06-19 16:52:00', 'APU-176', 'Descuento apuesta TCK-AUT-136', 6, 2, 3, 1, 20),
(18.00, 18.00, '2024-06-20 17:59:00', '2024-06-20 17:59:00', 'APU-177', 'Descuento apuesta TCK-AUT-137', 6, 2, 5, 1, 21),
(20.00, 20.00, '2024-06-21 18:06:00', '2024-06-21 18:06:00', 'APU-178', 'Descuento apuesta TCK-AUT-138', 6, 2, 1, 1, 21),
(22.00, 22.00, '2024-06-22 19:13:00', '2024-06-22 19:13:00', 'APU-179', 'Descuento apuesta TCK-AUT-139', 6, 2, 3, 1, 21),
(25.00, 25.00, '2024-06-23 10:20:00', '2024-06-23 10:20:00', 'APU-180', 'Descuento apuesta TCK-AUT-140', 6, 2, 4, 1, 21),
(30.00, 30.00, '2024-05-20 11:27:00', '2024-05-20 11:27:00', 'APU-181', 'Descuento apuesta TCK-AUT-141', 6, 2, 1, 1, 22),
(35.00, 35.00, '2024-05-21 12:34:00', '2024-05-21 12:34:00', 'APU-182', 'Descuento apuesta TCK-AUT-142', 6, 2, 3, 1, 22),
(40.00, 40.00, '2024-05-22 13:41:00', '2024-05-22 13:41:00', 'APU-183', 'Descuento apuesta TCK-AUT-143', 6, 2, 4, 1, 22),
(45.00, 45.00, '2024-05-23 14:48:00', '2024-05-23 14:48:00', 'APU-184', 'Descuento apuesta TCK-AUT-144', 6, 2, 5, 1, 22),
(12.00, 12.00, '2024-05-24 15:55:00', '2024-05-24 15:55:00', 'APU-185', 'Descuento apuesta TCK-AUT-145', 6, 2, 3, 1, 23),
(15.00, 15.00, '2024-05-25 16:02:00', '2024-05-25 16:02:00', 'APU-186', 'Descuento apuesta TCK-AUT-146', 6, 2, 4, 1, 23),
(18.00, 18.00, '2024-05-26 17:09:00', '2024-05-26 17:09:00', 'APU-187', 'Descuento apuesta TCK-AUT-147', 6, 2, 5, 1, 23),
(20.00, 20.00, '2024-05-27 18:16:00', '2024-05-27 18:16:00', 'APU-188', 'Descuento apuesta TCK-AUT-148', 6, 2, 1, 1, 23),
(25.00, 25.00, '2024-05-28 19:23:00', '2024-05-28 19:23:00', 'APU-189', 'Descuento apuesta TCK-AUT-149', 6, 2, 4, 1, 24),
(28.00, 28.00, '2024-05-29 10:30:00', '2024-05-29 10:30:00', 'APU-190', 'Descuento apuesta TCK-AUT-150', 6, 2, 5, 1, 24),
(30.00, 30.00, '2024-05-30 11:37:00', '2024-05-30 11:37:00', 'APU-191', 'Descuento apuesta TCK-AUT-151', 6, 2, 1, 1, 24),
(35.00, 35.00, '2024-05-31 12:44:00', '2024-05-31 12:44:00', 'APU-192', 'Descuento apuesta TCK-AUT-152', 6, 2, 3, 1, 24),
(45.00, 45.00, '2024-06-01 13:51:00', '2024-06-01 13:51:00', 'APU-193', 'Descuento apuesta TCK-AUT-153', 6, 2, 5, 1, 25),
(50.00, 50.00, '2024-06-02 14:58:00', '2024-06-02 14:58:00', 'APU-194', 'Descuento apuesta TCK-AUT-154', 6, 2, 1, 1, 25),
(12.00, 12.00, '2024-06-03 15:05:00', '2024-06-03 15:05:00', 'APU-195', 'Descuento apuesta TCK-AUT-155', 6, 2, 3, 1, 25),
(15.00, 15.00, '2024-06-04 16:12:00', '2024-06-04 16:12:00', 'APU-196', 'Descuento apuesta TCK-AUT-156', 6, 2, 4, 1, 25),
(20.00, 20.00, '2024-06-05 17:19:00', '2024-06-05 17:19:00', 'APU-197', 'Descuento apuesta TCK-AUT-157', 6, 2, 1, 1, 26),
(22.00, 22.00, '2024-06-06 18:26:00', '2024-06-06 18:26:00', 'APU-198', 'Descuento apuesta TCK-AUT-158', 6, 2, 3, 1, 26),
(25.00, 25.00, '2024-06-07 19:33:00', '2024-06-07 19:33:00', 'APU-199', 'Descuento apuesta TCK-AUT-159', 6, 2, 4, 1, 26),
(28.00, 28.00, '2024-06-08 10:40:00', '2024-06-08 10:40:00', 'APU-200', 'Descuento apuesta TCK-AUT-160', 6, 2, 5, 1, 26),
(35.00, 35.00, '2024-06-09 11:47:00', '2024-06-09 11:47:00', 'APU-201', 'Descuento apuesta TCK-AUT-161', 6, 2, 3, 1, 27),
(40.00, 40.00, '2024-06-10 12:54:00', '2024-06-10 12:54:00', 'APU-202', 'Descuento apuesta TCK-AUT-162', 6, 2, 4, 1, 27),
(45.00, 45.00, '2024-06-11 13:01:00', '2024-06-11 13:01:00', 'APU-203', 'Descuento apuesta TCK-AUT-163', 6, 2, 5, 1, 27),
(50.00, 50.00, '2024-06-12 14:08:00', '2024-06-12 14:08:00', 'APU-204', 'Descuento apuesta TCK-AUT-164', 6, 2, 1, 1, 27),
(15.00, 15.00, '2024-06-13 15:15:00', '2024-06-13 15:15:00', 'APU-205', 'Descuento apuesta TCK-AUT-165', 6, 2, 4, 1, 28),
(18.00, 18.00, '2024-06-14 16:22:00', '2024-06-14 16:22:00', 'APU-206', 'Descuento apuesta TCK-AUT-166', 6, 2, 5, 1, 28),
(20.00, 20.00, '2024-06-15 17:29:00', '2024-06-15 17:29:00', 'APU-207', 'Descuento apuesta TCK-AUT-167', 6, 2, 1, 1, 28),
(22.00, 22.00, '2024-06-16 18:36:00', '2024-06-16 18:36:00', 'APU-208', 'Descuento apuesta TCK-AUT-168', 6, 2, 3, 1, 28),
(28.00, 28.00, '2024-06-17 19:43:00', '2024-06-17 19:43:00', 'APU-209', 'Descuento apuesta TCK-AUT-169', 6, 2, 5, 1, 29),
(30.00, 30.00, '2024-06-18 10:50:00', '2024-06-18 10:50:00', 'APU-210', 'Descuento apuesta TCK-AUT-170', 6, 2, 1, 1, 29),
(35.00, 35.00, '2024-06-19 11:57:00', '2024-06-19 11:57:00', 'APU-211', 'Descuento apuesta TCK-AUT-171', 6, 2, 3, 1, 29),
(40.00, 40.00, '2024-06-20 12:04:00', '2024-06-20 12:04:00', 'APU-212', 'Descuento apuesta TCK-AUT-172', 6, 2, 4, 1, 29),
(50.00, 50.00, '2024-06-21 13:11:00', '2024-06-21 13:11:00', 'APU-213', 'Descuento apuesta TCK-AUT-173', 6, 2, 1, 1, 30),
(12.00, 12.00, '2024-06-22 14:18:00', '2024-06-22 14:18:00', 'APU-214', 'Descuento apuesta TCK-AUT-174', 6, 2, 3, 1, 30),
(15.00, 15.00, '2024-06-23 15:25:00', '2024-06-23 15:25:00', 'APU-215', 'Descuento apuesta TCK-AUT-175', 6, 2, 4, 1, 30),
(18.00, 18.00, '2024-05-20 16:32:00', '2024-05-20 16:32:00', 'APU-216', 'Descuento apuesta TCK-AUT-176', 6, 2, 5, 1, 30),
(20.00, 20.00, '2024-05-21 17:39:00', '2024-05-21 17:39:00', 'APU-217', 'Descuento apuesta TCK-AUT-177', 6, 2, 1, 1, 30),
(25.00, 25.00, '2024-05-22 18:46:00', '2024-05-22 18:46:00', 'APU-218', 'Descuento apuesta TCK-AUT-178', 6, 2, 4, 1, 31),
(28.00, 28.00, '2024-05-23 19:53:00', '2024-05-23 19:53:00', 'APU-219', 'Descuento apuesta TCK-AUT-179', 6, 2, 5, 1, 31),
(30.00, 30.00, '2024-05-24 10:00:00', '2024-05-24 10:00:00', 'APU-220', 'Descuento apuesta TCK-AUT-180', 6, 2, 1, 1, 31),
(35.00, 35.00, '2024-05-25 11:07:00', '2024-05-25 11:07:00', 'APU-221', 'Descuento apuesta TCK-AUT-181', 6, 2, 3, 1, 31),
(40.00, 40.00, '2024-05-26 12:14:00', '2024-05-26 12:14:00', 'APU-222', 'Descuento apuesta TCK-AUT-182', 6, 2, 4, 1, 31),
(50.00, 50.00, '2024-05-27 13:21:00', '2024-05-27 13:21:00', 'APU-223', 'Descuento apuesta TCK-AUT-183', 6, 2, 1, 1, 32),
(12.00, 12.00, '2024-05-28 14:28:00', '2024-05-28 14:28:00', 'APU-224', 'Descuento apuesta TCK-AUT-184', 6, 2, 3, 1, 32),
(15.00, 15.00, '2024-05-29 15:35:00', '2024-05-29 15:35:00', 'APU-225', 'Descuento apuesta TCK-AUT-185', 6, 2, 4, 1, 32),
(18.00, 18.00, '2024-05-30 16:42:00', '2024-05-30 16:42:00', 'APU-226', 'Descuento apuesta TCK-AUT-186', 6, 2, 5, 1, 32),
(20.00, 20.00, '2024-05-31 17:49:00', '2024-05-31 17:49:00', 'APU-227', 'Descuento apuesta TCK-AUT-187', 6, 2, 1, 1, 32),
(25.00, 25.00, '2024-06-01 18:56:00', '2024-06-01 18:56:00', 'APU-228', 'Descuento apuesta TCK-AUT-188', 6, 2, 4, 1, 33),
(28.00, 28.00, '2024-06-02 19:03:00', '2024-06-02 19:03:00', 'APU-229', 'Descuento apuesta TCK-AUT-189', 6, 2, 5, 1, 33),
(30.00, 30.00, '2024-06-03 10:10:00', '2024-06-03 10:10:00', 'APU-230', 'Descuento apuesta TCK-AUT-190', 6, 2, 1, 1, 33),
(35.00, 35.00, '2024-06-04 11:17:00', '2024-06-04 11:17:00', 'APU-231', 'Descuento apuesta TCK-AUT-191', 6, 2, 3, 1, 33),
(40.00, 40.00, '2024-06-05 12:24:00', '2024-06-05 12:24:00', 'APU-232', 'Descuento apuesta TCK-AUT-192', 6, 2, 4, 1, 33),
(50.00, 50.00, '2024-06-06 13:31:00', '2024-06-06 13:31:00', 'APU-233', 'Descuento apuesta TCK-AUT-193', 6, 2, 1, 1, 34),
(12.00, 12.00, '2024-06-07 14:38:00', '2024-06-07 14:38:00', 'APU-234', 'Descuento apuesta TCK-AUT-194', 6, 2, 3, 1, 34),
(15.00, 15.00, '2024-06-08 15:45:00', '2024-06-08 15:45:00', 'APU-235', 'Descuento apuesta TCK-AUT-195', 6, 2, 4, 1, 34),
(18.00, 18.00, '2024-06-09 16:52:00', '2024-06-09 16:52:00', 'APU-236', 'Descuento apuesta TCK-AUT-196', 6, 2, 5, 1, 34),
(20.00, 20.00, '2024-06-10 17:59:00', '2024-06-10 17:59:00', 'APU-237', 'Descuento apuesta TCK-AUT-197', 6, 2, 1, 1, 34),
(25.00, 25.00, '2024-06-11 18:06:00', '2024-06-11 18:06:00', 'APU-238', 'Descuento apuesta TCK-AUT-198', 6, 2, 4, 1, 35),
(28.00, 28.00, '2024-06-12 19:13:00', '2024-06-12 19:13:00', 'APU-239', 'Descuento apuesta TCK-AUT-199', 6, 2, 5, 1, 35),
(30.00, 30.00, '2024-06-13 10:20:00', '2024-06-13 10:20:00', 'APU-240', 'Descuento apuesta TCK-AUT-200', 6, 2, 1, 1, 35),
(35.00, 35.00, '2024-06-14 11:27:00', '2024-06-14 11:27:00', 'APU-241', 'Descuento apuesta TCK-AUT-201', 6, 2, 3, 1, 35),
(40.00, 40.00, '2024-06-15 12:34:00', '2024-06-15 12:34:00', 'APU-242', 'Descuento apuesta TCK-AUT-202', 6, 2, 4, 1, 35),
(50.00, 50.00, '2024-06-16 13:41:00', '2024-06-16 13:41:00', 'APU-243', 'Descuento apuesta TCK-AUT-203', 6, 2, 1, 1, 36),
(12.00, 12.00, '2024-06-17 14:48:00', '2024-06-17 14:48:00', 'APU-244', 'Descuento apuesta TCK-AUT-204', 6, 2, 3, 1, 36),
(15.00, 15.00, '2024-06-18 15:55:00', '2024-06-18 15:55:00', 'APU-245', 'Descuento apuesta TCK-AUT-205', 6, 2, 4, 1, 36),
(20.00, 20.00, '2024-06-19 16:02:00', '2024-06-19 16:02:00', 'APU-246', 'Descuento apuesta TCK-AUT-206', 6, 2, 1, 1, 37),
(22.00, 22.00, '2024-06-20 17:09:00', '2024-06-20 17:09:00', 'APU-247', 'Descuento apuesta TCK-AUT-207', 6, 2, 3, 1, 37),
(25.00, 25.00, '2024-06-21 18:16:00', '2024-06-21 18:16:00', 'APU-248', 'Descuento apuesta TCK-AUT-208', 6, 2, 4, 1, 37),
(30.00, 30.00, '2024-06-22 19:23:00', '2024-06-22 19:23:00', 'APU-249', 'Descuento apuesta TCK-AUT-209', 6, 2, 1, 1, 38),
(35.00, 35.00, '2024-06-23 10:30:00', '2024-06-23 10:30:00', 'APU-250', 'Descuento apuesta TCK-AUT-210', 6, 2, 3, 1, 38),
(40.00, 40.00, '2024-05-20 11:37:00', '2024-05-20 11:37:00', 'APU-251', 'Descuento apuesta TCK-AUT-211', 6, 2, 4, 1, 38),
(50.00, 50.00, '2024-05-21 12:44:00', '2024-05-21 12:44:00', 'APU-252', 'Descuento apuesta TCK-AUT-212', 6, 2, 1, 1, 39),
(12.00, 12.00, '2024-05-22 13:51:00', '2024-05-22 13:51:00', 'APU-253', 'Descuento apuesta TCK-AUT-213', 6, 2, 3, 1, 39),
(15.00, 15.00, '2024-05-23 14:58:00', '2024-05-23 14:58:00', 'APU-254', 'Descuento apuesta TCK-AUT-214', 6, 2, 4, 1, 39),
(20.00, 20.00, '2024-05-24 15:05:00', '2024-05-24 15:05:00', 'APU-255', 'Descuento apuesta TCK-AUT-215', 6, 2, 1, 1, 40),
(22.00, 22.00, '2024-05-25 16:12:00', '2024-05-25 16:12:00', 'APU-256', 'Descuento apuesta TCK-AUT-216', 6, 2, 3, 1, 40),
(25.00, 25.00, '2024-05-26 17:19:00', '2024-05-26 17:19:00', 'APU-257', 'Descuento apuesta TCK-AUT-217', 6, 2, 4, 1, 40),
(12.00, 12.00, '2024-05-27 18:26:00', '2024-05-27 18:26:00', 'APU-258', 'Descuento apuesta TCK-AUT-218', 6, 2, 6, 2, 41),
(15.00, 15.00, '2024-05-28 19:33:00', '2024-05-28 19:33:00', 'APU-259', 'Descuento apuesta TCK-AUT-219', 6, 2, 5, 2, 41),
(20.00, 20.00, '2024-05-29 10:40:00', '2024-05-29 10:40:00', 'APU-260', 'Descuento apuesta TCK-AUT-220', 6, 2, 5, 2, 42),
(25.00, 25.00, '2024-05-30 11:47:00', '2024-05-30 11:47:00', 'APU-261', 'Descuento apuesta TCK-AUT-221', 6, 2, 6, 2, 42),
(8.00, 8.00, '2024-05-31 12:54:00', '2024-05-31 12:54:00', 'APU-262', 'Descuento apuesta TCK-AUT-222', 6, 2, 6, 2, 43),
(10.00, 10.00, '2024-06-01 13:01:00', '2024-06-01 13:01:00', 'APU-263', 'Descuento apuesta TCK-AUT-223', 6, 2, 5, 2, 43),
(15.00, 15.00, '2024-06-02 14:08:00', '2024-06-02 14:08:00', 'APU-264', 'Descuento apuesta TCK-AUT-224', 6, 2, 5, 2, 44),
(18.00, 18.00, '2024-06-03 15:15:00', '2024-06-03 15:15:00', 'APU-265', 'Descuento apuesta TCK-AUT-225', 6, 2, 6, 2, 44),
(25.00, 25.00, '2024-06-04 16:22:00', '2024-06-04 16:22:00', 'APU-266', 'Descuento apuesta TCK-AUT-226', 6, 2, 6, 2, 45),
(5.00, 5.00, '2024-06-05 17:29:00', '2024-06-05 17:29:00', 'APU-267', 'Descuento apuesta TCK-AUT-227', 6, 2, 5, 2, 45),
(10.00, 10.00, '2024-06-06 18:36:00', '2024-06-06 18:36:00', 'APU-268', 'Descuento apuesta TCK-AUT-228', 6, 2, 5, 2, 46),
(12.00, 12.00, '2024-06-07 19:43:00', '2024-06-07 19:43:00', 'APU-269', 'Descuento apuesta TCK-AUT-229', 6, 2, 6, 2, 46),
(18.00, 18.00, '2024-06-08 10:50:00', '2024-06-08 10:50:00', 'APU-270', 'Descuento apuesta TCK-AUT-230', 6, 2, 6, 2, 47),
(20.00, 20.00, '2024-06-09 11:57:00', '2024-06-09 11:57:00', 'APU-271', 'Descuento apuesta TCK-AUT-231', 6, 2, 5, 2, 47),
(25.00, 25.00, '2024-06-10 12:04:00', '2024-06-10 12:04:00', 'APU-272', 'Descuento apuesta TCK-AUT-232', 6, 2, 6, 2, 47),
(8.00, 8.00, '2024-06-11 13:11:00', '2024-06-11 13:11:00', 'APU-273', 'Descuento apuesta TCK-AUT-233', 6, 2, 6, 2, 48),
(10.00, 10.00, '2024-06-12 14:18:00', '2024-06-12 14:18:00', 'APU-274', 'Descuento apuesta TCK-AUT-234', 6, 2, 5, 2, 48),
(12.00, 12.00, '2024-06-13 15:25:00', '2024-06-13 15:25:00', 'APU-275', 'Descuento apuesta TCK-AUT-235', 6, 2, 6, 2, 48),
(18.00, 18.00, '2024-06-14 16:32:00', '2024-06-14 16:32:00', 'APU-276', 'Descuento apuesta TCK-AUT-236', 6, 2, 6, 3, 49),
(20.00, 20.00, '2024-06-15 17:39:00', '2024-06-15 17:39:00', 'APU-277', 'Descuento apuesta TCK-AUT-237', 6, 2, 5, 3, 49),
(5.00, 5.00, '2024-06-16 18:46:00', '2024-06-16 18:46:00', 'APU-278', 'Descuento apuesta TCK-AUT-238', 6, 2, 5, 3, 50),
(8.00, 8.00, '2024-06-17 19:53:00', '2024-06-17 19:53:00', 'APU-279', 'Descuento apuesta TCK-AUT-239', 6, 2, 6, 3, 50),
(12.00, 12.00, '2024-06-18 10:00:00', '2024-06-18 10:00:00', 'APU-280', 'Descuento apuesta TCK-AUT-240', 6, 2, 6, 3, 51),
(15.00, 15.00, '2024-06-19 11:07:00', '2024-06-19 11:07:00', 'APU-281', 'Descuento apuesta TCK-AUT-241', 6, 2, 5, 3, 51),
(20.00, 20.00, '2024-06-20 12:14:00', '2024-06-20 12:14:00', 'APU-282', 'Descuento apuesta TCK-AUT-242', 6, 2, 5, 3, 52),
(25.00, 25.00, '2024-06-21 13:21:00', '2024-06-21 13:21:00', 'APU-283', 'Descuento apuesta TCK-AUT-243', 6, 2, 6, 3, 52),
(8.00, 8.00, '2024-06-22 14:28:00', '2024-06-22 14:28:00', 'APU-284', 'Descuento apuesta TCK-AUT-244', 6, 2, 6, 3, 53),
(10.00, 10.00, '2024-06-23 15:35:00', '2024-06-23 15:35:00', 'APU-285', 'Descuento apuesta TCK-AUT-245', 6, 2, 5, 3, 53),
(15.00, 15.00, '2024-05-20 16:42:00', '2024-05-20 16:42:00', 'APU-286', 'Descuento apuesta TCK-AUT-246', 6, 2, 5, 3, 54),
(18.00, 18.00, '2024-05-21 17:49:00', '2024-05-21 17:49:00', 'APU-287', 'Descuento apuesta TCK-AUT-247', 6, 2, 6, 3, 54),
(25.00, 25.00, '2024-05-22 18:56:00', '2024-05-22 18:56:00', 'APU-288', 'Descuento apuesta TCK-AUT-248', 6, 2, 6, 3, 55),
(5.00, 5.00, '2024-05-23 19:03:00', '2024-05-23 19:03:00', 'APU-289', 'Descuento apuesta TCK-AUT-249', 6, 2, 5, 3, 55),
(8.00, 8.00, '2024-05-24 10:10:00', '2024-05-24 10:10:00', 'APU-290', 'Descuento apuesta TCK-AUT-250', 6, 2, 6, 3, 55),

-- PREMIOS POR APUESTAS GANADAS FALTANTES
(74.00, 74.00, '2024-03-08 02:20:00', '2024-03-08 02:23:00', 'PRE-007', 'Premio apuesta ganada TCK-APU-011', 2, 2, 5, 1, 3),
(112.00, 112.00, '2024-03-15 02:50:00', '2024-03-15 02:53:00', 'PRE-008', 'Premio apuesta ganada TCK-APU-012', 2, 2, 4, 1, 5),
(93.50, 93.50, '2024-03-16 20:50:00', '2024-03-16 20:53:00', 'PRE-009', 'Premio apuesta ganada TCK-APU-015', 2, 2, 5, 1, 11),
(157.25, 157.25, '2024-03-21 19:50:00', '2024-03-21 19:53:00', 'PRE-010', 'Premio apuesta ganada TCK-APU-017', 2, 2, 1, 1, 14),
(165.00, 165.00, '2024-03-09 17:50:00', '2024-03-09 17:53:00', 'PRE-011', 'Premio apuesta ganada TCK-APU-019', 2, 2, 1, 1, 16),
(57.50, 57.50, '2024-03-08 02:30:00', '2024-03-08 02:33:00', 'PRE-012', 'Premio apuesta ganada TCK-APU-021', 2, 2, 5, 2, 41),
(152.00, 152.00, '2024-04-05 03:20:00', '2024-04-05 03:23:00', 'PRE-013', 'Premio apuesta ganada TCK-APU-023', 2, 2, 6, 2, 44),
(66.00, 66.00, '2024-03-14 20:00:00', '2024-03-14 20:03:00', 'PRE-014', 'Premio apuesta ganada TCK-APU-026', 2, 2, 6, 3, 49),
(370.00, 370.00, '2024-04-16 20:50:00', '2024-04-16 20:53:00', 'PRE-015', 'Premio apuesta ganada TCK-APU-028', 2, 2, 5, 3, 52),
(37.80, 37.80, '2024-05-20 11:27:00', '2024-05-20 11:30:00', 'PRE-016', 'Premio apuesta ganada TCK-AUT-001', 2, 2, 5, 1, 1),
(57.00, 57.00, '2024-05-25 17:02:00', '2024-05-25 17:05:00', 'PRE-017', 'Premio apuesta ganada TCK-AUT-006', 2, 2, 1, 1, 1),
(23.40, 23.40, '2024-05-29 10:30:00', '2024-05-29 10:33:00', 'PRE-018', 'Premio apuesta ganada TCK-AUT-010', 2, 2, 3, 1, 2),
(42.50, 42.50, '2024-06-03 16:05:00', '2024-06-03 16:08:00', 'PRE-019', 'Premio apuesta ganada TCK-AUT-015', 2, 2, 4, 1, 2),
(162.00, 162.00, '2024-06-07 19:33:00', '2024-06-07 19:36:00', 'PRE-020', 'Premio apuesta ganada TCK-AUT-019', 2, 2, 5, 1, 3),
(175.60, 175.60, '2024-06-12 15:08:00', '2024-06-12 15:11:00', 'PRE-021', 'Premio apuesta ganada TCK-AUT-024', 2, 2, 1, 1, 3),
(157.15, 157.15, '2024-06-16 18:36:00', '2024-06-16 18:39:00', 'PRE-022', 'Premio apuesta ganada TCK-AUT-028', 2, 2, 3, 1, 4),
(33.00, 33.00, '2024-06-21 14:11:00', '2024-06-21 14:14:00', 'PRE-023', 'Premio apuesta ganada TCK-AUT-033', 2, 2, 4, 1, 4),
(58.80, 58.80, '2024-05-21 17:39:00', '2024-05-21 17:42:00', 'PRE-024', 'Premio apuesta ganada TCK-AUT-037', 2, 2, 5, 1, 5),
(95.00, 95.00, '2024-05-26 13:14:00', '2024-05-26 13:17:00', 'PRE-025', 'Premio apuesta ganada TCK-AUT-042', 2, 2, 1, 1, 5),
(42.90, 42.90, '2024-05-30 16:42:00', '2024-05-30 16:45:00', 'PRE-026', 'Premio apuesta ganada TCK-AUT-046', 2, 2, 3, 1, 6),
(17.00, 17.00, '2024-06-04 12:17:00', '2024-06-04 12:20:00', 'PRE-027', 'Premio apuesta ganada TCK-AUT-051', 2, 2, 4, 1, 6),
(175.60, 175.60, '2024-06-09 16:52:00', '2024-06-09 16:55:00', 'PRE-028', 'Premio apuesta ganada TCK-AUT-056', 2, 2, 1, 1, 7),
(57.50, 57.50, '2024-06-11 19:06:00', '2024-06-11 19:09:00', 'PRE-029', 'Premio apuesta ganada TCK-AUT-058', 2, 2, 4, 1, 7),
(66.00, 66.00, '2024-06-14 11:27:00', '2024-06-14 11:30:00', 'PRE-030', 'Premio apuesta ganada TCK-AUT-061', 2, 2, 4, 1, 8),
(75.24, 75.24, '2024-06-17 14:48:00', '2024-06-17 14:51:00', 'PRE-031', 'Premio apuesta ganada TCK-AUT-064', 2, 2, 3, 1, 8),
(35.10, 35.10, '2024-06-19 17:02:00', '2024-06-19 17:05:00', 'PRE-032', 'Premio apuesta ganada TCK-AUT-066', 2, 2, 5, 1, 8),
(51.80, 51.80, '2024-06-22 19:23:00', '2024-06-22 19:26:00', 'PRE-033', 'Premio apuesta ganada TCK-AUT-069', 2, 2, 5, 1, 9),
(351.20, 351.20, '2024-05-21 12:44:00', '2024-05-21 12:47:00', 'PRE-034', 'Premio apuesta ganada TCK-AUT-072', 2, 2, 4, 1, 9),
(115.00, 115.00, '2024-05-23 14:58:00', '2024-05-23 15:01:00', 'PRE-035', 'Premio apuesta ganada TCK-AUT-074', 2, 2, 1, 1, 9),
(29.25, 29.25, '2024-05-24 16:05:00', '2024-05-24 16:08:00', 'PRE-036', 'Premio apuesta ganada TCK-AUT-075', 2, 2, 4, 1, 10),
(33.00, 33.00, '2024-05-26 18:19:00', '2024-05-26 18:22:00', 'PRE-037', 'Premio apuesta ganada TCK-AUT-077', 2, 2, 1, 1, 10),
(175.56, 175.56, '2024-05-29 10:40:00', '2024-05-29 10:43:00', 'PRE-038', 'Premio apuesta ganada TCK-AUT-080', 2, 2, 5, 1, 10),
(94.50, 94.50, '2024-06-01 14:01:00', '2024-06-01 14:04:00', 'PRE-039', 'Premio apuesta ganada TCK-AUT-083', 2, 2, 5, 1, 11),
(22.20, 22.20, '2024-06-03 16:15:00', '2024-06-03 16:18:00', 'PRE-040', 'Premio apuesta ganada TCK-AUT-085', 2, 2, 3, 1, 11),
(175.60, 175.60, '2024-06-06 18:36:00', '2024-06-06 18:39:00', 'PRE-041', 'Premio apuesta ganada TCK-AUT-088', 2, 2, 1, 1, 11),
(58.50, 58.50, '2024-06-09 11:57:00', '2024-06-09 12:00:00', 'PRE-042', 'Premio apuesta ganada TCK-AUT-091', 2, 2, 1, 1, 12),
(66.00, 66.00, '2024-06-11 14:11:00', '2024-06-11 14:14:00', 'PRE-043', 'Premio apuesta ganada TCK-AUT-093', 2, 2, 4, 1, 12),
(94.05, 94.05, '2024-06-14 16:32:00', '2024-06-14 16:35:00', 'PRE-044', 'Premio apuesta ganada TCK-AUT-096', 2, 2, 4, 1, 13),
(46.20, 46.20, '2024-06-17 19:53:00', '2024-06-17 19:56:00', 'PRE-045', 'Premio apuesta ganada TCK-AUT-099', 2, 2, 3, 1, 13),
(51.80, 51.80, '2024-06-19 12:07:00', '2024-06-19 12:10:00', 'PRE-046', 'Premio apuesta ganada TCK-AUT-101', 2, 2, 5, 1, 13),
(395.10, 395.10, '2024-06-22 14:28:00', '2024-06-22 14:31:00', 'PRE-047', 'Premio apuesta ganada TCK-AUT-104', 2, 2, 5, 1, 14),
(29.25, 29.25, '2024-05-21 17:49:00', '2024-05-21 17:52:00', 'PRE-048', 'Premio apuesta ganada TCK-AUT-107', 2, 2, 4, 1, 14),
(33.00, 33.00, '2024-05-23 20:03:00', '2024-05-23 20:06:00', 'PRE-049', 'Premio apuesta ganada TCK-AUT-109', 2, 2, 1, 1, 14),
(52.50, 52.50, '2024-05-24 11:10:00', '2024-05-24 11:13:00', 'PRE-050', 'Premio apuesta ganada TCK-AUT-110', 2, 2, 4, 1, 15),
(188.10, 188.10, '2024-05-26 12:24:00', '2024-05-26 12:27:00', 'PRE-051', 'Premio apuesta ganada TCK-AUT-112', 2, 2, 1, 1, 15),
(94.50, 94.50, '2024-05-29 15:45:00', '2024-05-29 15:48:00', 'PRE-052', 'Premio apuesta ganada TCK-AUT-115', 2, 2, 5, 1, 15),
(64.80, 64.80, '2024-06-01 19:06:00', '2024-06-01 19:09:00', 'PRE-053', 'Premio apuesta ganada TCK-AUT-118', 2, 2, 5, 1, 16),
(193.16, 193.16, '2024-06-03 10:20:00', '2024-06-03 10:23:00', 'PRE-054', 'Premio apuesta ganada TCK-AUT-120', 2, 2, 3, 1, 16),
(84.00, 84.00, '2024-06-06 13:41:00', '2024-06-06 13:44:00', 'PRE-055', 'Premio apuesta ganada TCK-AUT-123', 2, 2, 3, 1, 17),
(23.40, 23.40, '2024-06-09 17:02:00', '2024-06-09 17:05:00', 'PRE-056', 'Premio apuesta ganada TCK-AUT-126', 2, 2, 3, 1, 18),
(65.34, 65.34, '2024-06-11 19:16:00', '2024-06-11 19:19:00', 'PRE-057', 'Premio apuesta ganada TCK-AUT-128', 2, 2, 5, 1, 18),
(58.80, 58.80, '2024-06-14 11:37:00', '2024-06-14 11:40:00', 'PRE-058', 'Premio apuesta ganada TCK-AUT-131', 2, 2, 5, 1, 19),
(85.50, 85.50, '2024-06-17 14:58:00', '2024-06-17 15:01:00', 'PRE-059', 'Premio apuesta ganada TCK-AUT-134', 2, 2, 5, 1, 20),
(49.20, 49.20, '2024-06-19 17:12:00', '2024-06-19 17:15:00', 'PRE-060', 'Premio apuesta ganada TCK-AUT-136', 2, 2, 3, 1, 20),
(46.20, 46.20, '2024-06-22 19:33:00', '2024-06-22 19:36:00', 'PRE-061', 'Premio apuesta ganada TCK-AUT-139', 2, 2, 3, 1, 21),
(59.50, 59.50, '2024-05-21 12:54:00', '2024-05-21 12:57:00', 'PRE-062', 'Premio apuesta ganada TCK-AUT-142', 2, 2, 3, 1, 22),
(356.40, 356.40, '2024-05-23 15:08:00', '2024-05-23 15:11:00', 'PRE-063', 'Premio apuesta ganada TCK-AUT-144', 2, 2, 5, 1, 22),
(35.10, 35.10, '2024-05-26 17:29:00', '2024-05-26 17:32:00', 'PRE-064', 'Premio apuesta ganada TCK-AUT-147', 2, 2, 5, 1, 23),
(67.20, 67.20, '2024-05-29 10:50:00', '2024-05-29 10:53:00', 'PRE-065', 'Premio apuesta ganada TCK-AUT-150', 2, 2, 5, 1, 24),
(122.85, 122.85, '2024-05-31 13:04:00', '2024-05-31 13:07:00', 'PRE-066', 'Premio apuesta ganada TCK-AUT-152', 2, 2, 3, 1, 24),
(26.40, 26.40, '2024-06-03 15:25:00', '2024-06-03 15:28:00', 'PRE-067', 'Premio apuesta ganada TCK-AUT-155', 2, 2, 3, 1, 25),
(46.20, 46.20, '2024-06-06 18:46:00', '2024-06-06 18:49:00', 'PRE-068', 'Premio apuesta ganada TCK-AUT-158', 2, 2, 3, 1, 26),
(175.56, 175.56, '2024-06-08 11:00:00', '2024-06-08 11:03:00', 'PRE-069', 'Premio apuesta ganada TCK-AUT-160', 2, 2, 5, 1, 26),
(94.50, 94.50, '2024-06-11 13:21:00', '2024-06-11 13:24:00', 'PRE-070', 'Premio apuesta ganada TCK-AUT-163', 2, 2, 5, 1, 27),
(37.80, 37.80, '2024-06-14 16:42:00', '2024-06-14 16:45:00', 'PRE-071', 'Premio apuesta ganada TCK-AUT-166', 2, 2, 5, 1, 28),
(69.30, 69.30, '2024-06-16 18:56:00', '2024-06-16 18:59:00', 'PRE-072', 'Premio apuesta ganada TCK-AUT-168', 2, 2, 3, 1, 28),
(126.00, 126.00, '2024-06-19 12:17:00', '2024-06-19 12:20:00', 'PRE-073', 'Premio apuesta ganada TCK-AUT-171', 2, 2, 3, 1, 29),
(23.40, 23.40, '2024-06-22 14:38:00', '2024-06-22 14:41:00', 'PRE-074', 'Premio apuesta ganada TCK-AUT-174', 2, 2, 3, 1, 30),
(99.36, 99.36, '2024-05-20 16:52:00', '2024-05-20 16:55:00', 'PRE-075', 'Premio apuesta ganada TCK-AUT-176', 2, 2, 5, 1, 30),
(45.00, 45.00, '2024-05-22 19:06:00', '2024-05-22 19:09:00', 'PRE-076', 'Premio apuesta ganada TCK-AUT-178', 2, 2, 4, 1, 31),
(61.25, 61.25, '2024-05-25 11:27:00', '2024-05-25 11:30:00', 'PRE-077', 'Premio apuesta ganada TCK-AUT-181', 2, 2, 3, 1, 31),
(165.00, 165.00, '2024-05-27 13:41:00', '2024-05-27 13:44:00', 'PRE-078', 'Premio apuesta ganada TCK-AUT-183', 2, 2, 1, 1, 32),
(31.50, 31.50, '2024-05-29 15:55:00', '2024-05-29 15:58:00', 'PRE-079', 'Premio apuesta ganada TCK-AUT-185', 2, 2, 4, 1, 32),
(58.50, 58.50, '2024-06-03 10:30:00', '2024-06-03 10:33:00', 'PRE-080', 'Premio apuesta ganada TCK-AUT-190', 2, 2, 1, 1, 33),
(220.80, 220.80, '2024-06-05 12:44:00', '2024-06-05 12:47:00', 'PRE-081', 'Premio apuesta ganada TCK-AUT-192', 2, 2, 4, 1, 33),
(21.60, 21.60, '2024-06-07 14:58:00', '2024-06-07 15:01:00', 'PRE-082', 'Premio apuesta ganada TCK-AUT-194', 2, 2, 3, 1, 34),
(35.00, 35.00, '2024-06-10 18:19:00', '2024-06-10 18:22:00', 'PRE-083', 'Premio apuesta ganada TCK-AUT-197', 2, 2, 1, 1, 34),
(92.40, 92.40, '2024-06-12 19:33:00', '2024-06-12 19:36:00', 'PRE-084', 'Premio apuesta ganada TCK-AUT-199', 2, 2, 5, 1, 35),
(73.50, 73.50, '2024-06-14 11:47:00', '2024-06-14 11:50:00', 'PRE-085', 'Premio apuesta ganada TCK-AUT-201', 2, 2, 3, 1, 35),
(85.00, 85.00, '2024-06-16 14:01:00', '2024-06-16 14:04:00', 'PRE-086', 'Premio apuesta ganada TCK-AUT-203', 2, 2, 1, 1, 36),
(99.00, 99.00, '2024-06-20 17:29:00', '2024-06-20 17:32:00', 'PRE-087', 'Premio apuesta ganada TCK-AUT-207', 2, 2, 3, 1, 37),
(63.00, 63.00, '2024-06-23 10:50:00', '2024-06-23 10:53:00', 'PRE-088', 'Premio apuesta ganada TCK-AUT-210', 2, 2, 3, 1, 38),
(28.50, 28.50, '2024-05-23 15:18:00', '2024-05-23 15:21:00', 'PRE-089', 'Premio apuesta ganada TCK-AUT-214', 2, 2, 4, 1, 39),
(66.00, 66.00, '2024-05-24 15:25:00', '2024-05-24 15:28:00', 'PRE-090', 'Premio apuesta ganada TCK-AUT-215', 2, 2, 1, 1, 40),
(52.50, 52.50, '2024-05-26 17:39:00', '2024-05-26 17:42:00', 'PRE-091', 'Premio apuesta ganada TCK-AUT-217', 2, 2, 4, 1, 40),
(25.20, 25.20, '2024-05-27 18:46:00', '2024-05-27 18:49:00', 'PRE-092', 'Premio apuesta ganada TCK-AUT-218', 2, 2, 6, 2, 41),
(133.20, 133.20, '2024-05-29 11:00:00', '2024-05-29 11:03:00', 'PRE-093', 'Premio apuesta ganada TCK-AUT-220', 2, 2, 5, 2, 42),
(17.60, 17.60, '2024-05-31 13:14:00', '2024-05-31 13:17:00', 'PRE-094', 'Premio apuesta ganada TCK-AUT-222', 2, 2, 6, 2, 43),
(36.00, 36.00, '2024-06-09 12:17:00', '2024-06-09 12:20:00', 'PRE-095', 'Premio apuesta ganada TCK-AUT-231', 2, 2, 5, 2, 47),
(22.80, 22.80, '2024-06-13 15:45:00', '2024-06-13 15:48:00', 'PRE-096', 'Premio apuesta ganada TCK-AUT-235', 2, 2, 6, 2, 48),
(124.74, 124.74, '2024-06-14 16:52:00', '2024-06-14 16:55:00', 'PRE-097', 'Premio apuesta ganada TCK-AUT-236', 2, 2, 6, 3, 49),
(19.50, 19.50, '2024-06-23 15:55:00', '2024-06-23 15:58:00', 'PRE-098', 'Premio apuesta ganada TCK-AUT-245', 2, 2, 5, 3, 53),
(81.00, 81.00, '2024-05-21 18:09:00', '2024-05-21 18:12:00', 'PRE-099', 'Premio apuesta ganada TCK-AUT-247', 2, 2, 6, 3, 54),
(9.75, 9.75, '2024-05-23 19:23:00', '2024-05-23 19:26:00', 'PRE-100', 'Premio apuesta ganada TCK-AUT-249', 2, 2, 5, 3, 55),

-- DEVOLUCIONES POR APUESTAS ANULADAS FALTANTES
(22.00, 22.00, '2024-05-22 13:31:00', '2024-05-22 13:33:00', 'DEV-005', 'Devolución apuesta anulada TCK-AUT-003', 4, 2, 3, 1, 1),
(40.00, 40.00, '2024-05-27 19:06:00', '2024-05-27 19:08:00', 'DEV-006', 'Devolución apuesta anulada TCK-AUT-008', 4, 2, 4, 1, 1),
(18.00, 18.00, '2024-05-31 12:34:00', '2024-05-31 12:36:00', 'DEV-007', 'Devolución apuesta anulada TCK-AUT-012', 4, 2, 5, 1, 2),
(30.00, 30.00, '2024-06-05 18:09:00', '2024-06-05 18:11:00', 'DEV-008', 'Devolución apuesta anulada TCK-AUT-017', 4, 2, 1, 1, 2),
(12.00, 12.00, '2024-06-09 11:37:00', '2024-06-09 11:39:00', 'DEV-009', 'Devolución apuesta anulada TCK-AUT-021', 4, 2, 3, 1, 3),
(25.00, 25.00, '2024-06-14 16:12:00', '2024-06-14 16:14:00', 'DEV-010', 'Devolución apuesta anulada TCK-AUT-026', 4, 2, 4, 1, 3),
(45.00, 45.00, '2024-06-18 10:40:00', '2024-06-18 10:42:00', 'DEV-011', 'Devolución apuesta anulada TCK-AUT-030', 4, 2, 5, 1, 4),
(20.00, 20.00, '2024-06-23 15:15:00', '2024-06-23 15:17:00', 'DEV-012', 'Devolución apuesta anulada TCK-AUT-035', 4, 2, 1, 1, 4),
(35.00, 35.00, '2024-05-23 19:43:00', '2024-05-23 19:45:00', 'DEV-013', 'Devolución apuesta anulada TCK-AUT-039', 4, 2, 3, 1, 5),
(15.00, 15.00, '2024-05-28 14:18:00', '2024-05-28 14:20:00', 'DEV-014', 'Devolución apuesta anulada TCK-AUT-044', 4, 2, 4, 1, 5),
(28.00, 28.00, '2024-06-01 18:46:00', '2024-06-01 18:48:00', 'DEV-015', 'Devolución apuesta anulada TCK-AUT-048', 4, 2, 5, 1, 6),
(10.00, 10.00, '2024-06-06 13:21:00', '2024-06-06 13:23:00', 'DEV-016', 'Devolución apuesta anulada TCK-AUT-053', 4, 2, 1, 1, 6),
(12.00, 12.00, '2024-06-07 19:53:00', '2024-06-07 19:55:00', 'DEV-017', 'Devolución apuesta anulada TCK-AUT-229', 4, 2, 6, 2, 46),
(25.00, 25.00, '2024-06-21 13:31:00', '2024-06-21 13:33:00', 'DEV-018', 'Devolución apuesta anulada TCK-AUT-243', 4, 2, 6, 3, 52);
GO

-- 22. Tabla HistorialSaldo ----------
INSERT INTO HistorialSaldo (saldo_anterior, saldo_posterior, fecha_registro, id_saldo, id_transaccion) VALUES

-- DEPÓSITOS INICIALES (saldo_anterior = 0 porque son primeros movimientos)
(0.00,     500.00,  '2024-01-05 10:05:00', 1,  1),
(0.00,    1250.50,  '2024-01-06 11:03:00', 2,  2),
(0.00,     350.00,  '2024-01-07 09:02:00', 3,  3),
(0.00,    2600.00,  '2024-01-08 14:04:00', 4,  4),
(0.00,     750.00,  '2024-01-09 16:02:00', 5,  5),
(0.00,     200.00,  '2024-01-10 08:03:00', 6,  6),
(0.00,    3400.00,  '2024-01-11 12:05:00', 7,  7),
(0.00,     900.00,  '2024-01-12 17:02:00', 8,  8),
(0.00,     500.00,  '2024-01-13 10:03:00', 9,  9),
(0.00,    1500.00,  '2024-01-14 13:04:00',10, 10),
(0.00,     700.00,  '2024-01-15 09:02:00',11, 11),
(0.00,     280.00,  '2024-01-16 15:03:00',12, 12),
(0.00,    2000.00,  '2024-01-17 11:04:00',13, 13),
(0.00,     420.00,  '2024-01-18 14:02:00',14, 14),
(0.00,    1100.00,  '2024-01-19 10:03:00',15, 15),
(0.00,     330.00,  '2024-01-20 16:02:00',16, 16),
(0.00,    2200.00,  '2024-01-21 09:04:00',17, 17),
(0.00,     670.00,  '2024-01-22 13:02:00',18, 18),
(0.00,    1400.00,  '2024-01-23 11:03:00',19, 19),
(0.00,     600.00,  '2024-01-24 10:02:00',20, 20),

-- DEPÓSITOS USD
(0.00,     200.00,  '2024-01-25 10:03:00',41, 21),
(0.00,     500.00,  '2024-01-26 11:02:00',42, 22),
(0.00,     150.00,  '2024-01-27 09:03:00',43, 23),
(0.00,    1000.00,  '2024-01-28 14:04:00',44, 24),
(0.00,     320.00,  '2024-01-29 16:02:00',45, 25),

-- DEPÓSITOS EUR
(0.00,     300.00,  '2024-01-30 10:03:00',49, 26),
(0.00,    1000.00,  '2024-01-31 11:04:00',50, 27),
(0.00,     180.00,  '2024-02-01 09:02:00',51, 28),
(0.00,     500.00,  '2024-02-02 14:03:00',52, 29),
(0.00,     650.00,  '2024-02-03 16:02:00',53, 30),

-- RETIROS COMPLETADOS (saldo disminuye)
(500.00,   300.00,  '2024-02-05 10:10:00', 1, 31),
(2600.00,  2100.00, '2024-02-06 11:08:00', 4, 32),
(3400.00,  3100.00, '2024-02-07 09:07:00', 7, 33),
(1500.00,  1350.00, '2024-02-08 14:06:00',10, 34),
(500.00,    400.00, '2024-02-09 16:05:00',42, 35),
(1000.00,   750.00, '2024-02-10 08:08:00',50, 36),

-- RETIROS PENDIENTES (saldo retenido, no cambia aún)
(2000.00,  2000.00, '2024-05-28 10:00:00',13, 37),
(2200.00,  2200.00, '2024-05-28 11:00:00',17, 38),
(1000.00,  1000.00, '2024-05-28 12:00:00',44, 39),

-- RETIROS FALLIDOS (saldo no cambia)
(350.00,    350.00, '2024-03-10 10:15:00', 3, 40),
(150.00,    150.00, '2024-03-11 11:10:00',43, 41),

-- PREMIOS (saldo aumenta)
(300.00,   1050.00, '2024-03-16 18:05:00', 1, 42),
(2100.00,  3300.00, '2024-03-17 20:05:00', 4, 43),
(900.00,   1350.00, '2024-03-22 19:04:00', 8, 44),
(2000.00,  2980.00, '2024-03-24 21:05:00',13, 45),
(400.00,    720.00, '2024-03-31 17:03:00',42, 46),
(750.00,   1310.00, '2024-04-07 20:04:00',50, 47),

-- BONIFICACIONES (saldo aumenta)
(1050.00,  1100.00, '2024-02-15 10:01:00', 1, 48),
(1250.50,  1300.50, '2024-02-15 10:01:00', 2, 49),
(350.00,    400.00, '2024-02-15 10:01:00', 3, 50),
(3300.00,  3400.00, '2024-03-01 10:01:00', 7, 51),
(2980.00,  3080.00, '2024-03-01 10:01:00',13, 52),
(720.00,    745.00, '2024-03-15 10:01:00',41, 53),

-- DEVOLUCIONES (saldo aumenta)
(750.00,    850.00, '2024-04-05 12:03:00', 5, 54),
(1350.00,  1550.00, '2024-04-10 14:02:00',10, 55),
(1100.00,  1250.00, '2024-04-15 16:03:00',15, 56),
(150.00,    230.00, '2024-04-20 10:02:00',43, 57),

-- APUESTAS DESCONTADAS (saldo disminuye)
(1100.00,  1050.00, '2024-03-15 15:30:00', 1, 58),
(3300.00,  3200.00, '2024-03-22 20:30:00', 4, 59),
(1350.00,  1275.00, '2024-03-17 17:30:00', 8, 60),
(3080.00,  2880.00, '2024-03-24 21:00:00',13, 61),
(720.00,    660.00, '2024-03-31 17:00:00',42, 62),
(1310.00,  1190.00, '2024-04-07 20:00:00',50, 63),
(1300.50,  1220.50, '2024-04-09 21:30:00', 2, 64),
(3400.00,  3250.00, '2024-04-16 20:00:00', 7, 65),
(2200.00,  2110.00, '2024-04-21 19:30:00',17, 66),
(800.00,    690.00, '2024-04-28 16:00:00',22, 67),

-- COMISIONES (saldo disminuye)
(1050.00,  1045.00, '2024-02-05 10:10:00', 1, 68),
(2100.00,  2090.00, '2024-02-06 11:08:00', 4, 69),
(3100.00,  3094.00, '2024-02-07 09:07:00', 7, 70),
(1350.00,  1347.00, '2024-02-08 14:06:00',10, 71),
(400.00,    398.00, '2024-02-09 16:05:00',42, 72),
(750.00,    745.00, '2024-02-10 08:08:00',50, 73),

--NUEVO
-- Movimientos del 2024-03-08
(400.00, 360.00, '2024-03-08 02:00:00', 3, 74),
(745.00, 720.00, '2024-03-08 02:10:00', 41, 84),
(360.00, 434.00, '2024-03-08 02:23:00', 3, 354),
(720.00, 777.50, '2024-03-08 02:33:00', 41, 359),

-- Movimientos del 2024-03-09
(500.00, 410.00, '2024-03-09 17:00:00', 9, 76),
(330.00, 230.00, '2024-03-09 17:30:00', 16, 82),
(230.00, 395.00, '2024-03-09 17:53:00', 16, 358),

-- Movimientos del 2024-03-10
(670.00, 625.00, '2024-03-10 17:30:00', 18, 83),
(650.00, 595.00, '2024-03-10 17:30:00', 53, 92),
(1347.00, 1217.00, '2024-03-10 20:30:00', 10, 77),

-- Movimientos del 2024-03-14
(230.00, 180.00, '2024-03-14 19:30:00', 43, 85),
(300.00, 260.00, '2024-03-14 19:40:00', 49, 89),
(260.00, 326.00, '2024-03-14 20:03:00', 49, 361),

-- Movimientos del 2024-03-15
(850.00, 780.00, '2024-03-15 02:30:00', 5, 75),
(780.00, 892.00, '2024-03-15 02:53:00', 5, 355),
(320.00, 285.00, '2024-03-15 03:20:00', 45, 87),

-- Movimientos del 2024-03-16
(700.00, 645.00, '2024-03-16 20:30:00', 11, 78),
(645.00, 738.50, '2024-03-16 20:53:00', 11, 356),

-- Movimientos del 2024-03-17
(280.00, 130.00, '2024-03-17 20:20:00', 12, 79),

-- Movimientos del 2024-03-21
(420.00, 335.00, '2024-03-21 19:30:00', 14, 80),
(180.00, 105.00, '2024-03-21 19:30:00', 51, 90),
(335.00, 492.25, '2024-03-21 19:53:00', 14, 357),

-- Movimientos del 2024-03-24
(1250.00, 1185.00, '2024-03-24 18:30:00', 15, 81),

-- Movimientos del 2024-04-05
(1000.00, 920.00, '2024-04-05 03:00:00', 44, 86),
(920.00, 1072.00, '2024-04-05 03:23:00', 44, 360),

-- Movimientos del 2024-04-16
(500.00, 400.00, '2024-04-16 20:30:00', 52, 91),
(400.00, 770.00, '2024-04-16 20:53:00', 52, 362),

-- Movimientos del 2024-05-20
(1045.00, 1027.00, '2024-05-20 11:07:00', 1, 104),
(410.00, 375.00, '2024-05-20 11:17:00', 9, 174),
(690.00, 660.00, '2024-05-20 11:27:00', 22, 244),
(1027.00, 1064.80, '2024-05-20 11:30:00', 1, 363),
(290.00, 250.00, '2024-05-20 11:37:00', 38, 314),
(2090.00, 2068.00, '2024-05-20 16:12:00', 4, 139),
(492.25, 480.25, '2024-05-20 16:22:00', 14, 209),
(430.00, 412.00, '2024-05-20 16:32:00', 30, 279),
(300.00, 285.00, '2024-05-20 16:42:00', 54, 349),
(412.00, 511.36, '2024-05-20 16:55:00', 30, 422),

-- Movimientos del 2024-05-21
(1064.80, 1044.80, '2024-05-21 12:14:00', 1, 105),
(375.00, 335.00, '2024-05-21 12:24:00', 9, 175),
(660.00, 625.00, '2024-05-21 12:34:00', 22, 245),
(2000.00, 1950.00, '2024-05-21 12:44:00', 39, 315),
(335.00, 686.20, '2024-05-21 12:47:00', 9, 381),
(625.00, 684.50, '2024-05-21 12:57:00', 22, 409),
(892.00, 864.00, '2024-05-21 17:19:00', 5, 140),
(480.25, 465.25, '2024-05-21 17:29:00', 14, 210),
(511.36, 491.36, '2024-05-21 17:39:00', 30, 280),
(864.00, 922.80, '2024-05-21 17:42:00', 5, 371),
(285.00, 267.00, '2024-05-21 17:49:00', 54, 350),
(465.25, 494.50, '2024-05-21 17:52:00', 14, 395),
(267.00, 348.00, '2024-05-21 18:12:00', 54, 446),

-- Movimientos del 2024-05-22
(1044.80, 1022.80, '2024-05-22 13:21:00', 1, 106),
(686.20, 641.20, '2024-05-22 13:31:00', 9, 176),
(1022.80, 1044.80, '2024-05-22 13:33:00', 1, 448),
(684.50, 644.50, '2024-05-22 13:41:00', 22, 246),
(1950.00, 1938.00, '2024-05-22 13:51:00', 39, 316),
(922.80, 892.80, '2024-05-22 18:26:00', 5, 141),
(494.50, 476.50, '2024-05-22 18:36:00', 14, 211),
(1000.00, 975.00, '2024-05-22 18:46:00', 31, 281),
(500.00, 475.00, '2024-05-22 18:56:00', 55, 351),
(975.00, 1020.00, '2024-05-22 19:09:00', 31, 423),

-- Movimientos del 2024-05-23
(1044.80, 1019.80, '2024-05-23 14:28:00', 1, 107),
(641.20, 591.20, '2024-05-23 14:38:00', 9, 177),
(644.50, 599.50, '2024-05-23 14:48:00', 22, 247),
(1938.00, 1923.00, '2024-05-23 14:58:00', 39, 317),
(591.20, 706.20, '2024-05-23 15:01:00', 9, 382),
(599.50, 955.90, '2024-05-23 15:11:00', 22, 410),
(1923.00, 1951.50, '2024-05-23 15:21:00', 39, 436),
(475.00, 470.00, '2024-05-23 19:03:00', 55, 352),
(470.00, 479.75, '2024-05-23 19:26:00', 55, 447),
(892.80, 857.80, '2024-05-23 19:33:00', 5, 142),
(476.50, 456.50, '2024-05-23 19:43:00', 14, 212),
(857.80, 892.80, '2024-05-23 19:45:00', 5, 456),
(1020.00, 992.00, '2024-05-23 19:53:00', 31, 282),
(456.50, 489.50, '2024-05-23 20:06:00', 14, 396),

-- Movimientos del 2024-05-24
(992.00, 962.00, '2024-05-24 10:00:00', 31, 283),
(479.75, 471.75, '2024-05-24 10:10:00', 55, 353),
(892.80, 852.80, '2024-05-24 10:40:00', 5, 143),
(1185.00, 1160.00, '2024-05-24 10:50:00', 15, 213),
(1160.00, 1212.50, '2024-05-24 11:13:00', 15, 397),
(510.00, 490.00, '2024-05-24 15:05:00', 40, 318),
(490.00, 556.00, '2024-05-24 15:28:00', 40, 437),
(1019.80, 991.80, '2024-05-24 15:35:00', 1, 108),
(1217.00, 1202.00, '2024-05-24 15:45:00', 10, 178),
(370.00, 358.00, '2024-05-24 15:55:00', 23, 248),
(1202.00, 1231.25, '2024-05-24 16:08:00', 10, 383),

-- Movimientos del 2024-05-25
(962.00, 927.00, '2024-05-25 11:07:00', 31, 284),
(927.00, 988.25, '2024-05-25 11:30:00', 31, 424),
(852.80, 807.80, '2024-05-25 11:47:00', 5, 144),
(1212.50, 1184.50, '2024-05-25 11:57:00', 15, 214),
(358.00, 343.00, '2024-05-25 16:02:00', 23, 249),
(556.00, 534.00, '2024-05-25 16:12:00', 40, 319),
(991.80, 961.80, '2024-05-25 16:42:00', 1, 109),
(1231.25, 1213.25, '2024-05-25 16:52:00', 10, 179),
(961.80, 1018.80, '2024-05-25 17:05:00', 1, 364),

-- Movimientos del 2024-05-26
(1184.50, 1154.50, '2024-05-26 12:04:00', 15, 215),
(988.25, 948.25, '2024-05-26 12:14:00', 31, 285),
(1154.50, 1342.60, '2024-05-26 12:27:00', 15, 398),
(807.80, 757.80, '2024-05-26 12:54:00', 5, 145),
(757.80, 852.80, '2024-05-26 13:17:00', 5, 372),
(343.00, 325.00, '2024-05-26 17:09:00', 23, 250),
(534.00, 509.00, '2024-05-26 17:19:00', 40, 320),
(325.00, 360.10, '2024-05-26 17:32:00', 23, 411),
(509.00, 561.50, '2024-05-26 17:42:00', 40, 438),
(1018.80, 983.80, '2024-05-26 17:49:00', 1, 110),
(1213.25, 1193.25, '2024-05-26 17:59:00', 10, 180),
(1193.25, 1226.25, '2024-05-26 18:22:00', 10, 384),

-- Movimientos del 2024-05-27
(852.80, 840.80, '2024-05-27 13:01:00', 5, 146),
(1342.60, 1307.60, '2024-05-27 13:11:00', 15, 216),
(310.00, 260.00, '2024-05-27 13:21:00', 32, 286),
(260.00, 425.00, '2024-05-27 13:44:00', 32, 425),
(1226.25, 1204.25, '2024-05-27 18:06:00', 10, 181),
(360.10, 340.10, '2024-05-27 18:16:00', 23, 251),
(777.50, 765.50, '2024-05-27 18:26:00', 41, 321),
(765.50, 790.70, '2024-05-27 18:49:00', 41, 439),
(983.80, 943.80, '2024-05-27 18:56:00', 1, 111),
(943.80, 983.80, '2024-05-27 19:08:00', 1, 449),

-- Movimientos del 2024-05-28
(840.80, 825.80, '2024-05-28 14:08:00', 5, 147),
(1307.60, 1267.60, '2024-05-28 14:18:00', 15, 217),
(825.80, 840.80, '2024-05-28 14:20:00', 5, 457),
(425.00, 413.00, '2024-05-28 14:28:00', 32, 287),
(983.80, 938.80, '2024-05-28 19:03:00', 1, 112),
(1204.25, 1179.25, '2024-05-28 19:13:00', 10, 182),
(3000.00, 2975.00, '2024-05-28 19:23:00', 24, 252),
(790.70, 775.70, '2024-05-28 19:33:00', 41, 322),

-- Movimientos del 2024-05-29
(1220.50, 1208.50, '2024-05-29 10:10:00', 2, 113),
(1179.25, 1151.25, '2024-05-29 10:20:00', 10, 183),
(2975.00, 2947.00, '2024-05-29 10:30:00', 24, 253),
(1208.50, 1231.90, '2024-05-29 10:33:00', 2, 365),
(398.00, 378.00, '2024-05-29 10:40:00', 42, 323),
(1151.25, 1326.81, '2024-05-29 10:43:00', 10, 385),
(2947.00, 3014.20, '2024-05-29 10:53:00', 24, 412),
(378.00, 511.20, '2024-05-29 11:03:00', 42, 440),
(840.80, 822.80, '2024-05-29 15:15:00', 5, 148),
(1267.60, 1222.60, '2024-05-29 15:25:00', 15, 218),
(413.00, 398.00, '2024-05-29 15:35:00', 32, 288),
(1222.60, 1317.10, '2024-05-29 15:48:00', 15, 399),
(398.00, 429.50, '2024-05-29 15:58:00', 32, 426),

-- Movimientos del 2024-05-30
(1231.90, 1216.90, '2024-05-30 11:17:00', 2, 114),
(1326.81, 1296.81, '2024-05-30 11:27:00', 10, 184),
(3014.20, 2984.20, '2024-05-30 11:37:00', 24, 254),
(511.20, 486.20, '2024-05-30 11:47:00', 42, 324),
(200.00, 178.00, '2024-05-30 16:22:00', 6, 149),
(1317.10, 1267.10, '2024-05-30 16:32:00', 15, 219),
(429.50, 411.50, '2024-05-30 16:42:00', 32, 289),
(178.00, 220.90, '2024-05-30 16:45:00', 6, 373),

-- Movimientos del 2024-05-31
(1216.90, 1198.90, '2024-05-31 12:24:00', 2, 115),
(738.50, 698.50, '2024-05-31 12:34:00', 11, 185),
(1198.90, 1216.90, '2024-05-31 12:36:00', 2, 450),
(2984.20, 2949.20, '2024-05-31 12:44:00', 24, 255),
(180.00, 172.00, '2024-05-31 12:54:00', 43, 325),
(2949.20, 3072.05, '2024-05-31 13:07:00', 24, 413),
(172.00, 189.60, '2024-05-31 13:17:00', 43, 441),
(220.90, 195.90, '2024-05-31 17:29:00', 6, 150),
(395.00, 380.00, '2024-05-31 17:39:00', 16, 220),
(411.50, 391.50, '2024-05-31 17:49:00', 32, 290),

-- Movimientos del 2024-06-01
(189.60, 179.60, '2024-06-01 13:01:00', 43, 326),
(1216.90, 1196.90, '2024-06-01 13:31:00', 2, 116),
(698.50, 653.50, '2024-06-01 13:41:00', 11, 186),
(500.00, 455.00, '2024-06-01 13:51:00', 25, 256),
(653.50, 748.00, '2024-06-01 14:04:00', 11, 386),
(195.90, 167.90, '2024-06-01 18:36:00', 6, 151),
(380.00, 362.00, '2024-06-01 18:46:00', 16, 221),
(167.90, 195.90, '2024-06-01 18:48:00', 6, 458),
(2500.00, 2475.00, '2024-06-01 18:56:00', 33, 291),
(362.00, 426.80, '2024-06-01 19:09:00', 16, 400),

-- Movimientos del 2024-06-02
(1072.00, 1057.00, '2024-06-02 14:08:00', 44, 327),
(1196.90, 1174.90, '2024-06-02 14:38:00', 2, 117),
(748.00, 698.00, '2024-06-02 14:48:00', 11, 187),
(455.00, 405.00, '2024-06-02 14:58:00', 25, 257),
(2475.00, 2447.00, '2024-06-02 19:03:00', 33, 292),
(195.90, 165.90, '2024-06-02 19:43:00', 6, 152),
(426.80, 406.80, '2024-06-02 19:53:00', 16, 222),

-- Movimientos del 2024-06-03
(406.80, 384.80, '2024-06-03 10:00:00', 16, 223),
(2447.00, 2417.00, '2024-06-03 10:10:00', 33, 293),
(384.80, 577.96, '2024-06-03 10:23:00', 16, 401),
(2417.00, 2475.50, '2024-06-03 10:33:00', 33, 427),
(165.90, 130.90, '2024-06-03 10:50:00', 6, 153),
(405.00, 393.00, '2024-06-03 15:05:00', 25, 258),
(1057.00, 1039.00, '2024-06-03 15:15:00', 44, 328),
(393.00, 419.40, '2024-06-03 15:28:00', 25, 414),
(1174.90, 1149.90, '2024-06-03 15:45:00', 2, 118),
(698.00, 686.00, '2024-06-03 15:55:00', 11, 188),
(1149.90, 1192.40, '2024-06-03 16:08:00', 2, 366),
(686.00, 708.20, '2024-06-03 16:18:00', 11, 387),

-- Movimientos del 2024-06-04
(2110.00, 2082.00, '2024-06-04 11:07:00', 17, 224),
(2475.50, 2440.50, '2024-06-04 11:17:00', 33, 294),
(130.90, 120.90, '2024-06-04 11:57:00', 6, 154),
(120.90, 137.90, '2024-06-04 12:20:00', 6, 374),
(708.20, 693.20, '2024-06-04 16:02:00', 11, 189),
(419.40, 404.40, '2024-06-04 16:12:00', 25, 259),
(285.00, 260.00, '2024-06-04 16:22:00', 45, 329),
(1192.40, 1164.40, '2024-06-04 16:52:00', 2, 119),

-- Movimientos del 2024-06-05
(137.90, 127.90, '2024-06-05 12:04:00', 6, 155),
(2082.00, 2052.00, '2024-06-05 12:14:00', 17, 225),
(2440.50, 2400.50, '2024-06-05 12:24:00', 33, 295),
(2400.50, 2621.30, '2024-06-05 12:47:00', 33, 428),
(693.20, 675.20, '2024-06-05 17:09:00', 11, 190),
(1100.00, 1080.00, '2024-06-05 17:19:00', 26, 260),
(260.00, 255.00, '2024-06-05 17:29:00', 45, 330),
(1164.40, 1134.40, '2024-06-05 17:59:00', 2, 120),
(1134.40, 1164.40, '2024-06-05 18:11:00', 2, 451),

-- Movimientos del 2024-06-06
(127.90, 117.90, '2024-06-06 13:11:00', 6, 156),
(2052.00, 2017.00, '2024-06-06 13:21:00', 17, 226),
(117.90, 127.90, '2024-06-06 13:23:00', 6, 459),
(580.00, 530.00, '2024-06-06 13:31:00', 34, 296),
(2017.00, 2101.00, '2024-06-06 13:44:00', 17, 402),
(1164.40, 1129.40, '2024-06-06 18:06:00', 2, 121),
(675.20, 655.20, '2024-06-06 18:16:00', 11, 191),
(1080.00, 1058.00, '2024-06-06 18:26:00', 26, 261),
(200.00, 190.00, '2024-06-06 18:36:00', 46, 331),
(655.20, 830.80, '2024-06-06 18:39:00', 11, 388),
(1058.00, 1104.20, '2024-06-06 18:49:00', 26, 415),

-- Movimientos del 2024-06-07
(3094.00, 3079.00, '2024-06-07 14:18:00', 7, 157),
(2101.00, 2061.00, '2024-06-07 14:28:00', 17, 227),
(530.00, 518.00, '2024-06-07 14:38:00', 34, 297),
(518.00, 539.60, '2024-06-07 15:01:00', 34, 429),
(434.00, 389.00, '2024-06-07 19:13:00', 3, 122),
(130.00, 105.00, '2024-06-07 19:23:00', 12, 192),
(1104.20, 1079.20, '2024-06-07 19:33:00', 26, 262),
(389.00, 551.00, '2024-06-07 19:36:00', 3, 367),
(190.00, 178.00, '2024-06-07 19:43:00', 46, 332),
(178.00, 190.00, '2024-06-07 19:55:00', 46, 460),

-- Movimientos del 2024-06-08
(551.00, 501.00, '2024-06-08 10:20:00', 3, 123),
(105.00, 77.00, '2024-06-08 10:30:00', 12, 193),
(1079.20, 1051.20, '2024-06-08 10:40:00', 26, 263),
(600.00, 582.00, '2024-06-08 10:50:00', 47, 333),
(1051.20, 1226.76, '2024-06-08 11:03:00', 26, 416),
(3079.00, 3061.00, '2024-06-08 15:25:00', 7, 158),
(625.00, 575.00, '2024-06-08 15:35:00', 18, 228),
(539.60, 524.60, '2024-06-08 15:45:00', 34, 298),

-- Movimientos del 2024-06-09
(501.00, 489.00, '2024-06-09 11:27:00', 3, 124),
(77.00, 47.00, '2024-06-09 11:37:00', 12, 194),
(489.00, 501.00, '2024-06-09 11:39:00', 3, 452),
(800.00, 765.00, '2024-06-09 11:47:00', 27, 264),
(582.00, 562.00, '2024-06-09 11:57:00', 47, 334),
(47.00, 105.50, '2024-06-09 12:00:00', 12, 389),
(562.00, 598.00, '2024-06-09 12:20:00', 47, 442),
(3061.00, 3041.00, '2024-06-09 16:32:00', 7, 159),
(575.00, 563.00, '2024-06-09 16:42:00', 18, 229),
(524.60, 506.60, '2024-06-09 16:52:00', 34, 299),
(3041.00, 3216.60, '2024-06-09 16:55:00', 7, 375),
(563.00, 586.40, '2024-06-09 17:05:00', 18, 403),

-- Movimientos del 2024-06-10
(1400.00, 1340.00, '2024-06-10 12:00:00', 19, 94),
(598.00, 573.00, '2024-06-10 12:04:00', 47, 335),
(501.00, 486.00, '2024-06-10 12:34:00', 3, 125),
(105.50, 70.50, '2024-06-10 12:44:00', 12, 195),
(765.00, 725.00, '2024-06-10 12:54:00', 27, 265),
(3216.60, 3194.60, '2024-06-10 17:39:00', 7, 160),
(586.40, 571.40, '2024-06-10 17:49:00', 18, 230),
(506.60, 486.60, '2024-06-10 17:59:00', 34, 300),
(486.60, 521.60, '2024-06-10 18:22:00', 34, 430),

-- Movimientos del 2024-06-11
(725.00, 680.00, '2024-06-11 13:01:00', 27, 266),
(1000.00, 992.00, '2024-06-11 13:11:00', 48, 336),
(680.00, 774.50, '2024-06-11 13:24:00', 27, 417),
(600.00, 480.00, '2024-06-11 13:30:00', 20, 95),
(486.00, 468.00, '2024-06-11 13:41:00', 3, 126),
(70.50, 30.50, '2024-06-11 13:51:00', 12, 196),
(30.50, 96.50, '2024-06-11 14:14:00', 12, 390),
(1500.00, 1475.00, '2024-06-11 18:06:00', 35, 301),
(3194.60, 3169.60, '2024-06-11 18:46:00', 7, 161),
(571.40, 553.40, '2024-06-11 18:56:00', 18, 231),
(3169.60, 3227.10, '2024-06-11 19:09:00', 7, 376),
(553.40, 618.74, '2024-06-11 19:19:00', 18, 404),

-- Movimientos del 2024-06-12
(774.50, 724.50, '2024-06-12 14:08:00', 27, 267),
(992.00, 982.00, '2024-06-12 14:18:00', 48, 337),
(468.00, 448.00, '2024-06-12 14:48:00', 3, 127),
(96.50, 51.50, '2024-06-12 14:58:00', 12, 197),
(800.00, 705.00, '2024-06-12 15:00:00', 21, 96),
(448.00, 623.60, '2024-06-12 15:11:00', 3, 368),
(1340.00, 1318.00, '2024-06-12 19:03:00', 19, 232),
(1475.00, 1447.00, '2024-06-12 19:13:00', 35, 302),
(1447.00, 1539.40, '2024-06-12 19:36:00', 35, 431),
(3227.10, 3199.10, '2024-06-12 19:53:00', 7, 162),

-- Movimientos del 2024-06-13
(3199.10, 3169.10, '2024-06-13 10:00:00', 7, 163),
(1318.00, 1293.00, '2024-06-13 10:10:00', 19, 233),
(1539.40, 1509.40, '2024-06-13 10:20:00', 35, 303),
(340.10, 270.10, '2024-06-13 10:30:00', 23, 97),
(51.50, 1.50, '2024-06-13 15:05:00', 12, 198),
(260.00, 245.00, '2024-06-13 15:15:00', 28, 268),
(982.00, 970.00, '2024-06-13 15:25:00', 48, 338),
(970.00, 992.80, '2024-06-13 15:48:00', 48, 443),
(623.60, 601.60, '2024-06-13 15:55:00', 3, 128),

-- Movimientos del 2024-06-14
(1275.00, 1235.00, '2024-06-14 11:07:00', 8, 164),
(1293.00, 1265.00, '2024-06-14 11:17:00', 19, 234),
(1509.40, 1474.40, '2024-06-14 11:27:00', 35, 304),
(1235.00, 1301.00, '2024-06-14 11:30:00', 8, 377),
(1265.00, 1323.80, '2024-06-14 11:40:00', 19, 405),
(1474.40, 1547.90, '2024-06-14 11:50:00', 35, 432),
(601.60, 576.60, '2024-06-14 16:02:00', 3, 129),
(2880.00, 2865.00, '2024-06-14 16:12:00', 13, 199),
(576.60, 601.60, '2024-06-14 16:14:00', 3, 453),
(245.00, 227.00, '2024-06-14 16:22:00', 28, 269),
(326.00, 308.00, '2024-06-14 16:32:00', 49, 339),
(2865.00, 2959.05, '2024-06-14 16:35:00', 13, 391),
(3072.05, 2922.05, '2024-06-14 16:45:00', 24, 98),
(227.00, 264.80, '2024-06-14 16:45:00', 28, 418),
(308.00, 432.74, '2024-06-14 16:55:00', 49, 444),

-- Movimientos del 2024-06-15
(404.40, 359.40, '2024-06-15 11:20:00', 25, 99),
(1301.00, 1256.00, '2024-06-15 12:14:00', 8, 165),
(1323.80, 1293.80, '2024-06-15 12:24:00', 19, 235),
(1547.90, 1507.90, '2024-06-15 12:34:00', 35, 305),
(601.60, 573.60, '2024-06-15 17:09:00', 3, 130),
(2959.05, 2941.05, '2024-06-15 17:19:00', 13, 200),
(264.80, 244.80, '2024-06-15 17:29:00', 28, 270),
(432.74, 412.74, '2024-06-15 17:39:00', 49, 340),

-- Movimientos del 2024-06-16
(1226.76, 1146.76, '2024-06-16 09:40:00', 26, 100),
(1256.00, 1206.00, '2024-06-16 13:21:00', 8, 166),
(480.00, 440.00, '2024-06-16 13:31:00', 20, 236),
(440.00, 390.00, '2024-06-16 13:41:00', 36, 306),
(390.00, 475.00, '2024-06-16 14:04:00', 36, 433),
(348.00, 318.00, '2024-06-16 17:00:00', 54, 93),
(2068.00, 2033.00, '2024-06-16 18:16:00', 4, 131),
(2941.05, 2921.05, '2024-06-16 18:26:00', 13, 201),
(244.80, 222.80, '2024-06-16 18:36:00', 28, 271),
(2033.00, 2190.15, '2024-06-16 18:39:00', 4, 369),
(745.00, 740.00, '2024-06-16 18:46:00', 50, 341),
(222.80, 292.10, '2024-06-16 18:59:00', 28, 419),

-- Movimientos del 2024-06-17
(724.50, 689.50, '2024-06-17 14:10:00', 27, 101),
(1206.00, 1194.00, '2024-06-17 14:28:00', 8, 167),
(440.00, 395.00, '2024-06-17 14:38:00', 20, 237),
(475.00, 463.00, '2024-06-17 14:48:00', 36, 307),
(1194.00, 1269.24, '2024-06-17 14:51:00', 8, 378),
(395.00, 480.50, '2024-06-17 15:01:00', 20, 406),
(2190.15, 2150.15, '2024-06-17 19:23:00', 4, 132),
(2921.05, 2899.05, '2024-06-17 19:33:00', 13, 202),
(2000.00, 1972.00, '2024-06-17 19:43:00', 29, 272),
(740.00, 732.00, '2024-06-17 19:53:00', 50, 342),
(2899.05, 2945.25, '2024-06-17 19:56:00', 13, 392),

-- Movimientos del 2024-06-18
(190.00, 130.00, '2024-06-18 02:00:00', 46, 88),
(105.00, 93.00, '2024-06-18 10:00:00', 51, 343),
(2150.15, 2105.15, '2024-06-18 10:30:00', 4, 133),
(2945.25, 2920.25, '2024-06-18 10:40:00', 13, 203),
(2105.15, 2150.15, '2024-06-18 10:42:00', 4, 454),
(1972.00, 1942.00, '2024-06-18 10:50:00', 29, 273),
(1269.24, 1254.24, '2024-06-18 15:35:00', 8, 168),
(480.50, 430.50, '2024-06-18 15:45:00', 20, 238),
(463.00, 448.00, '2024-06-18 15:55:00', 36, 308),
(292.10, 192.10, '2024-06-18 18:30:00', 28, 102),

-- Movimientos del 2024-06-19
(93.00, 78.00, '2024-06-19 11:07:00', 51, 344),
(2150.15, 2100.15, '2024-06-19 11:37:00', 4, 134),
(2920.25, 2892.25, '2024-06-19 11:47:00', 13, 204),
(1942.00, 1907.00, '2024-06-19 11:57:00', 29, 274),
(2892.25, 2944.05, '2024-06-19 12:10:00', 13, 393),
(1907.00, 1857.00, '2024-06-19 12:15:00', 29, 103),
(1857.00, 1983.00, '2024-06-19 12:20:00', 29, 420),
(800.00, 780.00, '2024-06-19 16:02:00', 37, 309),
(1254.24, 1236.24, '2024-06-19 16:42:00', 8, 169),
(430.50, 418.50, '2024-06-19 16:52:00', 20, 239),
(1236.24, 1271.34, '2024-06-19 17:05:00', 8, 379),
(418.50, 467.70, '2024-06-19 17:15:00', 20, 407),

-- Movimientos del 2024-06-20
(1983.00, 1943.00, '2024-06-20 12:04:00', 29, 275),
(770.00, 750.00, '2024-06-20 12:14:00', 52, 345),
(2100.15, 2088.15, '2024-06-20 12:44:00', 4, 135),
(2944.05, 2914.05, '2024-06-20 12:54:00', 13, 205),
(780.00, 758.00, '2024-06-20 17:09:00', 37, 310),
(758.00, 857.00, '2024-06-20 17:32:00', 37, 434),
(1271.34, 1251.34, '2024-06-20 17:49:00', 8, 170),
(705.00, 687.00, '2024-06-20 17:59:00', 21, 240),

-- Movimientos del 2024-06-21
(489.50, 449.50, '2024-06-21 13:01:00', 14, 206),
(491.36, 441.36, '2024-06-21 13:11:00', 30, 276),
(750.00, 725.00, '2024-06-21 13:21:00', 52, 346),
(725.00, 750.00, '2024-06-21 13:33:00', 52, 461),
(2088.15, 2073.15, '2024-06-21 13:51:00', 4, 136),
(2073.15, 2106.15, '2024-06-21 14:14:00', 4, 370),
(687.00, 667.00, '2024-06-21 18:06:00', 21, 241),
(857.00, 832.00, '2024-06-21 18:16:00', 37, 311),
(706.20, 681.20, '2024-06-21 18:56:00', 9, 171),

-- Movimientos del 2024-06-22
(449.50, 404.50, '2024-06-22 14:08:00', 14, 207),
(441.36, 429.36, '2024-06-22 14:18:00', 30, 277),
(595.00, 587.00, '2024-06-22 14:28:00', 53, 347),
(404.50, 799.60, '2024-06-22 14:31:00', 14, 394),
(429.36, 452.76, '2024-06-22 14:41:00', 30, 421),
(2106.15, 2088.15, '2024-06-22 14:58:00', 4, 137),
(681.20, 653.20, '2024-06-22 19:03:00', 9, 172),
(667.00, 645.00, '2024-06-22 19:13:00', 21, 242),
(250.00, 220.00, '2024-06-22 19:23:00', 38, 312),
(653.20, 705.00, '2024-06-22 19:26:00', 9, 380),
(645.00, 691.20, '2024-06-22 19:36:00', 21, 408),

-- Movimientos del 2024-06-23
(705.00, 675.00, '2024-06-23 10:10:00', 9, 173),
(691.20, 666.20, '2024-06-23 10:20:00', 21, 243),
(220.00, 185.00, '2024-06-23 10:30:00', 38, 313),
(185.00, 248.00, '2024-06-23 10:53:00', 38, 435),
(2088.15, 2068.15, '2024-06-23 15:05:00', 4, 138),
(799.60, 749.60, '2024-06-23 15:15:00', 14, 208),
(2068.15, 2088.15, '2024-06-23 15:17:00', 4, 455),
(452.76, 437.76, '2024-06-23 15:25:00', 30, 278),
(587.00, 577.00, '2024-06-23 15:35:00', 53, 348),
(577.00, 596.50, '2024-06-23 15:58:00', 53, 445)

GO

-- 23. Tabla Comprobante ----------
INSERT INTO Comprobante (numero_comprobante, fecha_emision, url_pdf, id_transaccion) VALUES

-- DEPÓSITOS (id_transaccion 1-30)
('COMP-DEP-001', '2024-01-05 10:05:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-001.pdf', 1),
('COMP-DEP-002', '2024-01-06 11:03:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-002.pdf', 2),
('COMP-DEP-003', '2024-01-07 09:02:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-003.pdf', 3),
('COMP-DEP-004', '2024-01-08 14:04:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-004.pdf', 4),
('COMP-DEP-005', '2024-01-09 16:02:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-005.pdf', 5),
('COMP-DEP-006', '2024-01-10 08:03:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-006.pdf', 6),
('COMP-DEP-007', '2024-01-11 12:05:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-007.pdf', 7),
('COMP-DEP-008', '2024-01-12 17:02:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-008.pdf', 8),
('COMP-DEP-009', '2024-01-13 10:03:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-009.pdf', 9),
('COMP-DEP-010', '2024-01-14 13:04:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-010.pdf', 10),
('COMP-DEP-011', '2024-01-15 09:02:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-011.pdf', 11),
('COMP-DEP-012', '2024-01-16 15:03:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-012.pdf', 12),
('COMP-DEP-013', '2024-01-17 11:04:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-013.pdf', 13),
('COMP-DEP-014', '2024-01-18 14:02:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-014.pdf', 14),
('COMP-DEP-015', '2024-01-19 10:03:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-015.pdf', 15),
('COMP-DEP-016', '2024-01-20 16:02:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-016.pdf', 16),
('COMP-DEP-017', '2024-01-21 09:04:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-017.pdf', 17),
('COMP-DEP-018', '2024-01-22 13:02:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-018.pdf', 18),
('COMP-DEP-019', '2024-01-23 11:03:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-019.pdf', 19),
('COMP-DEP-020', '2024-01-24 10:02:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-020.pdf', 20),
('COMP-DEP-021', '2024-01-25 10:03:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-021.pdf', 21),
('COMP-DEP-022', '2024-01-26 11:02:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-022.pdf', 22),
('COMP-DEP-023', '2024-01-27 09:03:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-023.pdf', 23),
('COMP-DEP-024', '2024-01-28 14:04:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-024.pdf', 24),
('COMP-DEP-025', '2024-01-29 16:02:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-025.pdf', 25),
('COMP-DEP-026', '2024-01-30 10:03:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-026.pdf', 26),
('COMP-DEP-027', '2024-01-31 11:04:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-027.pdf', 27),
('COMP-DEP-028', '2024-02-01 09:02:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-028.pdf', 28),
('COMP-DEP-029', '2024-02-02 14:03:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-029.pdf', 29),
('COMP-DEP-030', '2024-02-03 16:02:00', 'https://docs.apuestaganadora.com/comprobantes/DEP-030.pdf', 30),

-- RETIROS COMPLETADOS (id_transaccion 31-36)
('COMP-RET-001', '2024-02-05 10:10:00', 'https://docs.apuestaganadora.com/comprobantes/RET-001.pdf', 31),
('COMP-RET-002', '2024-02-06 11:08:00', 'https://docs.apuestaganadora.com/comprobantes/RET-002.pdf', 32),
('COMP-RET-003', '2024-02-07 09:07:00', 'https://docs.apuestaganadora.com/comprobantes/RET-003.pdf', 33),
('COMP-RET-004', '2024-02-08 14:06:00', 'https://docs.apuestaganadora.com/comprobantes/RET-004.pdf', 34),
('COMP-RET-005', '2024-02-09 16:05:00', 'https://docs.apuestaganadora.com/comprobantes/RET-005.pdf', 35),
('COMP-RET-006', '2024-02-10 08:08:00', 'https://docs.apuestaganadora.com/comprobantes/RET-006.pdf', 36),

-- PREMIOS (id_transaccion 42-47)
('COMP-PRE-001', '2024-03-16 18:05:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-001.pdf', 42),
('COMP-PRE-002', '2024-03-17 20:05:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-002.pdf', 43),
('COMP-PRE-003', '2024-03-22 19:04:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-003.pdf', 44),
('COMP-PRE-004', '2024-03-24 21:05:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-004.pdf', 45),
('COMP-PRE-005', '2024-03-31 17:03:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-005.pdf', 46),
('COMP-PRE-006', '2024-04-07 20:04:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-006.pdf', 47),

-- BONIFICACIONES (id_transaccion 48-53)
('COMP-BON-001', '2024-02-15 10:01:00', 'https://docs.apuestaganadora.com/comprobantes/BON-001.pdf', 48),
('COMP-BON-002', '2024-02-15 10:01:00', 'https://docs.apuestaganadora.com/comprobantes/BON-002.pdf', 49),
('COMP-BON-003', '2024-02-15 10:01:00', 'https://docs.apuestaganadora.com/comprobantes/BON-003.pdf', 50),
('COMP-BON-004', '2024-03-01 10:01:00', 'https://docs.apuestaganadora.com/comprobantes/BON-004.pdf', 51),
('COMP-BON-005', '2024-03-01 10:01:00', 'https://docs.apuestaganadora.com/comprobantes/BON-005.pdf', 52),
('COMP-BON-006', '2024-03-15 10:01:00', 'https://docs.apuestaganadora.com/comprobantes/BON-006.pdf', 53),

-- DEVOLUCIONES (id_transaccion 54-57)
('COMP-DEV-001', '2024-04-05 12:03:00', 'https://docs.apuestaganadora.com/comprobantes/DEV-001.pdf', 54),
('COMP-DEV-002', '2024-04-10 14:02:00', 'https://docs.apuestaganadora.com/comprobantes/DEV-002.pdf', 55),
('COMP-DEV-003', '2024-04-15 16:03:00', 'https://docs.apuestaganadora.com/comprobantes/DEV-003.pdf', 56),
('COMP-DEV-004', '2024-04-20 10:02:00', 'https://docs.apuestaganadora.com/comprobantes/DEV-004.pdf', 57),

-- APUESTAS (id_transaccion 58-67)
('COMP-APU-001', '2024-03-15 15:30:00', 'https://docs.apuestaganadora.com/comprobantes/APU-001.pdf', 58),
('COMP-APU-002', '2024-03-22 20:30:00', 'https://docs.apuestaganadora.com/comprobantes/APU-002.pdf', 59),
('COMP-APU-003', '2024-03-17 17:30:00', 'https://docs.apuestaganadora.com/comprobantes/APU-003.pdf', 60),
('COMP-APU-004', '2024-03-24 21:00:00', 'https://docs.apuestaganadora.com/comprobantes/APU-004.pdf', 61),
('COMP-APU-005', '2024-03-31 17:00:00', 'https://docs.apuestaganadora.com/comprobantes/APU-005.pdf', 62),
('COMP-APU-006', '2024-04-07 20:00:00', 'https://docs.apuestaganadora.com/comprobantes/APU-006.pdf', 63),
('COMP-APU-007', '2024-04-09 21:30:00', 'https://docs.apuestaganadora.com/comprobantes/APU-007.pdf', 64),
('COMP-APU-008', '2024-04-16 20:00:00', 'https://docs.apuestaganadora.com/comprobantes/APU-008.pdf', 65),
('COMP-APU-009', '2024-04-21 19:30:00', 'https://docs.apuestaganadora.com/comprobantes/APU-009.pdf', 66),
('COMP-APU-010', '2024-04-28 16:00:00', 'https://docs.apuestaganadora.com/comprobantes/APU-010.pdf', 67),

-- COMISIONES (id_transaccion 68-73)
('COMP-COM-001', '2024-02-05 10:10:00', 'https://docs.apuestaganadora.com/comprobantes/COM-001.pdf', 68),
('COMP-COM-002', '2024-02-06 11:08:00', 'https://docs.apuestaganadora.com/comprobantes/COM-002.pdf', 69),
('COMP-COM-003', '2024-02-07 09:07:00', 'https://docs.apuestaganadora.com/comprobantes/COM-003.pdf', 70),
('COMP-COM-004', '2024-02-08 14:06:00', 'https://docs.apuestaganadora.com/comprobantes/COM-004.pdf', 71),
('COMP-COM-005', '2024-02-09 16:05:00', 'https://docs.apuestaganadora.com/comprobantes/COM-005.pdf', 72),
('COMP-COM-006', '2024-02-10 08:08:00', 'https://docs.apuestaganadora.com/comprobantes/COM-006.pdf', 73),

--NUEVO
('COMP-APU-011', '2024-03-08 02:00:00', 'https://docs.apuestaganadora.com/comprobantes/APU-011.pdf', 74),
('COMP-APU-012', '2024-03-15 02:30:00', 'https://docs.apuestaganadora.com/comprobantes/APU-012.pdf', 75),
('COMP-APU-013', '2024-03-09 17:00:00', 'https://docs.apuestaganadora.com/comprobantes/APU-013.pdf', 76),
('COMP-APU-014', '2024-03-10 20:30:00', 'https://docs.apuestaganadora.com/comprobantes/APU-014.pdf', 77),
('COMP-APU-015', '2024-03-16 20:30:00', 'https://docs.apuestaganadora.com/comprobantes/APU-015.pdf', 78),
('COMP-APU-016', '2024-03-17 20:20:00', 'https://docs.apuestaganadora.com/comprobantes/APU-016.pdf', 79),
('COMP-APU-017', '2024-03-21 19:30:00', 'https://docs.apuestaganadora.com/comprobantes/APU-017.pdf', 80),
('COMP-APU-018', '2024-03-24 18:30:00', 'https://docs.apuestaganadora.com/comprobantes/APU-018.pdf', 81),
('COMP-APU-019', '2024-03-09 17:30:00', 'https://docs.apuestaganadora.com/comprobantes/APU-019.pdf', 82),
('COMP-APU-020', '2024-03-10 17:30:00', 'https://docs.apuestaganadora.com/comprobantes/APU-020.pdf', 83),
('COMP-APU-021', '2024-03-08 02:10:00', 'https://docs.apuestaganadora.com/comprobantes/APU-021.pdf', 84),
('COMP-APU-022', '2024-03-14 19:30:00', 'https://docs.apuestaganadora.com/comprobantes/APU-022.pdf', 85),
('COMP-APU-023', '2024-04-05 03:00:00', 'https://docs.apuestaganadora.com/comprobantes/APU-023.pdf', 86),
('COMP-APU-024', '2024-03-15 03:20:00', 'https://docs.apuestaganadora.com/comprobantes/APU-024.pdf', 87),
('COMP-APU-025', '2024-06-18 02:00:00', 'https://docs.apuestaganadora.com/comprobantes/APU-025.pdf', 88),
('COMP-APU-026', '2024-03-14 19:40:00', 'https://docs.apuestaganadora.com/comprobantes/APU-026.pdf', 89),
('COMP-APU-027', '2024-03-21 19:30:00', 'https://docs.apuestaganadora.com/comprobantes/APU-027.pdf', 90),
('COMP-APU-028', '2024-04-16 20:30:00', 'https://docs.apuestaganadora.com/comprobantes/APU-028.pdf', 91),
('COMP-APU-029', '2024-03-10 17:30:00', 'https://docs.apuestaganadora.com/comprobantes/APU-029.pdf', 92),
('COMP-APU-030', '2024-06-16 17:00:00', 'https://docs.apuestaganadora.com/comprobantes/APU-030.pdf', 93),
('COMP-APU-031', '2024-06-10 12:00:00', 'https://docs.apuestaganadora.com/comprobantes/APU-031.pdf', 94),
('COMP-APU-032', '2024-06-11 13:30:00', 'https://docs.apuestaganadora.com/comprobantes/APU-032.pdf', 95),
('COMP-APU-033', '2024-06-12 15:00:00', 'https://docs.apuestaganadora.com/comprobantes/APU-033.pdf', 96),
('COMP-APU-034', '2024-06-13 10:30:00', 'https://docs.apuestaganadora.com/comprobantes/APU-034.pdf', 97),
('COMP-APU-035', '2024-06-14 16:45:00', 'https://docs.apuestaganadora.com/comprobantes/APU-035.pdf', 98),
('COMP-APU-036', '2024-06-15 11:20:00', 'https://docs.apuestaganadora.com/comprobantes/APU-036.pdf', 99),
('COMP-APU-037', '2024-06-16 09:40:00', 'https://docs.apuestaganadora.com/comprobantes/APU-037.pdf', 100),
('COMP-APU-038', '2024-06-17 14:10:00', 'https://docs.apuestaganadora.com/comprobantes/APU-038.pdf', 101),
('COMP-APU-039', '2024-06-18 18:30:00', 'https://docs.apuestaganadora.com/comprobantes/APU-039.pdf', 102),
('COMP-APU-040', '2024-06-19 12:15:00', 'https://docs.apuestaganadora.com/comprobantes/APU-040.pdf', 103),
('COMP-APU-041', '2024-05-20 11:07:00', 'https://docs.apuestaganadora.com/comprobantes/APU-041.pdf', 104),
('COMP-APU-042', '2024-05-21 12:14:00', 'https://docs.apuestaganadora.com/comprobantes/APU-042.pdf', 105),
('COMP-APU-043', '2024-05-22 13:21:00', 'https://docs.apuestaganadora.com/comprobantes/APU-043.pdf', 106),
('COMP-APU-044', '2024-05-23 14:28:00', 'https://docs.apuestaganadora.com/comprobantes/APU-044.pdf', 107),
('COMP-APU-045', '2024-05-24 15:35:00', 'https://docs.apuestaganadora.com/comprobantes/APU-045.pdf', 108),
('COMP-APU-046', '2024-05-25 16:42:00', 'https://docs.apuestaganadora.com/comprobantes/APU-046.pdf', 109),
('COMP-APU-047', '2024-05-26 17:49:00', 'https://docs.apuestaganadora.com/comprobantes/APU-047.pdf', 110),
('COMP-APU-048', '2024-05-27 18:56:00', 'https://docs.apuestaganadora.com/comprobantes/APU-048.pdf', 111),
('COMP-APU-049', '2024-05-28 19:03:00', 'https://docs.apuestaganadora.com/comprobantes/APU-049.pdf', 112),
('COMP-APU-050', '2024-05-29 10:10:00', 'https://docs.apuestaganadora.com/comprobantes/APU-050.pdf', 113),
('COMP-APU-051', '2024-05-30 11:17:00', 'https://docs.apuestaganadora.com/comprobantes/APU-051.pdf', 114),
('COMP-APU-052', '2024-05-31 12:24:00', 'https://docs.apuestaganadora.com/comprobantes/APU-052.pdf', 115),
('COMP-APU-053', '2024-06-01 13:31:00', 'https://docs.apuestaganadora.com/comprobantes/APU-053.pdf', 116),
('COMP-APU-054', '2024-06-02 14:38:00', 'https://docs.apuestaganadora.com/comprobantes/APU-054.pdf', 117),
('COMP-APU-055', '2024-06-03 15:45:00', 'https://docs.apuestaganadora.com/comprobantes/APU-055.pdf', 118),
('COMP-APU-056', '2024-06-04 16:52:00', 'https://docs.apuestaganadora.com/comprobantes/APU-056.pdf', 119),
('COMP-APU-057', '2024-06-05 17:59:00', 'https://docs.apuestaganadora.com/comprobantes/APU-057.pdf', 120),
('COMP-APU-058', '2024-06-06 18:06:00', 'https://docs.apuestaganadora.com/comprobantes/APU-058.pdf', 121),
('COMP-APU-059', '2024-06-07 19:13:00', 'https://docs.apuestaganadora.com/comprobantes/APU-059.pdf', 122),
('COMP-APU-060', '2024-06-08 10:20:00', 'https://docs.apuestaganadora.com/comprobantes/APU-060.pdf', 123),
('COMP-APU-061', '2024-06-09 11:27:00', 'https://docs.apuestaganadora.com/comprobantes/APU-061.pdf', 124),
('COMP-APU-062', '2024-06-10 12:34:00', 'https://docs.apuestaganadora.com/comprobantes/APU-062.pdf', 125),
('COMP-APU-063', '2024-06-11 13:41:00', 'https://docs.apuestaganadora.com/comprobantes/APU-063.pdf', 126),
('COMP-APU-064', '2024-06-12 14:48:00', 'https://docs.apuestaganadora.com/comprobantes/APU-064.pdf', 127),
('COMP-APU-065', '2024-06-13 15:55:00', 'https://docs.apuestaganadora.com/comprobantes/APU-065.pdf', 128),
('COMP-APU-066', '2024-06-14 16:02:00', 'https://docs.apuestaganadora.com/comprobantes/APU-066.pdf', 129),
('COMP-APU-067', '2024-06-15 17:09:00', 'https://docs.apuestaganadora.com/comprobantes/APU-067.pdf', 130),
('COMP-APU-068', '2024-06-16 18:16:00', 'https://docs.apuestaganadora.com/comprobantes/APU-068.pdf', 131),
('COMP-APU-069', '2024-06-17 19:23:00', 'https://docs.apuestaganadora.com/comprobantes/APU-069.pdf', 132),
('COMP-APU-070', '2024-06-18 10:30:00', 'https://docs.apuestaganadora.com/comprobantes/APU-070.pdf', 133),
('COMP-APU-071', '2024-06-19 11:37:00', 'https://docs.apuestaganadora.com/comprobantes/APU-071.pdf', 134),
('COMP-APU-072', '2024-06-20 12:44:00', 'https://docs.apuestaganadora.com/comprobantes/APU-072.pdf', 135),
('COMP-APU-073', '2024-06-21 13:51:00', 'https://docs.apuestaganadora.com/comprobantes/APU-073.pdf', 136),
('COMP-APU-074', '2024-06-22 14:58:00', 'https://docs.apuestaganadora.com/comprobantes/APU-074.pdf', 137),
('COMP-APU-075', '2024-06-23 15:05:00', 'https://docs.apuestaganadora.com/comprobantes/APU-075.pdf', 138),
('COMP-APU-076', '2024-05-20 16:12:00', 'https://docs.apuestaganadora.com/comprobantes/APU-076.pdf', 139),
('COMP-APU-077', '2024-05-21 17:19:00', 'https://docs.apuestaganadora.com/comprobantes/APU-077.pdf', 140),
('COMP-APU-078', '2024-05-22 18:26:00', 'https://docs.apuestaganadora.com/comprobantes/APU-078.pdf', 141),
('COMP-APU-079', '2024-05-23 19:33:00', 'https://docs.apuestaganadora.com/comprobantes/APU-079.pdf', 142),
('COMP-APU-080', '2024-05-24 10:40:00', 'https://docs.apuestaganadora.com/comprobantes/APU-080.pdf', 143),
('COMP-APU-081', '2024-05-25 11:47:00', 'https://docs.apuestaganadora.com/comprobantes/APU-081.pdf', 144),
('COMP-APU-082', '2024-05-26 12:54:00', 'https://docs.apuestaganadora.com/comprobantes/APU-082.pdf', 145),
('COMP-APU-083', '2024-05-27 13:01:00', 'https://docs.apuestaganadora.com/comprobantes/APU-083.pdf', 146),
('COMP-APU-084', '2024-05-28 14:08:00', 'https://docs.apuestaganadora.com/comprobantes/APU-084.pdf', 147),
('COMP-APU-085', '2024-05-29 15:15:00', 'https://docs.apuestaganadora.com/comprobantes/APU-085.pdf', 148),
('COMP-APU-086', '2024-05-30 16:22:00', 'https://docs.apuestaganadora.com/comprobantes/APU-086.pdf', 149),
('COMP-APU-087', '2024-05-31 17:29:00', 'https://docs.apuestaganadora.com/comprobantes/APU-087.pdf', 150),
('COMP-APU-088', '2024-06-01 18:36:00', 'https://docs.apuestaganadora.com/comprobantes/APU-088.pdf', 151),
('COMP-APU-089', '2024-06-02 19:43:00', 'https://docs.apuestaganadora.com/comprobantes/APU-089.pdf', 152),
('COMP-APU-090', '2024-06-03 10:50:00', 'https://docs.apuestaganadora.com/comprobantes/APU-090.pdf', 153),
('COMP-APU-091', '2024-06-04 11:57:00', 'https://docs.apuestaganadora.com/comprobantes/APU-091.pdf', 154),
('COMP-APU-092', '2024-06-05 12:04:00', 'https://docs.apuestaganadora.com/comprobantes/APU-092.pdf', 155),
('COMP-APU-093', '2024-06-06 13:11:00', 'https://docs.apuestaganadora.com/comprobantes/APU-093.pdf', 156),
('COMP-APU-094', '2024-06-07 14:18:00', 'https://docs.apuestaganadora.com/comprobantes/APU-094.pdf', 157),
('COMP-APU-095', '2024-06-08 15:25:00', 'https://docs.apuestaganadora.com/comprobantes/APU-095.pdf', 158),
('COMP-APU-096', '2024-06-09 16:32:00', 'https://docs.apuestaganadora.com/comprobantes/APU-096.pdf', 159),
('COMP-APU-097', '2024-06-10 17:39:00', 'https://docs.apuestaganadora.com/comprobantes/APU-097.pdf', 160),
('COMP-APU-098', '2024-06-11 18:46:00', 'https://docs.apuestaganadora.com/comprobantes/APU-098.pdf', 161),
('COMP-APU-099', '2024-06-12 19:53:00', 'https://docs.apuestaganadora.com/comprobantes/APU-099.pdf', 162),
('COMP-APU-100', '2024-06-13 10:00:00', 'https://docs.apuestaganadora.com/comprobantes/APU-100.pdf', 163),
('COMP-APU-101', '2024-06-14 11:07:00', 'https://docs.apuestaganadora.com/comprobantes/APU-101.pdf', 164),
('COMP-APU-102', '2024-06-15 12:14:00', 'https://docs.apuestaganadora.com/comprobantes/APU-102.pdf', 165),
('COMP-APU-103', '2024-06-16 13:21:00', 'https://docs.apuestaganadora.com/comprobantes/APU-103.pdf', 166),
('COMP-APU-104', '2024-06-17 14:28:00', 'https://docs.apuestaganadora.com/comprobantes/APU-104.pdf', 167),
('COMP-APU-105', '2024-06-18 15:35:00', 'https://docs.apuestaganadora.com/comprobantes/APU-105.pdf', 168),
('COMP-APU-106', '2024-06-19 16:42:00', 'https://docs.apuestaganadora.com/comprobantes/APU-106.pdf', 169),
('COMP-APU-107', '2024-06-20 17:49:00', 'https://docs.apuestaganadora.com/comprobantes/APU-107.pdf', 170),
('COMP-APU-108', '2024-06-21 18:56:00', 'https://docs.apuestaganadora.com/comprobantes/APU-108.pdf', 171),
('COMP-APU-109', '2024-06-22 19:03:00', 'https://docs.apuestaganadora.com/comprobantes/APU-109.pdf', 172),
('COMP-APU-110', '2024-06-23 10:10:00', 'https://docs.apuestaganadora.com/comprobantes/APU-110.pdf', 173),
('COMP-APU-111', '2024-05-20 11:17:00', 'https://docs.apuestaganadora.com/comprobantes/APU-111.pdf', 174),
('COMP-APU-112', '2024-05-21 12:24:00', 'https://docs.apuestaganadora.com/comprobantes/APU-112.pdf', 175),
('COMP-APU-113', '2024-05-22 13:31:00', 'https://docs.apuestaganadora.com/comprobantes/APU-113.pdf', 176),
('COMP-APU-114', '2024-05-23 14:38:00', 'https://docs.apuestaganadora.com/comprobantes/APU-114.pdf', 177),
('COMP-APU-115', '2024-05-24 15:45:00', 'https://docs.apuestaganadora.com/comprobantes/APU-115.pdf', 178),
('COMP-APU-116', '2024-05-25 16:52:00', 'https://docs.apuestaganadora.com/comprobantes/APU-116.pdf', 179),
('COMP-APU-117', '2024-05-26 17:59:00', 'https://docs.apuestaganadora.com/comprobantes/APU-117.pdf', 180),
('COMP-APU-118', '2024-05-27 18:06:00', 'https://docs.apuestaganadora.com/comprobantes/APU-118.pdf', 181),
('COMP-APU-119', '2024-05-28 19:13:00', 'https://docs.apuestaganadora.com/comprobantes/APU-119.pdf', 182),
('COMP-APU-120', '2024-05-29 10:20:00', 'https://docs.apuestaganadora.com/comprobantes/APU-120.pdf', 183),
('COMP-APU-121', '2024-05-30 11:27:00', 'https://docs.apuestaganadora.com/comprobantes/APU-121.pdf', 184),
('COMP-APU-122', '2024-05-31 12:34:00', 'https://docs.apuestaganadora.com/comprobantes/APU-122.pdf', 185),
('COMP-APU-123', '2024-06-01 13:41:00', 'https://docs.apuestaganadora.com/comprobantes/APU-123.pdf', 186),
('COMP-APU-124', '2024-06-02 14:48:00', 'https://docs.apuestaganadora.com/comprobantes/APU-124.pdf', 187),
('COMP-APU-125', '2024-06-03 15:55:00', 'https://docs.apuestaganadora.com/comprobantes/APU-125.pdf', 188),
('COMP-APU-126', '2024-06-04 16:02:00', 'https://docs.apuestaganadora.com/comprobantes/APU-126.pdf', 189),
('COMP-APU-127', '2024-06-05 17:09:00', 'https://docs.apuestaganadora.com/comprobantes/APU-127.pdf', 190),
('COMP-APU-128', '2024-06-06 18:16:00', 'https://docs.apuestaganadora.com/comprobantes/APU-128.pdf', 191),
('COMP-APU-129', '2024-06-07 19:23:00', 'https://docs.apuestaganadora.com/comprobantes/APU-129.pdf', 192),
('COMP-APU-130', '2024-06-08 10:30:00', 'https://docs.apuestaganadora.com/comprobantes/APU-130.pdf', 193),
('COMP-APU-131', '2024-06-09 11:37:00', 'https://docs.apuestaganadora.com/comprobantes/APU-131.pdf', 194),
('COMP-APU-132', '2024-06-10 12:44:00', 'https://docs.apuestaganadora.com/comprobantes/APU-132.pdf', 195),
('COMP-APU-133', '2024-06-11 13:51:00', 'https://docs.apuestaganadora.com/comprobantes/APU-133.pdf', 196),
('COMP-APU-134', '2024-06-12 14:58:00', 'https://docs.apuestaganadora.com/comprobantes/APU-134.pdf', 197),
('COMP-APU-135', '2024-06-13 15:05:00', 'https://docs.apuestaganadora.com/comprobantes/APU-135.pdf', 198),
('COMP-APU-136', '2024-06-14 16:12:00', 'https://docs.apuestaganadora.com/comprobantes/APU-136.pdf', 199),
('COMP-APU-137', '2024-06-15 17:19:00', 'https://docs.apuestaganadora.com/comprobantes/APU-137.pdf', 200),
('COMP-APU-138', '2024-06-16 18:26:00', 'https://docs.apuestaganadora.com/comprobantes/APU-138.pdf', 201),
('COMP-APU-139', '2024-06-17 19:33:00', 'https://docs.apuestaganadora.com/comprobantes/APU-139.pdf', 202),
('COMP-APU-140', '2024-06-18 10:40:00', 'https://docs.apuestaganadora.com/comprobantes/APU-140.pdf', 203),
('COMP-APU-141', '2024-06-19 11:47:00', 'https://docs.apuestaganadora.com/comprobantes/APU-141.pdf', 204),
('COMP-APU-142', '2024-06-20 12:54:00', 'https://docs.apuestaganadora.com/comprobantes/APU-142.pdf', 205),
('COMP-APU-143', '2024-06-21 13:01:00', 'https://docs.apuestaganadora.com/comprobantes/APU-143.pdf', 206),
('COMP-APU-144', '2024-06-22 14:08:00', 'https://docs.apuestaganadora.com/comprobantes/APU-144.pdf', 207),
('COMP-APU-145', '2024-06-23 15:15:00', 'https://docs.apuestaganadora.com/comprobantes/APU-145.pdf', 208),
('COMP-APU-146', '2024-05-20 16:22:00', 'https://docs.apuestaganadora.com/comprobantes/APU-146.pdf', 209),
('COMP-APU-147', '2024-05-21 17:29:00', 'https://docs.apuestaganadora.com/comprobantes/APU-147.pdf', 210),
('COMP-APU-148', '2024-05-22 18:36:00', 'https://docs.apuestaganadora.com/comprobantes/APU-148.pdf', 211),
('COMP-APU-149', '2024-05-23 19:43:00', 'https://docs.apuestaganadora.com/comprobantes/APU-149.pdf', 212),
('COMP-APU-150', '2024-05-24 10:50:00', 'https://docs.apuestaganadora.com/comprobantes/APU-150.pdf', 213),
('COMP-APU-151', '2024-05-25 11:57:00', 'https://docs.apuestaganadora.com/comprobantes/APU-151.pdf', 214),
('COMP-APU-152', '2024-05-26 12:04:00', 'https://docs.apuestaganadora.com/comprobantes/APU-152.pdf', 215),
('COMP-APU-153', '2024-05-27 13:11:00', 'https://docs.apuestaganadora.com/comprobantes/APU-153.pdf', 216),
('COMP-APU-154', '2024-05-28 14:18:00', 'https://docs.apuestaganadora.com/comprobantes/APU-154.pdf', 217),
('COMP-APU-155', '2024-05-29 15:25:00', 'https://docs.apuestaganadora.com/comprobantes/APU-155.pdf', 218),
('COMP-APU-156', '2024-05-30 16:32:00', 'https://docs.apuestaganadora.com/comprobantes/APU-156.pdf', 219),
('COMP-APU-157', '2024-05-31 17:39:00', 'https://docs.apuestaganadora.com/comprobantes/APU-157.pdf', 220),
('COMP-APU-158', '2024-06-01 18:46:00', 'https://docs.apuestaganadora.com/comprobantes/APU-158.pdf', 221),
('COMP-APU-159', '2024-06-02 19:53:00', 'https://docs.apuestaganadora.com/comprobantes/APU-159.pdf', 222),
('COMP-APU-160', '2024-06-03 10:00:00', 'https://docs.apuestaganadora.com/comprobantes/APU-160.pdf', 223),
('COMP-APU-161', '2024-06-04 11:07:00', 'https://docs.apuestaganadora.com/comprobantes/APU-161.pdf', 224),
('COMP-APU-162', '2024-06-05 12:14:00', 'https://docs.apuestaganadora.com/comprobantes/APU-162.pdf', 225),
('COMP-APU-163', '2024-06-06 13:21:00', 'https://docs.apuestaganadora.com/comprobantes/APU-163.pdf', 226),
('COMP-APU-164', '2024-06-07 14:28:00', 'https://docs.apuestaganadora.com/comprobantes/APU-164.pdf', 227),
('COMP-APU-165', '2024-06-08 15:35:00', 'https://docs.apuestaganadora.com/comprobantes/APU-165.pdf', 228),
('COMP-APU-166', '2024-06-09 16:42:00', 'https://docs.apuestaganadora.com/comprobantes/APU-166.pdf', 229),
('COMP-APU-167', '2024-06-10 17:49:00', 'https://docs.apuestaganadora.com/comprobantes/APU-167.pdf', 230),
('COMP-APU-168', '2024-06-11 18:56:00', 'https://docs.apuestaganadora.com/comprobantes/APU-168.pdf', 231),
('COMP-APU-169', '2024-06-12 19:03:00', 'https://docs.apuestaganadora.com/comprobantes/APU-169.pdf', 232),
('COMP-APU-170', '2024-06-13 10:10:00', 'https://docs.apuestaganadora.com/comprobantes/APU-170.pdf', 233),
('COMP-APU-171', '2024-06-14 11:17:00', 'https://docs.apuestaganadora.com/comprobantes/APU-171.pdf', 234),
('COMP-APU-172', '2024-06-15 12:24:00', 'https://docs.apuestaganadora.com/comprobantes/APU-172.pdf', 235),
('COMP-APU-173', '2024-06-16 13:31:00', 'https://docs.apuestaganadora.com/comprobantes/APU-173.pdf', 236),
('COMP-APU-174', '2024-06-17 14:38:00', 'https://docs.apuestaganadora.com/comprobantes/APU-174.pdf', 237),
('COMP-APU-175', '2024-06-18 15:45:00', 'https://docs.apuestaganadora.com/comprobantes/APU-175.pdf', 238),
('COMP-APU-176', '2024-06-19 16:52:00', 'https://docs.apuestaganadora.com/comprobantes/APU-176.pdf', 239),
('COMP-APU-177', '2024-06-20 17:59:00', 'https://docs.apuestaganadora.com/comprobantes/APU-177.pdf', 240),
('COMP-APU-178', '2024-06-21 18:06:00', 'https://docs.apuestaganadora.com/comprobantes/APU-178.pdf', 241),
('COMP-APU-179', '2024-06-22 19:13:00', 'https://docs.apuestaganadora.com/comprobantes/APU-179.pdf', 242),
('COMP-APU-180', '2024-06-23 10:20:00', 'https://docs.apuestaganadora.com/comprobantes/APU-180.pdf', 243),
('COMP-APU-181', '2024-05-20 11:27:00', 'https://docs.apuestaganadora.com/comprobantes/APU-181.pdf', 244),
('COMP-APU-182', '2024-05-21 12:34:00', 'https://docs.apuestaganadora.com/comprobantes/APU-182.pdf', 245),
('COMP-APU-183', '2024-05-22 13:41:00', 'https://docs.apuestaganadora.com/comprobantes/APU-183.pdf', 246),
('COMP-APU-184', '2024-05-23 14:48:00', 'https://docs.apuestaganadora.com/comprobantes/APU-184.pdf', 247),
('COMP-APU-185', '2024-05-24 15:55:00', 'https://docs.apuestaganadora.com/comprobantes/APU-185.pdf', 248),
('COMP-APU-186', '2024-05-25 16:02:00', 'https://docs.apuestaganadora.com/comprobantes/APU-186.pdf', 249),
('COMP-APU-187', '2024-05-26 17:09:00', 'https://docs.apuestaganadora.com/comprobantes/APU-187.pdf', 250),
('COMP-APU-188', '2024-05-27 18:16:00', 'https://docs.apuestaganadora.com/comprobantes/APU-188.pdf', 251),
('COMP-APU-189', '2024-05-28 19:23:00', 'https://docs.apuestaganadora.com/comprobantes/APU-189.pdf', 252),
('COMP-APU-190', '2024-05-29 10:30:00', 'https://docs.apuestaganadora.com/comprobantes/APU-190.pdf', 253),
('COMP-APU-191', '2024-05-30 11:37:00', 'https://docs.apuestaganadora.com/comprobantes/APU-191.pdf', 254),
('COMP-APU-192', '2024-05-31 12:44:00', 'https://docs.apuestaganadora.com/comprobantes/APU-192.pdf', 255),
('COMP-APU-193', '2024-06-01 13:51:00', 'https://docs.apuestaganadora.com/comprobantes/APU-193.pdf', 256),
('COMP-APU-194', '2024-06-02 14:58:00', 'https://docs.apuestaganadora.com/comprobantes/APU-194.pdf', 257),
('COMP-APU-195', '2024-06-03 15:05:00', 'https://docs.apuestaganadora.com/comprobantes/APU-195.pdf', 258),
('COMP-APU-196', '2024-06-04 16:12:00', 'https://docs.apuestaganadora.com/comprobantes/APU-196.pdf', 259),
('COMP-APU-197', '2024-06-05 17:19:00', 'https://docs.apuestaganadora.com/comprobantes/APU-197.pdf', 260),
('COMP-APU-198', '2024-06-06 18:26:00', 'https://docs.apuestaganadora.com/comprobantes/APU-198.pdf', 261),
('COMP-APU-199', '2024-06-07 19:33:00', 'https://docs.apuestaganadora.com/comprobantes/APU-199.pdf', 262),
('COMP-APU-200', '2024-06-08 10:40:00', 'https://docs.apuestaganadora.com/comprobantes/APU-200.pdf', 263),
('COMP-APU-201', '2024-06-09 11:47:00', 'https://docs.apuestaganadora.com/comprobantes/APU-201.pdf', 264),
('COMP-APU-202', '2024-06-10 12:54:00', 'https://docs.apuestaganadora.com/comprobantes/APU-202.pdf', 265),
('COMP-APU-203', '2024-06-11 13:01:00', 'https://docs.apuestaganadora.com/comprobantes/APU-203.pdf', 266),
('COMP-APU-204', '2024-06-12 14:08:00', 'https://docs.apuestaganadora.com/comprobantes/APU-204.pdf', 267),
('COMP-APU-205', '2024-06-13 15:15:00', 'https://docs.apuestaganadora.com/comprobantes/APU-205.pdf', 268),
('COMP-APU-206', '2024-06-14 16:22:00', 'https://docs.apuestaganadora.com/comprobantes/APU-206.pdf', 269),
('COMP-APU-207', '2024-06-15 17:29:00', 'https://docs.apuestaganadora.com/comprobantes/APU-207.pdf', 270),
('COMP-APU-208', '2024-06-16 18:36:00', 'https://docs.apuestaganadora.com/comprobantes/APU-208.pdf', 271),
('COMP-APU-209', '2024-06-17 19:43:00', 'https://docs.apuestaganadora.com/comprobantes/APU-209.pdf', 272),
('COMP-APU-210', '2024-06-18 10:50:00', 'https://docs.apuestaganadora.com/comprobantes/APU-210.pdf', 273),
('COMP-APU-211', '2024-06-19 11:57:00', 'https://docs.apuestaganadora.com/comprobantes/APU-211.pdf', 274),
('COMP-APU-212', '2024-06-20 12:04:00', 'https://docs.apuestaganadora.com/comprobantes/APU-212.pdf', 275),
('COMP-APU-213', '2024-06-21 13:11:00', 'https://docs.apuestaganadora.com/comprobantes/APU-213.pdf', 276),
('COMP-APU-214', '2024-06-22 14:18:00', 'https://docs.apuestaganadora.com/comprobantes/APU-214.pdf', 277),
('COMP-APU-215', '2024-06-23 15:25:00', 'https://docs.apuestaganadora.com/comprobantes/APU-215.pdf', 278),
('COMP-APU-216', '2024-05-20 16:32:00', 'https://docs.apuestaganadora.com/comprobantes/APU-216.pdf', 279),
('COMP-APU-217', '2024-05-21 17:39:00', 'https://docs.apuestaganadora.com/comprobantes/APU-217.pdf', 280),
('COMP-APU-218', '2024-05-22 18:46:00', 'https://docs.apuestaganadora.com/comprobantes/APU-218.pdf', 281),
('COMP-APU-219', '2024-05-23 19:53:00', 'https://docs.apuestaganadora.com/comprobantes/APU-219.pdf', 282),
('COMP-APU-220', '2024-05-24 10:00:00', 'https://docs.apuestaganadora.com/comprobantes/APU-220.pdf', 283),
('COMP-APU-221', '2024-05-25 11:07:00', 'https://docs.apuestaganadora.com/comprobantes/APU-221.pdf', 284),
('COMP-APU-222', '2024-05-26 12:14:00', 'https://docs.apuestaganadora.com/comprobantes/APU-222.pdf', 285),
('COMP-APU-223', '2024-05-27 13:21:00', 'https://docs.apuestaganadora.com/comprobantes/APU-223.pdf', 286),
('COMP-APU-224', '2024-05-28 14:28:00', 'https://docs.apuestaganadora.com/comprobantes/APU-224.pdf', 287),
('COMP-APU-225', '2024-05-29 15:35:00', 'https://docs.apuestaganadora.com/comprobantes/APU-225.pdf', 288),
('COMP-APU-226', '2024-05-30 16:42:00', 'https://docs.apuestaganadora.com/comprobantes/APU-226.pdf', 289),
('COMP-APU-227', '2024-05-31 17:49:00', 'https://docs.apuestaganadora.com/comprobantes/APU-227.pdf', 290),
('COMP-APU-228', '2024-06-01 18:56:00', 'https://docs.apuestaganadora.com/comprobantes/APU-228.pdf', 291),
('COMP-APU-229', '2024-06-02 19:03:00', 'https://docs.apuestaganadora.com/comprobantes/APU-229.pdf', 292),
('COMP-APU-230', '2024-06-03 10:10:00', 'https://docs.apuestaganadora.com/comprobantes/APU-230.pdf', 293),
('COMP-APU-231', '2024-06-04 11:17:00', 'https://docs.apuestaganadora.com/comprobantes/APU-231.pdf', 294),
('COMP-APU-232', '2024-06-05 12:24:00', 'https://docs.apuestaganadora.com/comprobantes/APU-232.pdf', 295),
('COMP-APU-233', '2024-06-06 13:31:00', 'https://docs.apuestaganadora.com/comprobantes/APU-233.pdf', 296),
('COMP-APU-234', '2024-06-07 14:38:00', 'https://docs.apuestaganadora.com/comprobantes/APU-234.pdf', 297),
('COMP-APU-235', '2024-06-08 15:45:00', 'https://docs.apuestaganadora.com/comprobantes/APU-235.pdf', 298),
('COMP-APU-236', '2024-06-09 16:52:00', 'https://docs.apuestaganadora.com/comprobantes/APU-236.pdf', 299),
('COMP-APU-237', '2024-06-10 17:59:00', 'https://docs.apuestaganadora.com/comprobantes/APU-237.pdf', 300),
('COMP-APU-238', '2024-06-11 18:06:00', 'https://docs.apuestaganadora.com/comprobantes/APU-238.pdf', 301),
('COMP-APU-239', '2024-06-12 19:13:00', 'https://docs.apuestaganadora.com/comprobantes/APU-239.pdf', 302),
('COMP-APU-240', '2024-06-13 10:20:00', 'https://docs.apuestaganadora.com/comprobantes/APU-240.pdf', 303),
('COMP-APU-241', '2024-06-14 11:27:00', 'https://docs.apuestaganadora.com/comprobantes/APU-241.pdf', 304),
('COMP-APU-242', '2024-06-15 12:34:00', 'https://docs.apuestaganadora.com/comprobantes/APU-242.pdf', 305),
('COMP-APU-243', '2024-06-16 13:41:00', 'https://docs.apuestaganadora.com/comprobantes/APU-243.pdf', 306),
('COMP-APU-244', '2024-06-17 14:48:00', 'https://docs.apuestaganadora.com/comprobantes/APU-244.pdf', 307),
('COMP-APU-245', '2024-06-18 15:55:00', 'https://docs.apuestaganadora.com/comprobantes/APU-245.pdf', 308),
('COMP-APU-246', '2024-06-19 16:02:00', 'https://docs.apuestaganadora.com/comprobantes/APU-246.pdf', 309),
('COMP-APU-247', '2024-06-20 17:09:00', 'https://docs.apuestaganadora.com/comprobantes/APU-247.pdf', 310),
('COMP-APU-248', '2024-06-21 18:16:00', 'https://docs.apuestaganadora.com/comprobantes/APU-248.pdf', 311),
('COMP-APU-249', '2024-06-22 19:23:00', 'https://docs.apuestaganadora.com/comprobantes/APU-249.pdf', 312),
('COMP-APU-250', '2024-06-23 10:30:00', 'https://docs.apuestaganadora.com/comprobantes/APU-250.pdf', 313),
('COMP-APU-251', '2024-05-20 11:37:00', 'https://docs.apuestaganadora.com/comprobantes/APU-251.pdf', 314),
('COMP-APU-252', '2024-05-21 12:44:00', 'https://docs.apuestaganadora.com/comprobantes/APU-252.pdf', 315),
('COMP-APU-253', '2024-05-22 13:51:00', 'https://docs.apuestaganadora.com/comprobantes/APU-253.pdf', 316),
('COMP-APU-254', '2024-05-23 14:58:00', 'https://docs.apuestaganadora.com/comprobantes/APU-254.pdf', 317),
('COMP-APU-255', '2024-05-24 15:05:00', 'https://docs.apuestaganadora.com/comprobantes/APU-255.pdf', 318),
('COMP-APU-256', '2024-05-25 16:12:00', 'https://docs.apuestaganadora.com/comprobantes/APU-256.pdf', 319),
('COMP-APU-257', '2024-05-26 17:19:00', 'https://docs.apuestaganadora.com/comprobantes/APU-257.pdf', 320),
('COMP-APU-258', '2024-05-27 18:26:00', 'https://docs.apuestaganadora.com/comprobantes/APU-258.pdf', 321),
('COMP-APU-259', '2024-05-28 19:33:00', 'https://docs.apuestaganadora.com/comprobantes/APU-259.pdf', 322),
('COMP-APU-260', '2024-05-29 10:40:00', 'https://docs.apuestaganadora.com/comprobantes/APU-260.pdf', 323),
('COMP-APU-261', '2024-05-30 11:47:00', 'https://docs.apuestaganadora.com/comprobantes/APU-261.pdf', 324),
('COMP-APU-262', '2024-05-31 12:54:00', 'https://docs.apuestaganadora.com/comprobantes/APU-262.pdf', 325),
('COMP-APU-263', '2024-06-01 13:01:00', 'https://docs.apuestaganadora.com/comprobantes/APU-263.pdf', 326),
('COMP-APU-264', '2024-06-02 14:08:00', 'https://docs.apuestaganadora.com/comprobantes/APU-264.pdf', 327),
('COMP-APU-265', '2024-06-03 15:15:00', 'https://docs.apuestaganadora.com/comprobantes/APU-265.pdf', 328),
('COMP-APU-266', '2024-06-04 16:22:00', 'https://docs.apuestaganadora.com/comprobantes/APU-266.pdf', 329),
('COMP-APU-267', '2024-06-05 17:29:00', 'https://docs.apuestaganadora.com/comprobantes/APU-267.pdf', 330),
('COMP-APU-268', '2024-06-06 18:36:00', 'https://docs.apuestaganadora.com/comprobantes/APU-268.pdf', 331),
('COMP-APU-269', '2024-06-07 19:43:00', 'https://docs.apuestaganadora.com/comprobantes/APU-269.pdf', 332),
('COMP-APU-270', '2024-06-08 10:50:00', 'https://docs.apuestaganadora.com/comprobantes/APU-270.pdf', 333),
('COMP-APU-271', '2024-06-09 11:57:00', 'https://docs.apuestaganadora.com/comprobantes/APU-271.pdf', 334),
('COMP-APU-272', '2024-06-10 12:04:00', 'https://docs.apuestaganadora.com/comprobantes/APU-272.pdf', 335),
('COMP-APU-273', '2024-06-11 13:11:00', 'https://docs.apuestaganadora.com/comprobantes/APU-273.pdf', 336),
('COMP-APU-274', '2024-06-12 14:18:00', 'https://docs.apuestaganadora.com/comprobantes/APU-274.pdf', 337),
('COMP-APU-275', '2024-06-13 15:25:00', 'https://docs.apuestaganadora.com/comprobantes/APU-275.pdf', 338),
('COMP-APU-276', '2024-06-14 16:32:00', 'https://docs.apuestaganadora.com/comprobantes/APU-276.pdf', 339),
('COMP-APU-277', '2024-06-15 17:39:00', 'https://docs.apuestaganadora.com/comprobantes/APU-277.pdf', 340),
('COMP-APU-278', '2024-06-16 18:46:00', 'https://docs.apuestaganadora.com/comprobantes/APU-278.pdf', 341),
('COMP-APU-279', '2024-06-17 19:53:00', 'https://docs.apuestaganadora.com/comprobantes/APU-279.pdf', 342),
('COMP-APU-280', '2024-06-18 10:00:00', 'https://docs.apuestaganadora.com/comprobantes/APU-280.pdf', 343),
('COMP-APU-281', '2024-06-19 11:07:00', 'https://docs.apuestaganadora.com/comprobantes/APU-281.pdf', 344),
('COMP-APU-282', '2024-06-20 12:14:00', 'https://docs.apuestaganadora.com/comprobantes/APU-282.pdf', 345),
('COMP-APU-283', '2024-06-21 13:21:00', 'https://docs.apuestaganadora.com/comprobantes/APU-283.pdf', 346),
('COMP-APU-284', '2024-06-22 14:28:00', 'https://docs.apuestaganadora.com/comprobantes/APU-284.pdf', 347),
('COMP-APU-285', '2024-06-23 15:35:00', 'https://docs.apuestaganadora.com/comprobantes/APU-285.pdf', 348),
('COMP-APU-286', '2024-05-20 16:42:00', 'https://docs.apuestaganadora.com/comprobantes/APU-286.pdf', 349),
('COMP-APU-287', '2024-05-21 17:49:00', 'https://docs.apuestaganadora.com/comprobantes/APU-287.pdf', 350),
('COMP-APU-288', '2024-05-22 18:56:00', 'https://docs.apuestaganadora.com/comprobantes/APU-288.pdf', 351),
('COMP-APU-289', '2024-05-23 19:03:00', 'https://docs.apuestaganadora.com/comprobantes/APU-289.pdf', 352),
('COMP-APU-290', '2024-05-24 10:10:00', 'https://docs.apuestaganadora.com/comprobantes/APU-290.pdf', 353),

-- COMPROBANTES DE PREMIOS FALTANTES
('COMP-PRE-007', '2024-03-08 02:23:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-007.pdf', 354),
('COMP-PRE-008', '2024-03-15 02:53:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-008.pdf', 355),
('COMP-PRE-009', '2024-03-16 20:53:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-009.pdf', 356),
('COMP-PRE-010', '2024-03-21 19:53:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-010.pdf', 357),
('COMP-PRE-011', '2024-03-09 17:53:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-011.pdf', 358),
('COMP-PRE-012', '2024-03-08 02:33:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-012.pdf', 359),
('COMP-PRE-013', '2024-04-05 03:23:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-013.pdf', 360),
('COMP-PRE-014', '2024-03-14 20:03:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-014.pdf', 361),
('COMP-PRE-015', '2024-04-16 20:53:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-015.pdf', 362),
('COMP-PRE-016', '2024-05-20 11:30:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-016.pdf', 363),
('COMP-PRE-017', '2024-05-25 17:05:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-017.pdf', 364),
('COMP-PRE-018', '2024-05-29 10:33:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-018.pdf', 365),
('COMP-PRE-019', '2024-06-03 16:08:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-019.pdf', 366),
('COMP-PRE-020', '2024-06-07 19:36:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-020.pdf', 367),
('COMP-PRE-021', '2024-06-12 15:11:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-021.pdf', 368),
('COMP-PRE-022', '2024-06-16 18:39:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-022.pdf', 369),
('COMP-PRE-023', '2024-06-21 14:14:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-023.pdf', 370),
('COMP-PRE-024', '2024-05-21 17:42:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-024.pdf', 371),
('COMP-PRE-025', '2024-05-26 13:17:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-025.pdf', 372),
('COMP-PRE-026', '2024-05-30 16:45:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-026.pdf', 373),
('COMP-PRE-027', '2024-06-04 12:20:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-027.pdf', 374),
('COMP-PRE-028', '2024-06-09 16:55:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-028.pdf', 375),
('COMP-PRE-029', '2024-06-11 19:09:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-029.pdf', 376),
('COMP-PRE-030', '2024-06-14 11:30:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-030.pdf', 377),
('COMP-PRE-031', '2024-06-17 14:51:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-031.pdf', 378),
('COMP-PRE-032', '2024-06-19 17:05:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-032.pdf', 379),
('COMP-PRE-033', '2024-06-22 19:26:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-033.pdf', 380),
('COMP-PRE-034', '2024-05-21 12:47:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-034.pdf', 381),
('COMP-PRE-035', '2024-05-23 15:01:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-035.pdf', 382),
('COMP-PRE-036', '2024-05-24 16:08:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-036.pdf', 383),
('COMP-PRE-037', '2024-05-26 18:22:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-037.pdf', 384),
('COMP-PRE-038', '2024-05-29 10:43:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-038.pdf', 385),
('COMP-PRE-039', '2024-06-01 14:04:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-039.pdf', 386),
('COMP-PRE-040', '2024-06-03 16:18:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-040.pdf', 387),
('COMP-PRE-041', '2024-06-06 18:39:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-041.pdf', 388),
('COMP-PRE-042', '2024-06-09 12:00:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-042.pdf', 389),
('COMP-PRE-043', '2024-06-11 14:14:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-043.pdf', 390),
('COMP-PRE-044', '2024-06-14 16:35:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-044.pdf', 391),
('COMP-PRE-045', '2024-06-17 19:56:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-045.pdf', 392),
('COMP-PRE-046', '2024-06-19 12:10:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-046.pdf', 393),
('COMP-PRE-047', '2024-06-22 14:31:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-047.pdf', 394),
('COMP-PRE-048', '2024-05-21 17:52:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-048.pdf', 395),
('COMP-PRE-049', '2024-05-23 20:06:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-049.pdf', 396),
('COMP-PRE-050', '2024-05-24 11:13:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-050.pdf', 397),
('COMP-PRE-051', '2024-05-26 12:27:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-051.pdf', 398),
('COMP-PRE-052', '2024-05-29 15:48:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-052.pdf', 399),
('COMP-PRE-053', '2024-06-01 19:09:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-053.pdf', 400),
('COMP-PRE-054', '2024-06-03 10:23:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-054.pdf', 401),
('COMP-PRE-055', '2024-06-06 13:44:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-055.pdf', 402),
('COMP-PRE-056', '2024-06-09 17:05:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-056.pdf', 403),
('COMP-PRE-057', '2024-06-11 19:19:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-057.pdf', 404),
('COMP-PRE-058', '2024-06-14 11:40:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-058.pdf', 405),
('COMP-PRE-059', '2024-06-17 15:01:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-059.pdf', 406),
('COMP-PRE-060', '2024-06-19 17:15:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-060.pdf', 407),
('COMP-PRE-061', '2024-06-22 19:36:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-061.pdf', 408),
('COMP-PRE-062', '2024-05-21 12:57:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-062.pdf', 409),
('COMP-PRE-063', '2024-05-23 15:11:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-063.pdf', 410),
('COMP-PRE-064', '2024-05-26 17:32:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-064.pdf', 411),
('COMP-PRE-065', '2024-05-29 10:53:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-065.pdf', 412),
('COMP-PRE-066', '2024-05-31 13:07:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-066.pdf', 413),
('COMP-PRE-067', '2024-06-03 15:28:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-067.pdf', 414),
('COMP-PRE-068', '2024-06-06 18:49:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-068.pdf', 415),
('COMP-PRE-069', '2024-06-08 11:03:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-069.pdf', 416),
('COMP-PRE-070', '2024-06-11 13:24:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-070.pdf', 417),
('COMP-PRE-071', '2024-06-14 16:45:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-071.pdf', 418),
('COMP-PRE-072', '2024-06-16 18:59:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-072.pdf', 419),
('COMP-PRE-073', '2024-06-19 12:20:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-073.pdf', 420),
('COMP-PRE-074', '2024-06-22 14:41:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-074.pdf', 421),
('COMP-PRE-075', '2024-05-20 16:55:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-075.pdf', 422),
('COMP-PRE-076', '2024-05-22 19:09:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-076.pdf', 423),
('COMP-PRE-077', '2024-05-25 11:30:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-077.pdf', 424),
('COMP-PRE-078', '2024-05-27 13:44:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-078.pdf', 425),
('COMP-PRE-079', '2024-05-29 15:58:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-079.pdf', 426),
('COMP-PRE-080', '2024-06-03 10:33:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-080.pdf', 427),
('COMP-PRE-081', '2024-06-05 12:47:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-081.pdf', 428),
('COMP-PRE-082', '2024-06-07 15:01:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-082.pdf', 429),
('COMP-PRE-083', '2024-06-10 18:22:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-083.pdf', 430),
('COMP-PRE-084', '2024-06-12 19:36:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-084.pdf', 431),
('COMP-PRE-085', '2024-06-14 11:50:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-085.pdf', 432),
('COMP-PRE-086', '2024-06-16 14:04:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-086.pdf', 433),
('COMP-PRE-087', '2024-06-20 17:32:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-087.pdf', 434),
('COMP-PRE-088', '2024-06-23 10:53:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-088.pdf', 435),
('COMP-PRE-089', '2024-05-23 15:21:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-089.pdf', 436),
('COMP-PRE-090', '2024-05-24 15:28:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-090.pdf', 437),
('COMP-PRE-091', '2024-05-26 17:42:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-091.pdf', 438),
('COMP-PRE-092', '2024-05-27 18:49:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-092.pdf', 439),
('COMP-PRE-093', '2024-05-29 11:03:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-093.pdf', 440),
('COMP-PRE-094', '2024-05-31 13:17:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-094.pdf', 441),
('COMP-PRE-095', '2024-06-09 12:20:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-095.pdf', 442),
('COMP-PRE-096', '2024-06-13 15:48:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-096.pdf', 443),
('COMP-PRE-097', '2024-06-14 16:55:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-097.pdf', 444),
('COMP-PRE-098', '2024-06-23 15:58:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-098.pdf', 445),
('COMP-PRE-099', '2024-05-21 18:12:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-099.pdf', 446),
('COMP-PRE-100', '2024-05-23 19:26:00', 'https://docs.apuestaganadora.com/comprobantes/PRE-100.pdf', 447),

-- COMPROBANTES DE DEVOLUCIONES FALTANTES
('COMP-DEV-005', '2024-05-22 13:33:00', 'https://docs.apuestaganadora.com/comprobantes/DEV-005.pdf', 448),
('COMP-DEV-006', '2024-05-27 19:08:00', 'https://docs.apuestaganadora.com/comprobantes/DEV-006.pdf', 449),
('COMP-DEV-007', '2024-05-31 12:36:00', 'https://docs.apuestaganadora.com/comprobantes/DEV-007.pdf', 450),
('COMP-DEV-008', '2024-06-05 18:11:00', 'https://docs.apuestaganadora.com/comprobantes/DEV-008.pdf', 451),
('COMP-DEV-009', '2024-06-09 11:39:00', 'https://docs.apuestaganadora.com/comprobantes/DEV-009.pdf', 452),
('COMP-DEV-010', '2024-06-14 16:14:00', 'https://docs.apuestaganadora.com/comprobantes/DEV-010.pdf', 453),
('COMP-DEV-011', '2024-06-18 10:42:00', 'https://docs.apuestaganadora.com/comprobantes/DEV-011.pdf', 454),
('COMP-DEV-012', '2024-06-23 15:17:00', 'https://docs.apuestaganadora.com/comprobantes/DEV-012.pdf', 455),
('COMP-DEV-013', '2024-05-23 19:45:00', 'https://docs.apuestaganadora.com/comprobantes/DEV-013.pdf', 456),
('COMP-DEV-014', '2024-05-28 14:20:00', 'https://docs.apuestaganadora.com/comprobantes/DEV-014.pdf', 457),
('COMP-DEV-015', '2024-06-01 18:48:00', 'https://docs.apuestaganadora.com/comprobantes/DEV-015.pdf', 458),
('COMP-DEV-016', '2024-06-06 13:23:00', 'https://docs.apuestaganadora.com/comprobantes/DEV-016.pdf', 459),
('COMP-DEV-017', '2024-06-07 19:55:00', 'https://docs.apuestaganadora.com/comprobantes/DEV-017.pdf', 460),
('COMP-DEV-018', '2024-06-21 13:33:00', 'https://docs.apuestaganadora.com/comprobantes/DEV-018.pdf', 461);
GO

-- 24. TABLA Apuesta
INSERT INTO Apuesta 
(codigo_ticket, tipo_apuesta, monto_apostado, cuota_total, fecha_apuesta, id_estado_apuesta, id_moneda, id_usuario, id_local) VALUES

-- APUESTAS YA RELACIONADAS CON TRANSACCIONES APU-001 A APU-010
('TCK-APU-001', 'EN VIVO',  50.00, 2.10, '2024-03-15 15:30:00', 2, 1,  1, 1),
('TCK-APU-002', 'EN VIVO', 100.00, 1.90, '2024-03-22 20:30:00', 3, 1,  4, 2),
('TCK-APU-003', 'EN VIVO',  75.00, 2.20, '2024-03-17 17:30:00', 2, 1,  8, NULL),
('TCK-APU-004', 'EN VIVO', 200.00, 3.20, '2024-03-24 21:00:00', 3, 1, 13, 3),
('TCK-APU-005', 'EN VIVO',  60.00, 3.10, '2024-03-31 17:00:00', 2, 2, 42, NULL),
('TCK-APU-006', 'SIMPLE',  120.00, 1.75, '2024-04-07 20:00:00', 2, 3, 50, NULL),
('TCK-APU-007', 'EN VIVO',  80.00, 2.05, '2024-04-09 21:30:00', 3, 1,  2, 4),
('TCK-APU-008', 'SIMPLE',  150.00, 1.65, '2024-04-16 20:00:00', 2, 1,  7, 5),
('TCK-APU-009', 'SIMPLE',   90.00, 3.40, '2024-04-21 19:30:00', 3, 1, 17, NULL),
('TCK-APU-010', 'SIMPLE',  110.00, 2.50, '2024-04-28 16:00:00', 4, 1, 22, 6),

-- APUESTAS ADICIONALES FINALIZADAS
('TCK-APU-011', 'SIMPLE',   40.00, 1.85, '2024-03-08 02:00:00', 2, 1,  3, NULL),
('TCK-APU-012', 'SIMPLE',   70.00, 1.60, '2024-03-15 02:30:00', 2, 1,  5, 1),
('TCK-APU-013', 'MULTIPLE', 90.00, 3.52, '2024-03-09 17:00:00', 3, 1,  9, NULL),
('TCK-APU-014', 'SIMPLE',  130.00, 2.40, '2024-03-10 20:30:00', 3, 1, 10, 2),
('TCK-APU-015', 'SIMPLE',   55.00, 1.70, '2024-03-16 20:30:00', 2, 1, 11, NULL),
('TCK-APU-016', 'MULTIPLE',150.00, 4.28, '2024-03-17 20:20:00', 3, 1, 12, 3),
('TCK-APU-017', 'SIMPLE',   85.00, 1.85, '2024-03-21 19:30:00', 2, 1, 14, NULL),
('TCK-APU-018', 'EN VIVO',  65.00, 2.80, '2024-03-24 18:30:00', 3, 1, 15, 4),
('TCK-APU-019', 'SIMPLE',  100.00, 1.65, '2024-03-09 17:30:00', 2, 1, 16, NULL),
('TCK-APU-020', 'SIMPLE',   45.00, 2.20, '2024-03-10 17:30:00', 3, 1, 18, 5),

-- APUESTAS EN USD
('TCK-APU-021', 'SIMPLE',   25.00, 2.30, '2024-03-08 02:10:00', 2, 2, 41, NULL),
('TCK-APU-022', 'MULTIPLE', 50.00, 3.14, '2024-03-14 19:30:00', 3, 2, 43, NULL),
('TCK-APU-023', 'SIMPLE',   80.00, 1.90, '2024-04-05 03:00:00', 2, 2, 44, NULL),
('TCK-APU-024', 'EN VIVO',  35.00, 2.40, '2024-03-15 03:20:00', 3, 2, 45, NULL),
('TCK-APU-025', 'SIMPLE',   60.00, 1.75, '2024-06-18 02:00:00', 1, 2, 46, NULL),

-- APUESTAS EN EUR
('TCK-APU-026', 'SIMPLE',   40.00, 1.65, '2024-03-14 19:40:00', 2, 3, 49, NULL),
('TCK-APU-027', 'SIMPLE',   75.00, 2.10, '2024-03-21 19:30:00', 3, 3, 51, NULL),
('TCK-APU-028', 'MULTIPLE',100.00, 3.70, '2024-04-16 20:30:00', 2, 3, 52, NULL),
('TCK-APU-029', 'SIMPLE',   55.00, 2.30, '2024-03-10 17:30:00', 3, 3, 53, NULL),
('TCK-APU-030', 'SIMPLE',   30.00, 1.60, '2024-06-16 17:00:00', 1, 3, 54, NULL),

-- APUESTAS PENDIENTES PARA EVENTOS PROGRAMADOS
('TCK-APU-031', 'SIMPLE',   60.00, 2.05, '2024-06-10 12:00:00', 1, 1, 19, 7),
('TCK-APU-032', 'MULTIPLE',120.00, 3.52, '2024-06-11 13:30:00', 1, 1, 20, NULL),
('TCK-APU-033', 'SIMPLE',   95.00, 1.90, '2024-06-12 15:00:00', 1, 1, 21, 8),
('TCK-APU-034', 'SIMPLE',   70.00, 1.85, '2024-06-13 10:30:00', 1, 1, 23, NULL),
('TCK-APU-035', 'MULTIPLE',150.00, 4.09, '2024-06-14 16:45:00', 1, 1, 24, 9),
('TCK-APU-036', 'SIMPLE',   45.00, 1.75, '2024-06-15 11:20:00', 1, 1, 25, NULL),
('TCK-APU-037', 'SIMPLE',   80.00, 2.20, '2024-06-16 09:40:00', 1, 1, 26, 10),
('TCK-APU-038', 'SIMPLE',   35.00, 1.95, '2024-06-17 14:10:00', 1, 1, 27, NULL),
('TCK-APU-039', 'MULTIPLE',100.00, 3.61, '2024-06-18 18:30:00', 1, 1, 28, 1),
('TCK-APU-040', 'SIMPLE',   50.00, 2.00, '2024-06-19 12:15:00', 1, 1, 29, NULL),

('TCK-AUT-001', 'SIMPLE', 18.00, 2.10, '2024-05-20 11:07:00', 2, 1, 1, NULL),
('TCK-AUT-002', 'SIMPLE', 20.00, 2.05, '2024-05-21 12:14:00', 1, 1, 1, 2),
('TCK-AUT-003', 'SIMPLE', 22.00, 1.75, '2024-05-22 13:21:00', 4, 1, 1, NULL),
('TCK-AUT-004', 'MULTIPLE', 25.00, 3.90, '2024-05-23 14:28:00', 1, 1, 1, 3),
('TCK-AUT-005', 'SIMPLE', 28.00, 1.90, '2024-05-24 15:35:00', 1, 1, 1, 4),
('TCK-AUT-006', 'SIMPLE', 30.00, 1.90, '2024-05-25 16:42:00', 2, 1, 1, NULL),
('TCK-AUT-007', 'EN VIVO', 35.00, 1.85, '2024-05-26 17:49:00', 1, 1, 1, 5),
('TCK-AUT-008', 'MULTIPLE', 40.00, 6.93, '2024-05-27 18:56:00', 4, 1, 1, NULL),
('TCK-AUT-009', 'SIMPLE', 45.00, 2.00, '2024-05-28 19:03:00', 1, 1, 1, 6),
('TCK-AUT-010', 'SIMPLE', 12.00, 1.95, '2024-05-29 10:10:00', 2, 1, 2, NULL),
('TCK-AUT-011', 'SIMPLE', 15.00, 1.95, '2024-05-30 11:17:00', 1, 1, 2, 8),
('TCK-AUT-012', 'MULTIPLE', 18.00, 4.41, '2024-05-31 12:24:00', 4, 1, 2, NULL),
('TCK-AUT-013', 'SIMPLE', 20.00, 1.85, '2024-06-01 13:31:00', 1, 1, 2, 9),
('TCK-AUT-014', 'EN VIVO', 22.00, 2.10, '2024-06-02 14:38:00', 1, 1, 2, 10),
('TCK-AUT-015', 'SIMPLE', 25.00, 1.70, '2024-06-03 15:45:00', 2, 1, 2, NULL),
('TCK-AUT-016', 'MULTIPLE', 28.00, 3.52, '2024-06-04 16:52:00', 1, 1, 2, 1),
('TCK-AUT-017', 'SIMPLE', 30.00, 1.85, '2024-06-05 17:59:00', 4, 1, 2, NULL),
('TCK-AUT-018', 'SIMPLE', 35.00, 2.05, '2024-06-06 18:06:00', 1, 1, 2, 2),
('TCK-AUT-019', 'SIMPLE', 45.00, 3.60, '2024-06-07 19:13:00', 2, 1, 3, 3),
('TCK-AUT-020', 'MULTIPLE', 50.00, 3.24, '2024-06-08 10:20:00', 1, 1, 3, 4),
('TCK-AUT-021', 'EN VIVO', 12.00, 2.20, '2024-06-09 11:27:00', 4, 1, 3, NULL),
('TCK-AUT-022', 'SIMPLE', 15.00, 1.80, '2024-06-10 12:34:00', 1, 1, 3, 5),
('TCK-AUT-023', 'SIMPLE', 18.00, 2.10, '2024-06-11 13:41:00', 1, 1, 3, NULL),
('TCK-AUT-024', 'MULTIPLE', 20.00, 8.78, '2024-06-12 14:48:00', 2, 1, 3, 6),
('TCK-AUT-025', 'SIMPLE', 22.00, 1.90, '2024-06-13 15:55:00', 1, 1, 3, 7),
('TCK-AUT-026', 'SIMPLE', 25.00, 2.40, '2024-06-14 16:02:00', 4, 1, 3, NULL),
('TCK-AUT-027', 'SIMPLE', 28.00, 1.90, '2024-06-15 17:09:00', 1, 1, 3, 8),
('TCK-AUT-028', 'MULTIPLE', 35.00, 4.49, '2024-06-16 18:16:00', 2, 1, 4, 9),
('TCK-AUT-029', 'SIMPLE', 40.00, 2.70, '2024-06-17 19:23:00', 1, 1, 4, 10),
('TCK-AUT-030', 'SIMPLE', 45.00, 1.80, '2024-06-18 10:30:00', 4, 1, 4, NULL),
('TCK-AUT-031', 'SIMPLE', 50.00, 1.60, '2024-06-19 11:37:00', 1, 1, 4, 1),
('TCK-AUT-032', 'MULTIPLE', 12.00, 5.60, '2024-06-20 12:44:00', 1, 1, 4, NULL),
('TCK-AUT-033', 'SIMPLE', 15.00, 2.20, '2024-06-21 13:51:00', 2, 1, 4, 2),
('TCK-AUT-034', 'SIMPLE', 18.00, 1.75, '2024-06-22 14:58:00', 1, 1, 4, NULL),
('TCK-AUT-035', 'EN VIVO', 20.00, 1.65, '2024-06-23 15:05:00', 4, 1, 4, 3),
('TCK-AUT-036', 'MULTIPLE', 22.00, 6.40, '2024-05-20 16:12:00', 1, 1, 4, 4),
('TCK-AUT-037', 'SIMPLE', 28.00, 2.10, '2024-05-21 17:19:00', 2, 1, 5, 5),
('TCK-AUT-038', 'SIMPLE', 30.00, 1.80, '2024-05-22 18:26:00', 1, 1, 5, NULL),
('TCK-AUT-039', 'SIMPLE', 35.00, 1.75, '2024-05-23 19:33:00', 4, 1, 5, 6),
('TCK-AUT-040', 'MULTIPLE', 40.00, 6.27, '2024-05-24 10:40:00', 1, 1, 5, 7),
('TCK-AUT-041', 'SIMPLE', 45.00, 1.70, '2024-05-25 11:47:00', 1, 1, 5, NULL),
('TCK-AUT-042', 'EN VIVO', 50.00, 1.90, '2024-05-26 12:54:00', 2, 1, 5, 8),
('TCK-AUT-043', 'SIMPLE', 12.00, 1.70, '2024-05-27 13:01:00', 1, 1, 5, NULL),
('TCK-AUT-044', 'MULTIPLE', 15.00, 6.93, '2024-05-28 14:08:00', 4, 1, 5, 9),
('TCK-AUT-045', 'SIMPLE', 18.00, 4.10, '2024-05-29 15:15:00', 1, 1, 5, 10),
('TCK-AUT-046', 'SIMPLE', 22.00, 1.95, '2024-05-30 16:22:00', 2, 1, 6, 1),
('TCK-AUT-047', 'SIMPLE', 25.00, 1.75, '2024-05-31 17:29:00', 1, 1, 6, NULL),
('TCK-AUT-048', 'MULTIPLE', 28.00, 4.41, '2024-06-01 18:36:00', 4, 1, 6, 2),
('TCK-AUT-049', 'EN VIVO', 30.00, 1.75, '2024-06-02 19:43:00', 1, 1, 6, NULL),
('TCK-AUT-050', 'SIMPLE', 35.00, 4.20, '2024-06-03 10:50:00', 1, 1, 6, 3),
('TCK-AUT-051', 'SIMPLE', 10.00, 1.70, '2024-06-04 11:57:00', 2, 1, 6, 4),
('TCK-AUT-052', 'MULTIPLE', 10.00, 3.68, '2024-06-05 12:04:00', 1, 1, 6, NULL),
('TCK-AUT-053', 'SIMPLE', 10.00, 1.85, '2024-06-06 13:11:00', 4, 1, 6, 5),
('TCK-AUT-054', 'SIMPLE', 15.00, 3.60, '2024-06-07 14:18:00', 3, 1, 7, 6),
('TCK-AUT-055', 'SIMPLE', 18.00, 2.20, '2024-06-08 15:25:00', 3, 1, 7, 7),
('TCK-AUT-056', 'MULTIPLE', 20.00, 8.78, '2024-06-09 16:32:00', 2, 1, 7, NULL),
('TCK-AUT-057', 'SIMPLE', 22.00, 2.40, '2024-06-10 17:39:00', 3, 1, 7, 8),
('TCK-AUT-058', 'SIMPLE', 25.00, 2.30, '2024-06-11 18:46:00', 2, 1, 7, NULL),
('TCK-AUT-059', 'SIMPLE', 28.00, 1.95, '2024-06-12 19:53:00', 3, 1, 7, 9),
('TCK-AUT-060', 'MULTIPLE', 30.00, 3.96, '2024-06-13 10:00:00', 3, 1, 7, 10),
('TCK-AUT-061', 'SIMPLE', 40.00, 1.65, '2024-06-14 11:07:00', 2, 1, 8, 1),
('TCK-AUT-062', 'SIMPLE', 45.00, 2.10, '2024-06-15 12:14:00', 3, 1, 8, NULL),
('TCK-AUT-063', 'EN VIVO', 50.00, 1.75, '2024-06-16 13:21:00', 3, 1, 8, 2),
('TCK-AUT-064', 'MULTIPLE', 12.00, 6.27, '2024-06-17 14:28:00', 2, 1, 8, NULL),
('TCK-AUT-065', 'SIMPLE', 15.00, 2.10, '2024-06-18 15:35:00', 3, 1, 8, 3),
('TCK-AUT-066', 'SIMPLE', 18.00, 1.95, '2024-06-19 16:42:00', 2, 1, 8, 4),
('TCK-AUT-067', 'SIMPLE', 20.00, 2.10, '2024-06-20 17:49:00', 3, 1, 8, NULL),
('TCK-AUT-068', 'MULTIPLE', 25.00, 3.57, '2024-06-21 18:56:00', 3, 1, 9, NULL),
('TCK-AUT-069', 'SIMPLE', 28.00, 1.85, '2024-06-22 19:03:00', 2, 1, 9, 6),
('TCK-AUT-070', 'EN VIVO', 30.00, 3.60, '2024-06-23 10:10:00', 3, 1, 9, 7),
('TCK-AUT-071', 'SIMPLE', 35.00, 2.20, '2024-05-20 11:17:00', 3, 1, 9, NULL),
('TCK-AUT-072', 'MULTIPLE', 40.00, 8.78, '2024-05-21 12:24:00', 2, 1, 9, 8),
('TCK-AUT-073', 'SIMPLE', 45.00, 2.40, '2024-05-22 13:31:00', 3, 1, 9, NULL),
('TCK-AUT-074', 'SIMPLE', 50.00, 2.30, '2024-05-23 14:38:00', 2, 1, 9, 9),
('TCK-AUT-075', 'SIMPLE', 15.00, 1.95, '2024-05-24 15:45:00', 2, 1, 10, NULL),
('TCK-AUT-076', 'MULTIPLE', 18.00, 3.96, '2024-05-25 16:52:00', 3, 1, 10, 1),
('TCK-AUT-077', 'EN VIVO', 20.00, 1.65, '2024-05-26 17:59:00', 2, 1, 10, NULL),
('TCK-AUT-078', 'SIMPLE', 22.00, 2.10, '2024-05-27 18:06:00', 3, 1, 10, 2),
('TCK-AUT-079', 'SIMPLE', 25.00, 1.75, '2024-05-28 19:13:00', 3, 1, 10, NULL),
('TCK-AUT-080', 'MULTIPLE', 28.00, 6.27, '2024-05-29 10:20:00', 2, 1, 10, 3),
('TCK-AUT-081', 'SIMPLE', 30.00, 2.10, '2024-05-30 11:27:00', 3, 1, 10, 4),
('TCK-AUT-082', 'SIMPLE', 40.00, 1.95, '2024-05-31 12:34:00', 3, 1, 11, 5),
('TCK-AUT-083', 'SIMPLE', 45.00, 2.10, '2024-06-01 13:41:00', 2, 1, 11, NULL),
('TCK-AUT-084', 'MULTIPLE', 50.00, 3.57, '2024-06-02 14:48:00', 3, 1, 11, 6),
('TCK-AUT-085', 'SIMPLE', 12.00, 1.85, '2024-06-03 15:55:00', 2, 1, 11, 7),
('TCK-AUT-086', 'SIMPLE', 15.00, 3.60, '2024-06-04 16:02:00', 3, 1, 11, NULL),
('TCK-AUT-087', 'SIMPLE', 18.00, 2.20, '2024-06-05 17:09:00', 3, 1, 11, 8),
('TCK-AUT-088', 'MULTIPLE', 20.00, 8.78, '2024-06-06 18:16:00', 2, 1, 11, NULL),
('TCK-AUT-089', 'SIMPLE', 25.00, 2.40, '2024-06-07 19:23:00', 3, 1, 12, 10),
('TCK-AUT-090', 'SIMPLE', 28.00, 2.30, '2024-06-08 10:30:00', 3, 1, 12, NULL),
('TCK-AUT-091', 'EN VIVO', 30.00, 1.95, '2024-06-09 11:37:00', 2, 1, 12, 1),
('TCK-AUT-092', 'MULTIPLE', 35.00, 3.96, '2024-06-10 12:44:00', 3, 1, 12, NULL),
('TCK-AUT-093', 'SIMPLE', 40.00, 1.65, '2024-06-11 13:51:00', 2, 1, 12, 2),
('TCK-AUT-094', 'SIMPLE', 45.00, 2.10, '2024-06-12 14:58:00', 3, 1, 12, NULL),
('TCK-AUT-095', 'SIMPLE', 50.00, 1.75, '2024-06-13 15:05:00', 3, 1, 12, 3),
('TCK-AUT-096', 'MULTIPLE', 15.00, 6.27, '2024-06-14 16:12:00', 2, 1, 13, NULL),
('TCK-AUT-097', 'SIMPLE', 18.00, 2.10, '2024-06-15 17:19:00', 3, 1, 13, 5),
('TCK-AUT-098', 'EN VIVO', 20.00, 1.95, '2024-06-16 18:26:00', 3, 1, 13, NULL),
('TCK-AUT-099', 'SIMPLE', 22.00, 2.10, '2024-06-17 19:33:00', 2, 1, 13, 6),
('TCK-AUT-100', 'MULTIPLE', 25.00, 3.57, '2024-06-18 10:40:00', 3, 1, 13, 7),
('TCK-AUT-101', 'SIMPLE', 28.00, 1.85, '2024-06-19 11:47:00', 2, 1, 13, NULL),
('TCK-AUT-102', 'SIMPLE', 30.00, 3.60, '2024-06-20 12:54:00', 3, 1, 13, 8),
('TCK-AUT-103', 'SIMPLE', 40.00, 2.20, '2024-06-21 13:01:00', 3, 1, 14, 9),
('TCK-AUT-104', 'MULTIPLE', 45.00, 8.78, '2024-06-22 14:08:00', 2, 1, 14, 10),
('TCK-AUT-105', 'EN VIVO', 50.00, 2.40, '2024-06-23 15:15:00', 3, 1, 14, NULL),
('TCK-AUT-106', 'SIMPLE', 12.00, 2.30, '2024-05-20 16:22:00', 3, 1, 14, 1),
('TCK-AUT-107', 'SIMPLE', 15.00, 1.95, '2024-05-21 17:29:00', 2, 1, 14, NULL),
('TCK-AUT-108', 'MULTIPLE', 18.00, 3.96, '2024-05-22 18:36:00', 3, 1, 14, 2),
('TCK-AUT-109', 'SIMPLE', 20.00, 1.65, '2024-05-23 19:43:00', 2, 1, 14, NULL),
('TCK-AUT-110', 'SIMPLE', 25.00, 2.10, '2024-05-24 10:50:00', 2, 1, 15, 4),
('TCK-AUT-111', 'SIMPLE', 28.00, 1.75, '2024-05-25 11:57:00', 3, 1, 15, NULL),
('TCK-AUT-112', 'MULTIPLE', 30.00, 6.27, '2024-05-26 12:04:00', 2, 1, 15, 5),
('TCK-AUT-113', 'SIMPLE', 35.00, 2.10, '2024-05-27 13:11:00', 3, 1, 15, NULL),
('TCK-AUT-114', 'SIMPLE', 40.00, 1.95, '2024-05-28 14:18:00', 3, 1, 15, 6),
('TCK-AUT-115', 'SIMPLE', 45.00, 2.10, '2024-05-29 15:25:00', 2, 1, 15, 7),
('TCK-AUT-116', 'MULTIPLE', 50.00, 3.57, '2024-05-30 16:32:00', 3, 1, 15, NULL),
('TCK-AUT-117', 'SIMPLE', 15.00, 1.85, '2024-05-31 17:39:00', 3, 1, 16, NULL),
('TCK-AUT-118', 'SIMPLE', 18.00, 3.60, '2024-06-01 18:46:00', 2, 1, 16, 9),
('TCK-AUT-119', 'EN VIVO', 20.00, 2.20, '2024-06-02 19:53:00', 3, 1, 16, 10),
('TCK-AUT-120', 'MULTIPLE', 22.00, 8.78, '2024-06-03 10:00:00', 2, 1, 16, NULL),
('TCK-AUT-121', 'SIMPLE', 28.00, 1.90, '2024-06-04 11:07:00', 1, 1, 17, NULL),
('TCK-AUT-122', 'SIMPLE', 30.00, 1.95, '2024-06-05 12:14:00', 1, 1, 17, 2),
('TCK-AUT-123', 'SIMPLE', 35.00, 2.40, '2024-06-06 13:21:00', 2, 1, 17, NULL),
('TCK-AUT-124', 'MULTIPLE', 40.00, 5.75, '2024-06-07 14:28:00', 1, 1, 17, 3),
('TCK-AUT-125', 'SIMPLE', 50.00, 2.30, '2024-06-08 15:35:00', 3, 1, 18, NULL),
('TCK-AUT-126', 'EN VIVO', 12.00, 1.95, '2024-06-09 16:42:00', 2, 1, 18, 5),
('TCK-AUT-127', 'SIMPLE', 15.00, 1.80, '2024-06-10 17:49:00', 3, 1, 18, NULL),
('TCK-AUT-128', 'MULTIPLE', 18.00, 3.63, '2024-06-11 18:56:00', 2, 1, 18, 6),
('TCK-AUT-129', 'SIMPLE', 22.00, 2.80, '2024-06-12 19:03:00', 1, 1, 19, NULL),
('TCK-AUT-130', 'SIMPLE', 25.00, 3.25, '2024-06-13 10:10:00', 1, 1, 19, 8),
('TCK-AUT-131', 'SIMPLE', 28.00, 2.10, '2024-06-14 11:17:00', 2, 1, 19, NULL),
('TCK-AUT-132', 'MULTIPLE', 30.00, 4.75, '2024-06-15 12:24:00', 1, 1, 19, 9),
('TCK-AUT-133', 'EN VIVO', 40.00, 1.75, '2024-06-16 13:31:00', 3, 1, 20, NULL),
('TCK-AUT-134', 'SIMPLE', 45.00, 1.90, '2024-06-17 14:38:00', 2, 1, 20, 1),
('TCK-AUT-135', 'SIMPLE', 50.00, 3.30, '2024-06-18 15:45:00', 3, 1, 20, NULL),
('TCK-AUT-136', 'MULTIPLE', 12.00, 4.10, '2024-06-19 16:52:00', 2, 1, 20, 2),
('TCK-AUT-137', 'SIMPLE', 18.00, 3.30, '2024-06-20 17:59:00', 1, 1, 21, 3),
('TCK-AUT-138', 'SIMPLE', 20.00, 1.95, '2024-06-21 18:06:00', 1, 1, 21, 4),
('TCK-AUT-139', 'SIMPLE', 22.00, 2.10, '2024-06-22 19:13:00', 2, 1, 21, NULL),
('TCK-AUT-140', 'MULTIPLE', 25.00, 8.16, '2024-06-23 10:20:00', 1, 1, 21, 5),
('TCK-AUT-141', 'SIMPLE', 30.00, 2.10, '2024-05-20 11:27:00', 3, 1, 22, 6),
('TCK-AUT-142', 'SIMPLE', 35.00, 1.70, '2024-05-21 12:34:00', 2, 1, 22, 7),
('TCK-AUT-143', 'SIMPLE', 40.00, 1.85, '2024-05-22 13:41:00', 3, 1, 22, NULL),
('TCK-AUT-144', 'MULTIPLE', 45.00, 7.92, '2024-05-23 14:48:00', 2, 1, 22, 8),
('TCK-AUT-145', 'SIMPLE', 12.00, 1.95, '2024-05-24 15:55:00', 1, 1, 23, 9),
('TCK-AUT-146', 'SIMPLE', 15.00, 2.30, '2024-05-25 16:02:00', 1, 1, 23, 10),
('TCK-AUT-147', 'EN VIVO', 18.00, 1.95, '2024-05-26 17:09:00', 2, 1, 23, NULL),
('TCK-AUT-148', 'MULTIPLE', 20.00, 6.65, '2024-05-27 18:16:00', 1, 1, 23, 1),
('TCK-AUT-149', 'SIMPLE', 25.00, 4.50, '2024-05-28 19:23:00', 3, 1, 24, 2),
('TCK-AUT-150', 'SIMPLE', 28.00, 2.40, '2024-05-29 10:30:00', 2, 1, 24, NULL),
('TCK-AUT-151', 'SIMPLE', 30.00, 2.30, '2024-05-30 11:37:00', 3, 1, 24, 3),
('TCK-AUT-152', 'MULTIPLE', 35.00, 3.51, '2024-05-31 12:44:00', 2, 1, 24, 4),
('TCK-AUT-153', 'SIMPLE', 45.00, 2.20, '2024-06-01 13:51:00', 1, 1, 25, 5),
('TCK-AUT-154', 'EN VIVO', 50.00, 3.80, '2024-06-02 14:58:00', 1, 1, 25, NULL),
('TCK-AUT-155', 'SIMPLE', 12.00, 2.20, '2024-06-03 15:05:00', 2, 1, 25, 6),
('TCK-AUT-156', 'MULTIPLE', 15.00, 4.29, '2024-06-04 16:12:00', 1, 1, 25, 7),
('TCK-AUT-157', 'SIMPLE', 20.00, 1.65, '2024-06-05 17:19:00', 3, 1, 26, 8),
('TCK-AUT-158', 'SIMPLE', 22.00, 2.10, '2024-06-06 18:26:00', 2, 1, 26, NULL),
('TCK-AUT-159', 'SIMPLE', 25.00, 1.75, '2024-06-07 19:33:00', 3, 1, 26, 9),
('TCK-AUT-160', 'MULTIPLE', 28.00, 6.27, '2024-06-08 10:40:00', 2, 1, 26, 10),
('TCK-AUT-161', 'EN VIVO', 35.00, 1.75, '2024-06-09 11:47:00', 1, 1, 27, 1),
('TCK-AUT-162', 'SIMPLE', 40.00, 1.85, '2024-06-10 12:54:00', 1, 1, 27, NULL),
('TCK-AUT-163', 'SIMPLE', 45.00, 2.10, '2024-06-11 13:01:00', 2, 1, 27, 2),
('TCK-AUT-164', 'MULTIPLE', 50.00, 6.80, '2024-06-12 14:08:00', 1, 1, 27, NULL),
('TCK-AUT-165', 'SIMPLE', 15.00, 1.95, '2024-06-13 15:15:00', 3, 1, 28, 4),
('TCK-AUT-166', 'SIMPLE', 18.00, 2.10, '2024-06-14 16:22:00', 2, 1, 28, NULL),
('TCK-AUT-167', 'SIMPLE', 20.00, 2.10, '2024-06-15 17:29:00', 3, 1, 28, 5),
('TCK-AUT-168', 'MULTIPLE', 22.00, 3.15, '2024-06-16 18:36:00', 2, 1, 28, NULL),
('TCK-AUT-169', 'SIMPLE', 28.00, 2.30, '2024-06-17 19:43:00', 1, 1, 29, 7),
('TCK-AUT-170', 'SIMPLE', 30.00, 2.05, '2024-06-18 10:50:00', 1, 1, 29, NULL),
('TCK-AUT-171', 'SIMPLE', 35.00, 3.60, '2024-06-19 11:57:00', 2, 1, 29, 8),
('TCK-AUT-172', 'MULTIPLE', 40.00, 3.90, '2024-06-20 12:04:00', 1, 1, 29, NULL),
('TCK-AUT-173', 'SIMPLE', 50.00, 2.20, '2024-06-21 13:11:00', 3, 1, 30, 10),
('TCK-AUT-174', 'SIMPLE', 12.00, 1.95, '2024-06-22 14:18:00', 2, 1, 30, NULL),
('TCK-AUT-175', 'EN VIVO', 15.00, 4.50, '2024-06-23 15:25:00', 3, 1, 30, 1),
('TCK-AUT-176', 'MULTIPLE', 18.00, 5.52, '2024-05-20 16:32:00', 2, 1, 30, NULL),
('TCK-AUT-177', 'SIMPLE', 20.00, 1.95, '2024-05-21 17:39:00', 3, 1, 30, 2),
('TCK-AUT-178', 'SIMPLE', 25.00, 1.80, '2024-05-22 18:46:00', 2, 1, 31, 3),
('TCK-AUT-179', 'SIMPLE', 28.00, 2.20, '2024-05-23 19:53:00', 3, 1, 31, 4),
('TCK-AUT-180', 'MULTIPLE', 30.00, 3.47, '2024-05-24 10:00:00', 3, 1, 31, NULL),
('TCK-AUT-181', 'SIMPLE', 35.00, 1.75, '2024-05-25 11:07:00', 2, 1, 31, 5),
('TCK-AUT-182', 'EN VIVO', 40.00, 1.90, '2024-05-26 12:14:00', 3, 1, 31, NULL),
('TCK-AUT-183', 'SIMPLE', 50.00, 3.30, '2024-05-27 13:21:00', 2, 1, 32, 7),
('TCK-AUT-184', 'MULTIPLE', 12.00, 4.10, '2024-05-28 14:28:00', 3, 1, 32, NULL),
('TCK-AUT-185', 'SIMPLE', 15.00, 2.10, '2024-05-29 15:35:00', 2, 1, 32, 8),
('TCK-AUT-186', 'SIMPLE', 18.00, 2.10, '2024-05-30 16:42:00', 3, 1, 32, NULL),
('TCK-AUT-187', 'SIMPLE', 20.00, 1.70, '2024-05-31 17:49:00', 3, 1, 32, 9),
('TCK-AUT-188', 'MULTIPLE', 25.00, 6.66, '2024-06-01 18:56:00', 3, 1, 33, NULL),
('TCK-AUT-189', 'EN VIVO', 28.00, 2.20, '2024-06-02 19:03:00', 3, 1, 33, 1),
('TCK-AUT-190', 'SIMPLE', 30.00, 1.95, '2024-06-03 10:10:00', 2, 1, 33, NULL),
('TCK-AUT-191', 'SIMPLE', 35.00, 4.50, '2024-06-04 11:17:00', 3, 1, 33, 2),
('TCK-AUT-192', 'MULTIPLE', 40.00, 5.52, '2024-06-05 12:24:00', 2, 1, 33, NULL),
('TCK-AUT-193', 'SIMPLE', 50.00, 1.95, '2024-06-06 13:31:00', 3, 1, 34, 4),
('TCK-AUT-194', 'SIMPLE', 12.00, 1.80, '2024-06-07 14:38:00', 2, 1, 34, NULL),
('TCK-AUT-195', 'SIMPLE', 15.00, 2.20, '2024-06-08 15:45:00', 3, 1, 34, 5),
('TCK-AUT-196', 'MULTIPLE', 18.00, 3.47, '2024-06-09 16:52:00', 3, 1, 34, NULL),
('TCK-AUT-197', 'SIMPLE', 20.00, 1.75, '2024-06-10 17:59:00', 2, 1, 34, 6),
('TCK-AUT-198', 'SIMPLE', 25.00, 1.90, '2024-06-11 18:06:00', 3, 1, 35, NULL),
('TCK-AUT-199', 'SIMPLE', 28.00, 3.30, '2024-06-12 19:13:00', 2, 1, 35, 8),
('TCK-AUT-200', 'MULTIPLE', 30.00, 4.10, '2024-06-13 10:20:00', 3, 1, 35, NULL),
('TCK-AUT-201', 'SIMPLE', 35.00, 2.10, '2024-06-14 11:27:00', 2, 1, 35, 9),
('TCK-AUT-202', 'SIMPLE', 40.00, 2.10, '2024-06-15 12:34:00', 3, 1, 35, 10),
('TCK-AUT-203', 'EN VIVO', 50.00, 1.70, '2024-06-16 13:41:00', 2, 1, 36, 1),
('TCK-AUT-204', 'MULTIPLE', 12.00, 6.66, '2024-06-17 14:48:00', 3, 1, 36, NULL),
('TCK-AUT-205', 'SIMPLE', 15.00, 2.20, '2024-06-18 15:55:00', 3, 1, 36, 2),
('TCK-AUT-206', 'SIMPLE', 20.00, 1.95, '2024-06-19 16:02:00', 3, 1, 37, 3),
('TCK-AUT-207', 'SIMPLE', 22.00, 4.50, '2024-06-20 17:09:00', 2, 1, 37, 4),
('TCK-AUT-208', 'MULTIPLE', 25.00, 5.52, '2024-06-21 18:16:00', 3, 1, 37, NULL),
('TCK-AUT-209', 'SIMPLE', 30.00, 1.95, '2024-06-22 19:23:00', 3, 1, 38, NULL),
('TCK-AUT-210', 'EN VIVO', 35.00, 1.80, '2024-06-23 10:30:00', 2, 1, 38, 6),
('TCK-AUT-211', 'SIMPLE', 40.00, 2.20, '2024-05-20 11:37:00', 3, 1, 38, 7),
('TCK-AUT-212', 'MULTIPLE', 50.00, 3.47, '2024-05-21 12:44:00', 3, 1, 39, 8),
('TCK-AUT-213', 'SIMPLE', 12.00, 1.75, '2024-05-22 13:51:00', 3, 1, 39, NULL),
('TCK-AUT-214', 'SIMPLE', 15.00, 1.90, '2024-05-23 14:58:00', 2, 1, 39, 9),
('TCK-AUT-215', 'SIMPLE', 20.00, 3.30, '2024-05-24 15:05:00', 2, 1, 40, NULL),
('TCK-AUT-216', 'MULTIPLE', 22.00, 4.10, '2024-05-25 16:12:00', 3, 1, 40, 1),
('TCK-AUT-217', 'EN VIVO', 25.00, 2.10, '2024-05-26 17:19:00', 2, 1, 40, NULL),
('TCK-AUT-218', 'SIMPLE', 12.00, 2.10, '2024-05-27 18:26:00', 2, 2, 41, NULL),
('TCK-AUT-219', 'SIMPLE', 15.00, 1.70, '2024-05-28 19:33:00', 3, 2, 41, 3),
('TCK-AUT-220', 'MULTIPLE', 20.00, 6.66, '2024-05-29 10:40:00', 2, 2, 42, NULL),
('TCK-AUT-221', 'SIMPLE', 25.00, 1.90, '2024-05-30 11:47:00', 1, 2, 42, 5),
('TCK-AUT-222', 'SIMPLE', 8.00, 2.20, '2024-05-31 12:54:00', 2, 2, 43, 6),
('TCK-AUT-223', 'SIMPLE', 10.00, 1.95, '2024-06-01 13:01:00', 3, 2, 43, 7),
('TCK-AUT-224', 'MULTIPLE', 15.00, 3.70, '2024-06-02 14:08:00', 1, 2, 44, 8),
('TCK-AUT-225', 'SIMPLE', 18.00, 1.95, '2024-06-03 15:15:00', 1, 2, 44, NULL),
('TCK-AUT-226', 'SIMPLE', 25.00, 4.50, '2024-06-04 16:22:00', 3, 2, 45, 10),
('TCK-AUT-227', 'SIMPLE', 5.00, 2.40, '2024-06-05 17:29:00', 3, 2, 45, NULL),
('TCK-AUT-228', 'MULTIPLE', 10.00, 3.89, '2024-06-06 18:36:00', 1, 2, 46, NULL),
('TCK-AUT-229', 'SIMPLE', 12.00, 2.30, '2024-06-07 19:43:00', 4, 2, 46, 2),
('TCK-AUT-230', 'SIMPLE', 18.00, 1.95, '2024-06-08 10:50:00', 3, 2, 47, 3),
('TCK-AUT-231', 'EN VIVO', 20.00, 1.80, '2024-06-09 11:57:00', 2, 2, 47, 4),
('TCK-AUT-232', 'MULTIPLE', 25.00, 3.63, '2024-06-10 12:04:00', 3, 2, 47, NULL),
('TCK-AUT-233', 'SIMPLE', 8.00, 2.10, '2024-06-11 13:11:00', 3, 2, 48, NULL),
('TCK-AUT-234', 'SIMPLE', 10.00, 1.75, '2024-06-12 14:18:00', 3, 2, 48, 6),
('TCK-AUT-235', 'SIMPLE', 12.00, 1.90, '2024-06-13 15:25:00', 2, 2, 48, 7),
('TCK-AUT-236', 'MULTIPLE', 18.00, 6.93, '2024-06-14 16:32:00', 2, 3, 49, 8),
('TCK-AUT-237', 'SIMPLE', 20.00, 1.95, '2024-06-15 17:39:00', 3, 3, 49, NULL),
('TCK-AUT-238', 'EN VIVO', 5.00, 1.85, '2024-06-16 18:46:00', 1, 3, 50, 10),
('TCK-AUT-239', 'SIMPLE', 8.00, 1.90, '2024-06-17 19:53:00', 1, 3, 50, NULL),
('TCK-AUT-240', 'MULTIPLE', 12.00, 4.41, '2024-06-18 10:00:00', 3, 3, 51, NULL),
('TCK-AUT-241', 'SIMPLE', 15.00, 1.70, '2024-06-19 11:07:00', 3, 3, 51, 2),
('TCK-AUT-242', 'SIMPLE', 20.00, 2.05, '2024-06-20 12:14:00', 1, 3, 52, 3),
('TCK-AUT-243', 'SIMPLE', 25.00, 1.85, '2024-06-21 13:21:00', 4, 3, 52, 4),
('TCK-AUT-244', 'MULTIPLE', 8.00, 7.92, '2024-06-22 14:28:00', 3, 3, 53, 5),
('TCK-AUT-245', 'EN VIVO', 10.00, 1.95, '2024-06-23 15:35:00', 2, 3, 53, NULL),
('TCK-AUT-246', 'SIMPLE', 15.00, 1.75, '2024-05-20 16:42:00', 1, 3, 54, 7),
('TCK-AUT-247', 'SIMPLE', 18.00, 4.50, '2024-05-21 17:49:00', 2, 3, 54, NULL),
('TCK-AUT-248', 'MULTIPLE', 25.00, 5.52, '2024-05-22 18:56:00', 3, 3, 55, NULL),
('TCK-AUT-249', 'SIMPLE', 5.00, 1.95, '2024-05-23 19:03:00', 2, 3, 55, 9),
('TCK-AUT-250', 'SIMPLE', 8.00, 1.80, '2024-05-24 10:10:00', 3, 3, 55, 10);
GO

-- 25. TABLA DetalleApuesta
INSERT INTO DetalleApuesta
(valor_cuota, resultado_detalle, id_apuesta, id_cuota) VALUES

-- Apuestas ganadas / perdidas / anuladas ya finalizadas
(2.10, 'GANADO',    1,   1),
(1.90, 'PERDIDO',   2,  11),
(2.20, 'GANADO',    3,  22),
(3.20, 'PERDIDO',   4,  33),
(3.10, 'GANADO',    5,  72),
(1.75, 'GANADO',    6,  89),
(2.05, 'PERDIDO',   7,  86),
(1.65, 'GANADO',    8,  90),
(3.40, 'PERDIDO',   9,  85),
(2.50, 'ANULADO',  10,  30),

-- Apuestas simples adicionales
(1.85, 'GANADO',   11,   4),
(1.60, 'GANADO',   12,  76),
(2.20, 'PERDIDO',  14,  79),
(1.70, 'GANADO',   15,  27),
(1.85, 'GANADO',   17,  40),
(2.80, 'PERDIDO',  18,  32),
(1.65, 'GANADO',   19,  78),
(2.20, 'PERDIDO',  20,  91),

-- Apuestas múltiples
(2.10, 'PERDIDO',  13,  70),
(1.65, 'GANADO',   13,  78),

(2.05, 'PERDIDO',  16,  82),
(2.10, 'GANADO',   16,  84),

-- Apuestas en USD
(2.30, 'GANADO',   21,  93),
(1.90, 'PERDIDO',  22,  94),
(1.65, 'GANADO',   22,  95),
(1.90, 'GANADO',   23,  96),
(2.40, 'PERDIDO',  24,  97),
(1.75, 'PENDIENTE',25,  99),

-- Apuestas en EUR
(1.65, 'GANADO',   26,  89),
(2.10, 'PERDIDO',  27,  91),
(1.65, 'GANADO',   28,  90),
(2.20, 'GANADO',   28,  92),
(2.30, 'PERDIDO',  29, 103),
(1.60, 'PENDIENTE',30, 111),

-- Apuestas pendientes para eventos programados
(2.05, 'PENDIENTE',31,  37),
(1.90, 'PENDIENTE',32,  40),
(1.85, 'PENDIENTE',32,  43),
(1.90, 'PENDIENTE',33,  42),
(1.85, 'PENDIENTE',34,  80),
(1.75, 'PENDIENTE',35,  82),
(1.85, 'PENDIENTE',35, 100),
(1.75, 'PENDIENTE',36, 109),
(2.20, 'PENDIENTE',37, 107),
(1.95, 'PENDIENTE',38, 101),
(1.90, 'PENDIENTE',39, 105),
(1.85, 'PENDIENTE',39, 108),
(2.00, 'PENDIENTE',40, 115),
(2.10, 'GANADO', 41, 1),
(2.05, 'PENDIENTE', 42, 36),
(1.75, 'ANULADO', 43, 6),
(1.90, 'PENDIENTE', 44, 39),
(2.05, 'PENDIENTE', 44, 42),
(1.90, 'PENDIENTE', 45, 45),
(1.90, 'GANADO', 46, 11),
(1.85, 'PENDIENTE', 47, 48),
(3.30, 'ANULADO', 48, 16),
(2.10, 'ANULADO', 48, 21),
(2.00, 'PENDIENTE', 49, 51),
(1.95, 'GANADO', 50, 26),
(1.95, 'PENDIENTE', 51, 68),
(2.10, 'ANULADO', 52, 31),
(2.10, 'ANULADO', 52, 54),
(1.85, 'PENDIENTE', 53, 71),
(2.10, 'PENDIENTE', 54, 74),
(1.70, 'GANADO', 55, 59),
(1.85, 'PENDIENTE', 56, 84),
(1.90, 'PENDIENTE', 56, 87),
(1.85, 'ANULADO', 57, 64),
(2.05, 'PENDIENTE', 58, 90),
(3.60, 'GANADO', 59, 78),
(1.75, 'PENDIENTE', 60, 107),
(1.85, 'PENDIENTE', 60, 110),
(2.20, 'ANULADO', 61, 83),
(1.80, 'PENDIENTE', 62, 113),
(2.10, 'PENDIENTE', 63, 131),
(1.95, 'GANADO', 64, 97),
(4.50, 'GANADO', 64, 102),
(1.90, 'PENDIENTE', 65, 134),
(2.40, 'ANULADO', 66, 114),
(1.90, 'PENDIENTE', 67, 147),
(2.30, 'GANADO', 68, 121),
(1.95, 'GANADO', 68, 126),
(2.70, 'PENDIENTE', 69, 150),
(1.80, 'ANULADO', 70, 137),
(1.60, 'PENDIENTE', 71, 158),
(3.50, 'PENDIENTE', 72, 161),
(1.60, 'PENDIENTE', 72, 44),
(2.20, 'GANADO', 73, 142),
(1.75, 'PENDIENTE', 74, 41),
(1.65, 'ANULADO', 75, 152),
(1.60, 'PENDIENTE', 76, 44),
(4.00, 'PENDIENTE', 76, 47),
(2.10, 'GANADO', 77, 1),
(1.80, 'PENDIENTE', 78, 50),
(1.75, 'ANULADO', 79, 6),
(1.65, 'PENDIENTE', 80, 53),
(3.80, 'PENDIENTE', 80, 70),
(1.70, 'PENDIENTE', 81, 73),
(1.90, 'GANADO', 82, 11),
(1.70, 'PENDIENTE', 83, 76),
(3.30, 'ANULADO', 84, 16),
(2.10, 'ANULADO', 84, 21),
(4.10, 'PENDIENTE', 85, 86),
(1.95, 'GANADO', 86, 26),
(1.75, 'PENDIENTE', 87, 89),
(2.10, 'ANULADO', 88, 31),
(2.10, 'ANULADO', 88, 54),
(1.75, 'PENDIENTE', 89, 92),
(4.20, 'PENDIENTE', 90, 109),
(1.70, 'GANADO', 91, 59),
(2.10, 'PENDIENTE', 92, 112),
(1.75, 'PENDIENTE', 92, 120),
(1.85, 'ANULADO', 93, 64),
(3.60, 'PERDIDO', 94, 78),
(2.20, 'PERDIDO', 95, 83),
(1.95, 'GANADO', 96, 97),
(4.50, 'GANADO', 96, 102),
(2.40, 'PERDIDO', 97, 114),
(2.30, 'GANADO', 98, 121),
(1.95, 'PERDIDO', 99, 126),
(1.80, 'PERDIDO', 100, 137),
(2.20, 'GANADO', 100, 142),
(1.65, 'GANADO', 101, 152),
(2.10, 'PERDIDO', 102, 1),
(1.75, 'PERDIDO', 103, 6),
(1.90, 'GANADO', 104, 11),
(3.30, 'GANADO', 104, 16),
(2.10, 'PERDIDO', 105, 21),
(1.95, 'GANADO', 106, 26),
(2.10, 'PERDIDO', 107, 31),
(2.10, 'PERDIDO', 108, 54),
(1.70, 'GANADO', 108, 59),
(1.85, 'GANADO', 109, 64),
(3.60, 'PERDIDO', 110, 78),
(2.20, 'PERDIDO', 111, 83),
(1.95, 'GANADO', 112, 97),
(4.50, 'GANADO', 112, 102),
(2.40, 'PERDIDO', 113, 114),
(2.30, 'GANADO', 114, 121),
(1.95, 'GANADO', 115, 126),
(1.80, 'PERDIDO', 116, 137),
(2.20, 'GANADO', 116, 142),
(1.65, 'GANADO', 117, 152),
(2.10, 'PERDIDO', 118, 1),
(1.75, 'PERDIDO', 119, 6),
(1.90, 'GANADO', 120, 11),
(3.30, 'GANADO', 120, 16),
(2.10, 'PERDIDO', 121, 21),
(1.95, 'PERDIDO', 122, 26),
(2.10, 'GANADO', 123, 31),
(2.10, 'PERDIDO', 124, 54),
(1.70, 'GANADO', 124, 59),
(1.85, 'GANADO', 125, 64),
(3.60, 'PERDIDO', 126, 78),
(2.20, 'PERDIDO', 127, 83),
(1.95, 'GANADO', 128, 97),
(4.50, 'GANADO', 128, 102),
(2.40, 'PERDIDO', 129, 114),
(2.30, 'PERDIDO', 130, 121),
(1.95, 'GANADO', 131, 126),
(1.80, 'PERDIDO', 132, 137),
(2.20, 'GANADO', 132, 142),
(1.65, 'GANADO', 133, 152),
(2.10, 'PERDIDO', 134, 1),
(1.75, 'PERDIDO', 135, 6),
(1.90, 'GANADO', 136, 11),
(3.30, 'GANADO', 136, 16),
(2.10, 'PERDIDO', 137, 21),
(1.95, 'PERDIDO', 138, 26),
(2.10, 'GANADO', 139, 31),
(2.10, 'PERDIDO', 140, 54),
(1.70, 'GANADO', 140, 59),
(1.85, 'GANADO', 141, 64),
(3.60, 'PERDIDO', 142, 78),
(2.20, 'PERDIDO', 143, 83),
(1.95, 'GANADO', 144, 97),
(4.50, 'GANADO', 144, 102),
(2.40, 'PERDIDO', 145, 114),
(2.30, 'PERDIDO', 146, 121),
(1.95, 'GANADO', 147, 126),
(1.80, 'PERDIDO', 148, 137),
(2.20, 'GANADO', 148, 142),
(1.65, 'GANADO', 149, 152),
(2.10, 'GANADO', 150, 1),
(1.75, 'PERDIDO', 151, 6),
(1.90, 'GANADO', 152, 11),
(3.30, 'GANADO', 152, 16),
(2.10, 'PERDIDO', 153, 21),
(1.95, 'PERDIDO', 154, 26),
(2.10, 'GANADO', 155, 31),
(2.10, 'PERDIDO', 156, 54),
(1.70, 'GANADO', 156, 59),
(1.85, 'PERDIDO', 157, 64),
(3.60, 'GANADO', 158, 78),
(2.20, 'PERDIDO', 159, 83),
(1.95, 'GANADO', 160, 97),
(4.50, 'GANADO', 160, 102),
(1.90, 'PENDIENTE', 161, 133),
(1.95, 'PENDIENTE', 162, 136),
(2.40, 'GANADO', 163, 114),
(2.30, 'PENDIENTE', 164, 149),
(2.50, 'PENDIENTE', 164, 157),
(2.30, 'PERDIDO', 165, 121),
(1.95, 'GANADO', 166, 126),
(1.80, 'PERDIDO', 167, 137),
(2.20, 'GANADO', 168, 142),
(1.65, 'GANADO', 168, 152),
(2.80, 'PENDIENTE', 169, 160),
(3.25, 'PENDIENTE', 170, 37),
(2.10, 'GANADO', 171, 1),
(1.90, 'PENDIENTE', 172, 40),
(2.50, 'PENDIENTE', 172, 43),
(1.75, 'PERDIDO', 173, 6),
(1.90, 'GANADO', 174, 11),
(3.30, 'PERDIDO', 175, 16),
(2.10, 'GANADO', 176, 21),
(1.95, 'GANADO', 176, 26),
(3.30, 'PENDIENTE', 177, 46),
(1.95, 'PENDIENTE', 178, 49),
(2.10, 'GANADO', 179, 31),
(2.40, 'PENDIENTE', 180, 52),
(3.40, 'PENDIENTE', 180, 69),
(2.10, 'PERDIDO', 181, 54),
(1.70, 'GANADO', 182, 59),
(1.85, 'PERDIDO', 183, 64),
(3.60, 'GANADO', 184, 78),
(2.20, 'GANADO', 184, 83),
(1.95, 'PENDIENTE', 185, 72),
(2.30, 'PENDIENTE', 186, 75),
(1.95, 'GANADO', 187, 97),
(3.50, 'PENDIENTE', 188, 85),
(1.90, 'PENDIENTE', 188, 88),
(4.50, 'PERDIDO', 189, 102),
(2.40, 'GANADO', 190, 114),
(2.30, 'PERDIDO', 191, 121),
(1.95, 'GANADO', 192, 126),
(1.80, 'GANADO', 192, 137),
(2.20, 'PENDIENTE', 193, 91),
(3.80, 'PENDIENTE', 194, 108),
(2.20, 'GANADO', 195, 142),
(1.95, 'PENDIENTE', 196, 111),
(2.20, 'PENDIENTE', 196, 119),
(1.65, 'PERDIDO', 197, 152),
(2.10, 'GANADO', 198, 1),
(1.75, 'PERDIDO', 199, 6),
(1.90, 'GANADO', 200, 11),
(3.30, 'GANADO', 200, 16),
(1.75, 'PENDIENTE', 201, 132),
(1.85, 'PENDIENTE', 202, 135),
(2.10, 'GANADO', 203, 21),
(2.00, 'PENDIENTE', 204, 148),
(3.40, 'PENDIENTE', 204, 151),
(1.95, 'PERDIDO', 205, 26),
(2.10, 'GANADO', 206, 31),
(2.10, 'PERDIDO', 207, 54),
(1.70, 'GANADO', 208, 59),
(1.85, 'GANADO', 208, 64),
(2.30, 'PENDIENTE', 209, 159),
(2.05, 'PENDIENTE', 210, 36),
(3.60, 'GANADO', 211, 78),
(1.90, 'PENDIENTE', 212, 39),
(2.05, 'PENDIENTE', 212, 42),
(2.20, 'PERDIDO', 213, 83),
(1.95, 'GANADO', 214, 97),
(4.50, 'PERDIDO', 215, 102),
(2.40, 'GANADO', 216, 114),
(2.30, 'GANADO', 216, 121),
(1.95, 'PERDIDO', 217, 126),
(1.80, 'GANADO', 218, 137),
(2.20, 'PERDIDO', 219, 142),
(1.65, 'PERDIDO', 220, 152),
(2.10, 'GANADO', 220, 1),
(1.75, 'GANADO', 221, 6),
(1.90, 'PERDIDO', 222, 11),
(3.30, 'GANADO', 223, 16),
(2.10, 'PERDIDO', 224, 21),
(1.95, 'GANADO', 224, 26),
(2.10, 'GANADO', 225, 31),
(2.10, 'PERDIDO', 226, 54),
(1.70, 'PERDIDO', 227, 59),
(1.85, 'PERDIDO', 228, 64),
(3.60, 'GANADO', 228, 78),
(2.20, 'PERDIDO', 229, 83),
(1.95, 'GANADO', 230, 97),
(4.50, 'PERDIDO', 231, 102),
(2.40, 'GANADO', 232, 114),
(2.30, 'GANADO', 232, 121),
(1.95, 'PERDIDO', 233, 126),
(1.80, 'GANADO', 234, 137),
(2.20, 'PERDIDO', 235, 142),
(1.65, 'PERDIDO', 236, 152),
(2.10, 'GANADO', 236, 1),
(1.75, 'GANADO', 237, 6),
(1.90, 'PERDIDO', 238, 11),
(3.30, 'GANADO', 239, 16),
(2.10, 'PERDIDO', 240, 21),
(1.95, 'GANADO', 240, 26),
(2.10, 'GANADO', 241, 31),
(2.10, 'PERDIDO', 242, 54),
(1.70, 'GANADO', 243, 59),
(1.85, 'PERDIDO', 244, 64),
(3.60, 'GANADO', 244, 78),
(2.20, 'PERDIDO', 245, 83),
(1.95, 'PERDIDO', 246, 97),
(4.50, 'GANADO', 247, 102),
(2.40, 'PERDIDO', 248, 114),
(2.30, 'GANADO', 248, 121),
(1.95, 'PERDIDO', 249, 126),
(1.80, 'GANADO', 250, 137),
(2.20, 'PERDIDO', 251, 142),
(1.65, 'PERDIDO', 252, 152),
(2.10, 'GANADO', 252, 1),
(1.75, 'PERDIDO', 253, 6),
(1.90, 'GANADO', 254, 11),
(3.30, 'GANADO', 255, 16),
(2.10, 'PERDIDO', 256, 21),
(1.95, 'GANADO', 256, 26),
(2.10, 'GANADO', 257, 31),
(2.10, 'GANADO', 258, 54),
(1.70, 'PERDIDO', 259, 59),
(1.85, 'GANADO', 260, 64),
(3.60, 'GANADO', 260, 78),
(1.90, 'PENDIENTE', 261, 45),
(2.20, 'GANADO', 262, 83),
(1.95, 'PERDIDO', 263, 97),
(1.85, 'PENDIENTE', 264, 48),
(2.00, 'PENDIENTE', 264, 51),
(1.95, 'PENDIENTE', 265, 68),
(4.50, 'PERDIDO', 266, 102),
(2.40, 'PERDIDO', 267, 114),
(1.85, 'PENDIENTE', 268, 71),
(2.10, 'PENDIENTE', 268, 74),
(2.30, 'ANULADO', 269, 121),
(1.95, 'PERDIDO', 270, 126),
(1.80, 'GANADO', 271, 137),
(2.20, 'PERDIDO', 272, 142),
(1.65, 'GANADO', 272, 152),
(2.10, 'PERDIDO', 273, 1),
(1.75, 'PERDIDO', 274, 6),
(1.90, 'GANADO', 275, 11),
(3.30, 'GANADO', 276, 16),
(2.10, 'GANADO', 276, 21),
(1.95, 'PERDIDO', 277, 26),
(1.85, 'PENDIENTE', 278, 84),
(1.90, 'PENDIENTE', 279, 87),
(2.10, 'PERDIDO', 280, 31),
(2.10, 'GANADO', 280, 54),
(1.70, 'PERDIDO', 281, 59),
(2.05, 'PENDIENTE', 282, 90),
(1.85, 'ANULADO', 283, 64),
(3.60, 'PERDIDO', 284, 78),
(2.20, 'GANADO', 284, 83),
(1.95, 'GANADO', 285, 97),
(1.75, 'PENDIENTE', 286, 107),
(4.50, 'GANADO', 287, 102),
(2.40, 'PERDIDO', 288, 114),
(2.30, 'GANADO', 288, 121),
(1.95, 'GANADO', 289, 126),
(1.80, 'PERDIDO', 290, 137);
GO

-- 26. TABLA ApuestaTransaccion
INSERT INTO ApuestaTransaccion
(id_apuesta, id_transaccion) VALUES
(1, 58),
(2, 59),
(3, 60),
(4, 61),
(5, 62),     
(6, 63),
(7, 64),
(8, 65),
(9, 66),
(10, 67),

--NUEVO
(11, 74),  -- APU-011
(12, 75),  -- APU-012
(13, 76),  -- APU-013
(14, 77),  -- APU-014
(15, 78),  -- APU-015
(16, 79),  -- APU-016
(17, 80),  -- APU-017
(18, 81),  -- APU-018
(19, 82),  -- APU-019
(20, 83),  -- APU-020
(21, 84),  -- APU-021
(22, 85),  -- APU-022
(23, 86),  -- APU-023
(24, 87),  -- APU-024
(25, 88),  -- APU-025
(26, 89),  -- APU-026
(27, 90),  -- APU-027
(28, 91),  -- APU-028
(29, 92),  -- APU-029
(30, 93),  -- APU-030
(31, 94),  -- APU-031
(32, 95),  -- APU-032
(33, 96),  -- APU-033
(34, 97),  -- APU-034
(35, 98),  -- APU-035
(36, 99),  -- APU-036
(37, 100),  -- APU-037
(38, 101),  -- APU-038
(39, 102),  -- APU-039
(40, 103),  -- APU-040
(41, 104),  -- APU-041
(42, 105),  -- APU-042
(43, 106),  -- APU-043
(44, 107),  -- APU-044
(45, 108),  -- APU-045
(46, 109),  -- APU-046
(47, 110),  -- APU-047
(48, 111),  -- APU-048
(49, 112),  -- APU-049
(50, 113),  -- APU-050
(51, 114),  -- APU-051
(52, 115),  -- APU-052
(53, 116),  -- APU-053
(54, 117),  -- APU-054
(55, 118),  -- APU-055
(56, 119),  -- APU-056
(57, 120),  -- APU-057
(58, 121),  -- APU-058
(59, 122),  -- APU-059
(60, 123),  -- APU-060
(61, 124),  -- APU-061
(62, 125),  -- APU-062
(63, 126),  -- APU-063
(64, 127),  -- APU-064
(65, 128),  -- APU-065
(66, 129),  -- APU-066
(67, 130),  -- APU-067
(68, 131),  -- APU-068
(69, 132),  -- APU-069
(70, 133),  -- APU-070
(71, 134),  -- APU-071
(72, 135),  -- APU-072
(73, 136),  -- APU-073
(74, 137),  -- APU-074
(75, 138),  -- APU-075
(76, 139),  -- APU-076
(77, 140),  -- APU-077
(78, 141),  -- APU-078
(79, 142),  -- APU-079
(80, 143),  -- APU-080
(81, 144),  -- APU-081
(82, 145),  -- APU-082
(83, 146),  -- APU-083
(84, 147),  -- APU-084
(85, 148),  -- APU-085
(86, 149),  -- APU-086
(87, 150),  -- APU-087
(88, 151),  -- APU-088
(89, 152),  -- APU-089
(90, 153),  -- APU-090
(91, 154),  -- APU-091
(92, 155),  -- APU-092
(93, 156),  -- APU-093
(94, 157),  -- APU-094
(95, 158),  -- APU-095
(96, 159),  -- APU-096
(97, 160),  -- APU-097
(98, 161),  -- APU-098
(99, 162),  -- APU-099
(100, 163),  -- APU-100
(101, 164),  -- APU-101
(102, 165),  -- APU-102
(103, 166),  -- APU-103
(104, 167),  -- APU-104
(105, 168),  -- APU-105
(106, 169),  -- APU-106
(107, 170),  -- APU-107
(108, 171),  -- APU-108
(109, 172),  -- APU-109
(110, 173),  -- APU-110
(111, 174),  -- APU-111
(112, 175),  -- APU-112
(113, 176),  -- APU-113
(114, 177),  -- APU-114
(115, 178),  -- APU-115
(116, 179),  -- APU-116
(117, 180),  -- APU-117
(118, 181),  -- APU-118
(119, 182),  -- APU-119
(120, 183),  -- APU-120
(121, 184),  -- APU-121
(122, 185),  -- APU-122
(123, 186),  -- APU-123
(124, 187),  -- APU-124
(125, 188),  -- APU-125
(126, 189),  -- APU-126
(127, 190),  -- APU-127
(128, 191),  -- APU-128
(129, 192),  -- APU-129
(130, 193),  -- APU-130
(131, 194),  -- APU-131
(132, 195),  -- APU-132
(133, 196),  -- APU-133
(134, 197),  -- APU-134
(135, 198),  -- APU-135
(136, 199),  -- APU-136
(137, 200),  -- APU-137
(138, 201),  -- APU-138
(139, 202),  -- APU-139
(140, 203),  -- APU-140
(141, 204),  -- APU-141
(142, 205),  -- APU-142
(143, 206),  -- APU-143
(144, 207),  -- APU-144
(145, 208),  -- APU-145
(146, 209),  -- APU-146
(147, 210),  -- APU-147
(148, 211),  -- APU-148
(149, 212),  -- APU-149
(150, 213),  -- APU-150
(151, 214),  -- APU-151
(152, 215),  -- APU-152
(153, 216),  -- APU-153
(154, 217),  -- APU-154
(155, 218),  -- APU-155
(156, 219),  -- APU-156
(157, 220),  -- APU-157
(158, 221),  -- APU-158
(159, 222),  -- APU-159
(160, 223),  -- APU-160
(161, 224),  -- APU-161
(162, 225),  -- APU-162
(163, 226),  -- APU-163
(164, 227),  -- APU-164
(165, 228),  -- APU-165
(166, 229),  -- APU-166
(167, 230),  -- APU-167
(168, 231),  -- APU-168
(169, 232),  -- APU-169
(170, 233),  -- APU-170
(171, 234),  -- APU-171
(172, 235),  -- APU-172
(173, 236),  -- APU-173
(174, 237),  -- APU-174
(175, 238),  -- APU-175
(176, 239),  -- APU-176
(177, 240),  -- APU-177
(178, 241),  -- APU-178
(179, 242),  -- APU-179
(180, 243),  -- APU-180
(181, 244),  -- APU-181
(182, 245),  -- APU-182
(183, 246),  -- APU-183
(184, 247),  -- APU-184
(185, 248),  -- APU-185
(186, 249),  -- APU-186
(187, 250),  -- APU-187
(188, 251),  -- APU-188
(189, 252),  -- APU-189
(190, 253),  -- APU-190
(191, 254),  -- APU-191
(192, 255),  -- APU-192
(193, 256),  -- APU-193
(194, 257),  -- APU-194
(195, 258),  -- APU-195
(196, 259),  -- APU-196
(197, 260),  -- APU-197
(198, 261),  -- APU-198
(199, 262),  -- APU-199
(200, 263),  -- APU-200
(201, 264),  -- APU-201
(202, 265),  -- APU-202
(203, 266),  -- APU-203
(204, 267),  -- APU-204
(205, 268),  -- APU-205
(206, 269),  -- APU-206
(207, 270),  -- APU-207
(208, 271),  -- APU-208
(209, 272),  -- APU-209
(210, 273),  -- APU-210
(211, 274),  -- APU-211
(212, 275),  -- APU-212
(213, 276),  -- APU-213
(214, 277),  -- APU-214
(215, 278),  -- APU-215
(216, 279),  -- APU-216
(217, 280),  -- APU-217
(218, 281),  -- APU-218
(219, 282),  -- APU-219
(220, 283),  -- APU-220
(221, 284),  -- APU-221
(222, 285),  -- APU-222
(223, 286),  -- APU-223
(224, 287),  -- APU-224
(225, 288),  -- APU-225
(226, 289),  -- APU-226
(227, 290),  -- APU-227
(228, 291),  -- APU-228
(229, 292),  -- APU-229
(230, 293),  -- APU-230
(231, 294),  -- APU-231
(232, 295),  -- APU-232
(233, 296),  -- APU-233
(234, 297),  -- APU-234
(235, 298),  -- APU-235
(236, 299),  -- APU-236
(237, 300),  -- APU-237
(238, 301),  -- APU-238
(239, 302),  -- APU-239
(240, 303),  -- APU-240
(241, 304),  -- APU-241
(242, 305),  -- APU-242
(243, 306),  -- APU-243
(244, 307),  -- APU-244
(245, 308),  -- APU-245
(246, 309),  -- APU-246
(247, 310),  -- APU-247
(248, 311),  -- APU-248
(249, 312),  -- APU-249
(250, 313),  -- APU-250
(251, 314),  -- APU-251
(252, 315),  -- APU-252
(253, 316),  -- APU-253
(254, 317),  -- APU-254
(255, 318),  -- APU-255
(256, 319),  -- APU-256
(257, 320),  -- APU-257
(258, 321),  -- APU-258
(259, 322),  -- APU-259
(260, 323),  -- APU-260
(261, 324),  -- APU-261
(262, 325),  -- APU-262
(263, 326),  -- APU-263
(264, 327),  -- APU-264
(265, 328),  -- APU-265
(266, 329),  -- APU-266
(267, 330),  -- APU-267
(268, 331),  -- APU-268
(269, 332),  -- APU-269
(270, 333),  -- APU-270
(271, 334),  -- APU-271
(272, 335),  -- APU-272
(273, 336),  -- APU-273
(274, 337),  -- APU-274
(275, 338),  -- APU-275
(276, 339),  -- APU-276
(277, 340),  -- APU-277
(278, 341),  -- APU-278
(279, 342),  -- APU-279
(280, 343),  -- APU-280
(281, 344),  -- APU-281
(282, 345),  -- APU-282
(283, 346),  -- APU-283
(284, 347),  -- APU-284
(285, 348),  -- APU-285
(286, 349),  -- APU-286
(287, 350),  -- APU-287
(288, 351),  -- APU-288
(289, 352),  -- APU-289
(290, 353),  -- APU-290

-- PREMIOS DE APUESTAS GANADAS
(11, 354),  -- PRE-007
(12, 355),  -- PRE-008
(15, 356),  -- PRE-009
(17, 357),  -- PRE-010
(19, 358),  -- PRE-011
(21, 359),  -- PRE-012
(23, 360),  -- PRE-013
(26, 361),  -- PRE-014
(28, 362),  -- PRE-015
(41, 363),  -- PRE-016
(46, 364),  -- PRE-017
(50, 365),  -- PRE-018
(55, 366),  -- PRE-019
(59, 367),  -- PRE-020
(64, 368),  -- PRE-021
(68, 369),  -- PRE-022
(73, 370),  -- PRE-023
(77, 371),  -- PRE-024
(82, 372),  -- PRE-025
(86, 373),  -- PRE-026
(91, 374),  -- PRE-027
(96, 375),  -- PRE-028
(98, 376),  -- PRE-029
(101, 377),  -- PRE-030
(104, 378),  -- PRE-031
(106, 379),  -- PRE-032
(109, 380),  -- PRE-033
(112, 381),  -- PRE-034
(114, 382),  -- PRE-035
(115, 383),  -- PRE-036
(117, 384),  -- PRE-037
(120, 385),  -- PRE-038
(123, 386),  -- PRE-039
(125, 387),  -- PRE-040
(128, 388),  -- PRE-041
(131, 389),  -- PRE-042
(133, 390),  -- PRE-043
(136, 391),  -- PRE-044
(139, 392),  -- PRE-045
(141, 393),  -- PRE-046
(144, 394),  -- PRE-047
(147, 395),  -- PRE-048
(149, 396),  -- PRE-049
(150, 397),  -- PRE-050
(152, 398),  -- PRE-051
(155, 399),  -- PRE-052
(158, 400),  -- PRE-053
(160, 401),  -- PRE-054
(163, 402),  -- PRE-055
(166, 403),  -- PRE-056
(168, 404),  -- PRE-057
(171, 405),  -- PRE-058
(174, 406),  -- PRE-059
(176, 407),  -- PRE-060
(179, 408),  -- PRE-061
(182, 409),  -- PRE-062
(184, 410),  -- PRE-063
(187, 411),  -- PRE-064
(190, 412),  -- PRE-065
(192, 413),  -- PRE-066
(195, 414),  -- PRE-067
(198, 415),  -- PRE-068
(200, 416),  -- PRE-069
(203, 417),  -- PRE-070
(206, 418),  -- PRE-071
(208, 419),  -- PRE-072
(211, 420),  -- PRE-073
(214, 421),  -- PRE-074
(216, 422),  -- PRE-075
(218, 423),  -- PRE-076
(221, 424),  -- PRE-077
(223, 425),  -- PRE-078
(225, 426),  -- PRE-079
(230, 427),  -- PRE-080
(232, 428),  -- PRE-081
(234, 429),  -- PRE-082
(237, 430),  -- PRE-083
(239, 431),  -- PRE-084
(241, 432),  -- PRE-085
(243, 433),  -- PRE-086
(247, 434),  -- PRE-087
(250, 435),  -- PRE-088
(254, 436),  -- PRE-089
(255, 437),  -- PRE-090
(257, 438),  -- PRE-091
(258, 439),  -- PRE-092
(260, 440),  -- PRE-093
(262, 441),  -- PRE-094
(271, 442),  -- PRE-095
(275, 443),  -- PRE-096
(276, 444),  -- PRE-097
(285, 445),  -- PRE-098
(287, 446),  -- PRE-099
(289, 447),  -- PRE-100

-- DEVOLUCIONES DE APUESTAS ANULADAS
(43, 448),  -- DEV-005
(48, 449),  -- DEV-006
(52, 450),  -- DEV-007
(57, 451),  -- DEV-008
(61, 452),  -- DEV-009
(66, 453),  -- DEV-010
(70, 454),  -- DEV-011
(75, 455),  -- DEV-012
(79, 456),  -- DEV-013
(84, 457),  -- DEV-014
(88, 458),  -- DEV-015
(93, 459),  -- DEV-016
(269, 460),  -- DEV-017
(283, 461);  -- DEV-018
GO

UPDATE Apuesta SET cuota_total = 3.47 WHERE id_apuesta = 13;
UPDATE Apuesta SET cuota_total = 2.20 WHERE id_apuesta = 14;
UPDATE Apuesta SET cuota_total = 4.31 WHERE id_apuesta = 16;
UPDATE Apuesta SET cuota_total = 3.63 WHERE id_apuesta = 28;
UPDATE Apuesta SET cuota_total = 3.24 WHERE id_apuesta = 35;
UPDATE Apuesta SET cuota_total = 3.52 WHERE id_apuesta = 39;
GO