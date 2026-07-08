# ControlBet - BetCore DB

## Descripción del proyecto

ControlBet es una startup orientada al diseño de soluciones de gestión y monitoreo de datos para casas de apuestas deportivas. El producto propuesto, **BetCore DB**, consiste en una solución de base de datos que permite organizar, controlar y consultar información operativa, transaccional y financiera relacionada con usuarios, apuestas, eventos deportivos, cuotas, pagos, saldos, comprobantes, locales y movimientos financieros.

El proyecto no tiene como objetivo desarrollar una plataforma final de apuestas, sino diseñar e implementar una solución de base de datos que ayude a mejorar la trazabilidad de las operaciones, reducir inconsistencias, facilitar el control financiero y apoyar la toma de decisiones estratégicas dentro de una casa de apuestas deportivas.

BetCore DB integra dos enfoques de almacenamiento de datos:

- **Base de datos relacional**, implementada en **SQL Server**, orientada al control estructurado de entidades, relaciones, reglas de integridad y operaciones transaccionales.
- **Base de datos no relacional**, implementada bajo un enfoque documental en **MongoDB**, orientada a representar documentos flexibles relacionados con apuestas y movimientos financieros.

## Información académica

- **Universidad:** Universidad Peruana de Ciencias Aplicadas
- **Curso:** Diseño de Base de Datos
- **Código del curso:** 1ASI0787
- **NRC:** 6008
- **Periodo:** 2026-10
- **Grupo:** 4
- **Startup:** ControlBet
- **Producto:** BetCore DB: Modelo de gestión y monitoreo de datos para casas de apuestas deportivas

## Integrantes

| Código | Apellidos y nombres |
|---|---|
| U202423813 | Macalupu Marchan, Yeissen Beckam |
| U20241F697 | Chavez Pino, Paula Brenda |
| U202424466 | Gallegos De La Cruz, Giovanni Marcelo |
| U20241E550 | Huerta Cardenas, Brayan Benjamin |
| U202423883 | Rivera Rupay, Fabricio Jose |

## Objetivo del proyecto

Diseñar e implementar una solución de base de datos para una casa de apuestas deportivas, considerando el análisis del dominio del problema, la identificación de requisitos, el modelamiento relacional y no relacional, la implementación física en SQL Server y la representación documental en MongoDB.

## Alcance

El alcance del proyecto incluye:

- Análisis de antecedentes y problemática del negocio.
- Identificación de segmentos objetivo.
- Diseño y registro de entrevistas.
- Análisis de requisitos funcionales y no funcionales.
- Identificación de entidades, atributos y relaciones.
- Diseño del modelo entidad-relación lógico.
- Diseño del modelo entidad-relación físico.
- Evaluación y elección del sistema de gestión de base de datos relacional.
- Implementación del modelo relacional en SQL Server.
- Creación de tablas, restricciones, claves primarias y claves foráneas.
- Desarrollo de consultas SQL para análisis operativo y financiero.
- Implementación de procedimientos almacenados, funciones, triggers, índices y estadísticas.
- Evaluación y elección del sistema de gestión de base de datos no relacional.
- Diseño documental de la base de datos no relacional.
- Creación de colecciones en MongoDB.
- Validación de esquemas para documentos NoSQL.
- Carga de datos en colecciones mediante `insertMany`.
- Desarrollo de consultas NoSQL para análisis de apuestas y movimientos financieros.
- Organización del repositorio en GitHub con scripts, diagramas, documentación y evidencias.

## Tecnologías y herramientas utilizadas

| Herramienta | Uso dentro del proyecto |
|---|---|
| **SQL Server** | Implementación de la base de datos relacional. |
| **SQL Server Management Studio** | Ejecución de scripts, consultas, procedimientos, triggers, índices y estadísticas. |
| **MongoDB** | Implementación de la base de datos no relacional documental. |
| **MongoDB for VS Code** | Ejecución de scripts NoSQL desde Visual Studio Code. |
| **Visual Studio Code** | Edición y ejecución de scripts SQL y MongoDB. |
| **Hackolade** | Diseño del modelo documental NoSQL. |
| **ERD Editor / Draw.io** | Elaboración de diagramas lógicos y físicos. |
| **Git** | Control de versiones del proyecto. |
| **GitHub** | Almacenamiento y organización del repositorio. |
| **Microsoft Word** | Elaboración del informe académico. |
| **Microsoft PowerPoint** | Elaboración de presentaciones del proyecto. |

## Modelo relacional

La base de datos relacional de BetCore DB fue diseñada para representar las entidades principales del negocio de apuestas deportivas. Este modelo permite mantener integridad, consistencia y trazabilidad mediante el uso de tablas relacionadas.

Entre los principales elementos trabajados se incluyen:

- Entidades principales del negocio.
- Relaciones entre tablas.
- Claves primarias y claves foráneas.
- Restricciones de integridad.
- Modelo lógico.
- Modelo físico.
- Scripts de creación de base de datos.
- Scripts de carga de datos.
- Consultas SQL.
- Procedimientos almacenados.
- Funciones.
- Triggers.
- Índices.
- Estadísticas.

Este enfoque permite controlar adecuadamente la información relacionada con usuarios, apuestas, eventos deportivos, cuotas, locales, monedas, saldos y transacciones financieras.

## Modelo no relacional

La base de datos no relacional fue diseñada bajo un enfoque documental usando MongoDB. Este modelo permite representar información mediante documentos flexibles, estructuras anidadas y arreglos.

Para BetCore DB se definieron dos colecciones principales:

| Colección | Descripción |
|---|---|
| **apuestas** | Almacena la información principal de las apuestas deportivas, incluyendo usuario, local, selecciones, moneda, montos, estado y fechas de auditoría. |
| **movimientos_financieros** | Registra las operaciones económicas del negocio, como apuestas, depósitos, retiros, premios, reembolsos, comisiones y ajustes. |

### Patrones de modelado documental aplicados

En el modelo documental se aplicaron los siguientes patrones:

- **Embedded Document Pattern:** usado para incluir subdocumentos como `usuario`, `local`, `moneda` y el arreglo `selecciones` dentro de la colección `apuestas`.
- **Subset Pattern:** usado para almacenar solo los datos necesarios de entidades relacionadas, evitando documentos demasiado extensos.
- **Reference Pattern:** usado en la colección `movimientos_financieros` mediante campos como `usuario_id` y `apuesta_id`.

### Relación lógica entre colecciones

Aunque MongoDB no utiliza claves foráneas como una base de datos relacional, las colecciones mantienen una relación lógica mediante identificadores:

```text
movimientos_financieros.apuesta_id → apuestas.id_apuesta
movimientos_financieros.usuario_id → apuestas.usuario.id_usuario
```

## Consultas implementadas

### Consultas SQL

Las consultas SQL permiten analizar información estructurada de la base de datos relacional. Estas consultas están orientadas al control de usuarios, apuestas, eventos, transacciones, saldos y operaciones financieras.

Entre los tipos de consultas trabajadas se incluyen:

- Consultas básicas.
- Consultas con filtros.
- Consultas con agrupaciones.
- Consultas con funciones de agregación.
- Consultas con subconsultas.
- Consultas orientadas al análisis operativo y financiero.

### Consultas NoSQL

Las consultas NoSQL fueron desarrolladas en MongoDB para obtener información relevante de las colecciones `apuestas` y `movimientos_financieros`.

Entre las consultas implementadas se encuentran:

- Listar apuestas pendientes.
- Buscar apuestas con monto mayor o igual a S/ 100.
- Consultar el historial de apuestas de un usuario.
- Listar selecciones pendientes del deporte fútbol.
- Calcular el total apostado por local.
- Identificar los usuarios con mayor monto apostado.
- Listar movimientos financieros pendientes o rechazados.
- Calcular el monto total por tipo de movimiento financiero.
- Consultar movimientos financieros de una apuesta específica.
- Relacionar movimientos financieros con información de la apuesta mediante `$lookup`.

## Estructura del repositorio

```text
docs/
  report/
  keynote/
  performance/

database/
  sql-server/
    ddl/
    dml/
    queries/
    procedures/
    functions/
    triggers/
    indexes/
    statistics/
  mongodb/
    collections/
    inserts/
    queries/
    validations/

diagrams/
  relational/
    logical/
    physical/
  nosql/
    documents/

evidence/
  interviews/
  sql-server/
  mongodb/
  hackolade/

references/

deliverables/
  tb1/
  tf/
```

## Descripción de carpetas

| Carpeta | Descripción |
|---|---|
| `docs/` | Contiene documentos del informe, presentaciones y archivos de apoyo. |
| `database/sql-server/` | Contiene scripts relacionados con la base de datos relacional en SQL Server. |
| `database/mongodb/` | Contiene scripts relacionados con la base de datos no relacional en MongoDB. |
| `diagrams/` | Contiene diagramas lógicos, físicos y documentales. |
| `evidence/` | Contiene capturas y evidencias de implementación. |
| `references/` | Contiene fuentes bibliográficas y referencias utilizadas. |
| `deliverables/` | Contiene entregables académicos del proyecto. |

## Scripts principales

### SQL Server

Los scripts de SQL Server permiten crear y administrar la base de datos relacional del proyecto. Estos scripts incluyen:

- Creación de base de datos.
- Creación de tablas.
- Definición de claves primarias y foráneas.
- Carga de datos.
- Consultas.
- Procedimientos almacenados.
- Funciones.
- Triggers.
- Índices.
- Estadísticas.

### MongoDB

Los scripts de MongoDB permiten crear y cargar la base de datos no relacional del proyecto. Estos scripts incluyen:

- Selección de la base de datos `betcore_db`.
- Creación de colecciones.
- Validación de esquemas.
- Inserción de datos con `insertMany`.
- Consultas con `find`.
- Consultas con `aggregate`.
- Relación de documentos mediante `$lookup`.

## Base de datos no relacional

Para ejecutar los scripts de MongoDB desde Visual Studio Code con la extensión de MongoDB, se utiliza la siguiente instrucción:

```javascript
use("betcore_db");
```

Las colecciones principales son:

```javascript
db.createCollection("apuestas");
db.createCollection("movimientos_financieros");
```

## Resultados esperados

Con BetCore DB se espera lograr una solución de base de datos que permita:

- Organizar la información operativa y financiera de una casa de apuestas deportivas.
- Mejorar la trazabilidad de las apuestas y movimientos económicos.
- Reducir inconsistencias en el registro de datos.
- Facilitar consultas para auditoría, control interno y toma de decisiones.
- Representar información estructurada mediante SQL Server.
- Representar información flexible y documental mediante MongoDB.
- Integrar evidencias de diseño, implementación y carga de datos.

## Conclusiones

BetCore DB propone una solución integral para la gestión de datos en una casa de apuestas deportivas. El modelo relacional en SQL Server permite garantizar integridad, consistencia y control sobre la información estructurada del negocio. Por otro lado, el modelo documental en MongoDB permite representar documentos flexibles, agrupando información relacionada con apuestas y movimientos financieros.

La combinación de ambos enfoques fortalece el proyecto, ya que permite aprovechar la robustez del modelo relacional y la flexibilidad del modelo no relacional. Esto facilita el análisis de datos, la auditoría de operaciones, el control financiero y la toma de decisiones dentro de ControlBet.

## Estado del proyecto

Proyecto académico en desarrollo como parte del curso **Diseño de Base de Datos**.
