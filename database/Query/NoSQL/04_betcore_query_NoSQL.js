use("betcore_db");

// Consulta 1: Listar apuestas pendientes
db.apuestas
  .find(
    {
      estado_apuesta: "PENDIENTE",
    },
    {
      _id: 0,
      id_apuesta: 1,
      codigo_ticket: 1,
      "usuario.nombre_completo": 1,
      monto_apostado: 1,
      estado_apuesta: 1,
      fecha_apuesta: 1,
    },
  )
  .sort({
    fecha_apuesta: -1,
  });

// Consulta 2: Buscar apuestas con monto mayor o igual a S/ 100
db.apuestas
  .find(
    {
      monto_apostado: {
        $gte: 100,
      },
      "moneda.codigo": "PEN",
    },
    {
      _id: 0,
      id_apuesta: 1,
      codigo_ticket: 1,
      "usuario.nombre_completo": 1,
      monto_apostado: 1,
      "moneda.codigo": 1,
      estado_apuesta: 1,
    },
  )
  .sort({
    monto_apostado: -1,
  });

// Consulta 3: Consultar el historial de apuestas de un usuario
db.apuestas
  .find(
    {
      "usuario.numero_documento": "12345678",
    },
    {
      _id: 0,
      id_apuesta: 1,
      codigo_ticket: 1,
      "usuario.nombre_completo": 1,
      selecciones: 1,
      monto_apostado: 1,
      monto_ganancia: 1,
      estado_apuesta: 1,
      fecha_apuesta: 1,
    },
  )
  .sort({
    fecha_apuesta: -1,
  });

// Consulta 4: Listar selecciones pendientes del deporte fútbol
db.apuestas.aggregate([
  {
    $unwind: "$selecciones",
  },
  {
    $match: {
      "selecciones.deporte": "Fútbol",
      "selecciones.resultado": "PENDIENTE",
    },
  },
  {
    $project: {
      _id: 0,
      id_apuesta: 1,
      codigo_ticket: 1,
      usuario: "$usuario.nombre_completo",
      evento: "$selecciones.evento",
      mercado: "$selecciones.mercado",
      opcion: "$selecciones.opcion",
      cuota: "$selecciones.cuota",
      monto_apostado: 1,
      estado_apuesta: 1,
    },
  },
]);

// Consulta 5: Calcular el total apostado por local
db.apuestas.aggregate([
  {
    $group: {
      _id: "$local.nombre_local",
      total_apostado: {
        $sum: "$monto_apostado",
      },
      cantidad_apuestas: {
        $sum: 1,
      },
    },
  },
  {
    $project: {
      _id: 0,
      local: "$_id",
      total_apostado: 1,
      cantidad_apuestas: 1,
    },
  },
  {
    $sort: {
      total_apostado: -1,
    },
  },
]);

// Consulta 6: Identificar los usuarios con mayor monto apostado
db.apuestas.aggregate([
  {
    $group: {
      _id: {
        id_usuario: "$usuario.id_usuario",
        nombre_completo: "$usuario.nombre_completo",
      },
      total_apostado: {
        $sum: "$monto_apostado",
      },
      cantidad_apuestas: {
        $sum: 1,
      },
    },
  },
  {
    $project: {
      _id: 0,
      id_usuario: "$_id.id_usuario",
      nombre_completo: "$_id.nombre_completo",
      total_apostado: 1,
      cantidad_apuestas: 1,
    },
  },
  {
    $sort: {
      total_apostado: -1,
    },
  },
  {
    $limit: 5,
  },
]);

// Consulta 7: Listar movimientos financieros pendientes o rechazados
db.movimientos_financieros
  .find(
    {
      estado: {
        $in: ["PENDIENTE", "RECHAZADA"],
      },
    },
    {
      _id: 0,
      id_transaccion: 1,
      usuario_id: 1,
      apuesta_id: 1,
      tipo: 1,
      estado: 1,
      monto: 1,
      metodo_pago: 1,
      fecha_operacion: 1,
    },
  )
  .sort({
    fecha_operacion: -1,
  });

// Consulta 8: Calcular el monto total por tipo de movimiento financiero
db.movimientos_financieros.aggregate([
  {
    $group: {
      _id: "$tipo",
      total_monto: {
        $sum: "$monto",
      },
      cantidad_movimientos: {
        $sum: 1,
      },
    },
  },
  {
    $project: {
      _id: 0,
      tipo_movimiento: "$_id",
      total_monto: 1,
      cantidad_movimientos: 1,
    },
  },
  {
    $sort: {
      total_monto: -1,
    },
  },
]);

// Consulta 9: Consultar movimientos financieros de una apuesta específica
db.movimientos_financieros
  .find(
    {
      apuesta_id: 1001,
    },
    {
      _id: 0,
      id_transaccion: 1,
      apuesta_id: 1,
      usuario_id: 1,
      tipo: 1,
      estado: 1,
      monto: 1,
      saldo_anterior: 1,
      saldo_posterior: 1,
      fecha_operacion: 1,
    },
  )
  .sort({
    fecha_operacion: -1,
  });

// Consulta 10: Relacionar movimientos financieros con la información de la apuesta
db.movimientos_financieros.aggregate([
  {
    $lookup: {
      from: "apuestas",
      localField: "apuesta_id",
      foreignField: "id_apuesta",
      as: "detalle_apuesta",
    },
  },
  {
    $unwind: "$detalle_apuesta",
  },
  {
    $project: {
      _id: 0,
      id_transaccion: 1,
      tipo: 1,
      estado: 1,
      monto: 1,
      fecha_operacion: 1,
      apuesta_id: 1,
      codigo_ticket: "$detalle_apuesta.codigo_ticket",
      usuario: "$detalle_apuesta.usuario.nombre_completo",
      monto_apostado: "$detalle_apuesta.monto_apostado",
      estado_apuesta: "$detalle_apuesta.estado_apuesta",
    },
  },
  {
    $sort: {
      fecha_operacion: -1,
    },
  },
]);
