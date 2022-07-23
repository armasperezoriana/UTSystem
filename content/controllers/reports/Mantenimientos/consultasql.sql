SELECT mantenimientos.nombre AS nombre_mantenimiento, mantenimientos.costo AS costo_mantenimiento, mantenimientos.kilometraje AS mante_kilometraje, mantenimientos.fecha AS mante_fecha FROM mantenimientos INNER JOIN vehiculos ON mantenimientos.id_vehiculo = vehiculos.id_vehiculo;

consulta