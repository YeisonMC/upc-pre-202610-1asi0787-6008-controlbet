// Creacion de base de datos
use("betcore_db");

// Creacion de colecciones
db.createCollection("apuestas", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: [
        "id_apuesta",
        "codigo_ticket",
        "usuario",
        "selecciones",
        "moneda",
        "monto_apostado",
        "estado_apuesta",
        "fecha_apuesta",
      ],
      properties: {
        _id: {
          bsonType: "objectId",
          description: "Identificador único del documento.",
        },
        id_apuesta: {
          bsonType: "int",
          minimum: 1,
          description: "Identificador interno de la apuesta.",
        },
        codigo_ticket: {
          bsonType: "string",
          minLength: 8,
          maxLength: 20,
          description: "Código único del ticket de apuesta.",
        },
        usuario: {
          bsonType: "object",
          required: [
            "id_usuario",
            "nombre_completo",
            "tipo_documento",
            "numero_documento",
          ],
          properties: {
            id_usuario: {
              bsonType: "int",
              minimum: 1,
              description: "Identificador del usuario que realizó la apuesta.",
            },
            nombre_completo: {
              bsonType: "string",
              minLength: 3,
              maxLength: 100,
              description: "Nombre completo del usuario.",
            },
            tipo_documento: {
              bsonType: "string",
              enum: ["DNI", "CE", "PASAPORTE"],
              description: "Tipo de documento del usuario.",
            },
            numero_documento: {
              bsonType: "string",
              minLength: 8,
              maxLength: 12,
              description: "Número de documento del usuario.",
            },
            correo: {
              bsonType: "string",
              maxLength: 120,
              description: "Correo electrónico del usuario.",
            },
          },
        },
        local: {
          bsonType: "object",
          properties: {
            id_local: {
              bsonType: "int",
              minimum: 1,
              description: "Identificador del local.",
            },
            nombre_local: {
              bsonType: "string",
              minLength: 3,
              maxLength: 80,
              description: "Nombre del local.",
            },
            distrito: {
              bsonType: "string",
              minLength: 3,
              maxLength: 80,
              description: "Distrito donde se ubica el local.",
            },
            ciudad: {
              bsonType: "string",
              minLength: 3,
              maxLength: 80,
              description: "Ciudad donde se ubica el local.",
            },
          },
        },
        selecciones: {
          bsonType: "array",
          minItems: 1,
          description: "Lista de selecciones realizadas en la apuesta.",
          items: {
            bsonType: "object",
            required: [
              "deporte",
              "evento",
              "mercado",
              "opcion",
              "cuota",
              "resultado",
            ],
            properties: {
              deporte: {
                bsonType: "string",
                minLength: 3,
                maxLength: 50,
                description: "Deporte relacionado con la apuesta.",
              },
              evento: {
                bsonType: "string",
                minLength: 5,
                maxLength: 120,
                description: "Evento deportivo seleccionado.",
              },
              mercado: {
                bsonType: "string",
                minLength: 3,
                maxLength: 80,
                description: "Mercado de apuesta seleccionado.",
              },
              opcion: {
                bsonType: "string",
                minLength: 2,
                maxLength: 100,
                description: "Opción elegida por el usuario.",
              },
              cuota: {
                bsonType: "double",
                minimum: 1,
                maximum: 100,
                description: "Valor de la cuota al momento de apostar.",
              },
              resultado: {
                bsonType: "string",
                enum: ["PENDIENTE", "ACERTADO", "FALLADO", "ANULADO"],
                description: "Resultado de la selección.",
              },
            },
          },
        },
        moneda: {
          bsonType: "object",
          required: ["id_moneda", "codigo"],
          properties: {
            id_moneda: {
              bsonType: "int",
              minimum: 1,
              description: "Identificador de la moneda.",
            },
            codigo: {
              bsonType: "string",
              enum: ["PEN", "USD", "EUR"],
              description: "Código de la moneda.",
            },
            simbolo: {
              bsonType: "string",
              enum: ["S/", "$", "€"],
              description: "Símbolo de la moneda.",
            },
          },
        },
        monto_apostado: {
          bsonType: "double",
          minimum: 0,
          description: "Monto apostado por el usuario.",
        },
        monto_ganancia: {
          bsonType: "double",
          minimum: 0,
          description: "Monto ganado cuando corresponda.",
        },
        estado_apuesta: {
          bsonType: "string",
          enum: ["PENDIENTE", "GANADA", "PERDIDA", "ANULADA", "CANCELADA"],
          description: "Estado actual de la apuesta.",
        },
        fecha_apuesta: {
          bsonType: "date",
          description: "Fecha y hora de registro de la apuesta.",
        },
        created_at: {
          bsonType: "date",
          description: "Fecha de creación del documento.",
        },
        updated_at: {
          bsonType: "date",
          description: "Fecha de última actualización del documento.",
        },
        fuente: {
          bsonType: "string",
          maxLength: 50,
          description: "Fuente u origen del registro.",
        },
      },
    },
  },
  validationLevel: "strict",
  validationAction: "error",
});

db.createCollection("movimientos_financieros", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: [
        "id_transaccion",
        "usuario_id",
        "moneda",
        "tipo",
        "estado",
        "monto",
        "fecha_operacion",
      ],
      properties: {
        _id: {
          bsonType: "objectId",
          description: "Identificador único del documento.",
        },
        id_transaccion: {
          bsonType: "int",
          minimum: 1,
          description: "Identificador interno de la transacción financiera.",
        },
        usuario_id: {
          bsonType: "int",
          minimum: 1,
          description:
            "Referencia al usuario relacionado con el movimiento financiero.",
        },
        apuesta_id: {
          bsonType: "int",
          minimum: 1,
          description:
            "Referencia a la apuesta relacionada con el movimiento financiero.",
        },
        moneda: {
          bsonType: "object",
          required: ["codigo"],
          properties: {
            codigo: {
              bsonType: "string",
              enum: ["PEN", "USD", "EUR"],
              description: "Código de la moneda utilizada.",
            },
            simbolo: {
              bsonType: "string",
              enum: ["S/", "$", "€"],
              description: "Símbolo de la moneda.",
            },
          },
        },
        tipo: {
          bsonType: "string",
          enum: [
            "APUESTA",
            "DEPOSITO",
            "RETIRO",
            "PREMIO",
            "REEMBOLSO",
            "COMISION",
            "AJUSTE",
          ],
          description: "Tipo de movimiento financiero.",
        },
        estado: {
          bsonType: "string",
          enum: ["PENDIENTE", "COMPLETADA", "FALLIDA", "RECHAZADA"],
          description: "Estado del movimiento financiero.",
        },
        monto: {
          bsonType: "double",
          minimum: 0,
          description: "Monto principal del movimiento financiero.",
        },
        saldo_anterior: {
          bsonType: "double",
          minimum: 0,
          description: "Saldo antes de aplicar el movimiento.",
        },
        saldo_posterior: {
          bsonType: "double",
          minimum: 0,
          description: "Saldo después de aplicar el movimiento.",
        },
        comision_aplicada: {
          bsonType: "double",
          minimum: 0,
          description: "Comisión aplicada al movimiento.",
        },
        metodo_pago: {
          bsonType: "string",
          minLength: 3,
          maxLength: 60,
          description: "Método de pago utilizado.",
        },
        numero_comprobante: {
          bsonType: "string",
          minLength: 4,
          maxLength: 30,
          description: "Número de comprobante de la operación.",
        },
        descripcion: {
          bsonType: "string",
          maxLength: 200,
          description: "Descripción breve del movimiento financiero.",
        },
        fecha_operacion: {
          bsonType: "date",
          description: "Fecha principal de la operación financiera.",
        },
        created_at: {
          bsonType: "date",
          description: "Fecha de creación del documento.",
        },
        updated_at: {
          bsonType: "date",
          description: "Fecha de última actualización del documento.",
        },
      },
    },
  },
  validationLevel: "strict",
  validationAction: "error",
});
