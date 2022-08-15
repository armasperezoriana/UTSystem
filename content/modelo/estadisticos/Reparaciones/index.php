<?php  
    $mysqli = new mysqli("localhost", "root", "", "ut");
   // $mant = $mysqli->query('SELECT  vehiculos.modelo AS modelo, vehiculos.placa AS placa, SUM(costo)costoTotal FROM reparaciones INNER JOIN vehiculos WHERE reparaciones.id_vehiculo = vehiculos.id_vehiculo ');
  
   $mant = $mysqli->query('SELECT r.id_reparaciones as id_reparaciones, 
   taller.nombre AS nombre_t, vehiculos.modelo as modelo, 
   taller.rif AS rif, r.nombre AS nombre, r.fecha as fecha,
   r.descripcion as descripcion, r.id_vehiculo = vehiculos.id_vehiculo, 
   vehiculos.modelo as modelo, vehiculos.placa AS placa, r.costo AS costo, 
   vehiculos.placa as placa FROM reparaciones as r INNER JOIN vehiculos
    ON r.id_vehiculo = vehiculos.id_vehiculo INNER JOIN taller 
    ON r.id_taller=  taller.id_taller WHERE r.costo > 400');
   //SELECT * FROM mantenimientos, vehiculos WHERE mantenimientos.kilometraje> vehiculos.kilometraje;  
//SELECT SUM(costo) total FROM reparaciones WHERE id_vehiculo = '9';
?>


<!DOCTYPE html>
<html lang="es">

<head>
    <title>GRÁFICOS REPARACIONES</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="../../../../assets/js/highcharts.js"></script>
    <script type="text/javascript" src="../../../../assets/js/boostrap.js"></script>
    <script type="text/javascript" src="../../../../assets/js/exporting.js"></script>

 
</head>

<body id="page-top">
	<header></header>
	<center><h1>GRÁFICO ESTADISTICO DE REPARACIONES</h1></center>
<section>	
    
<div id="container" width="80%"></div>

</section>

</body>
  <script type="text/javascript">
   Highcharts.chart('container', {
    chart: {
        type: 'column'
    },
    title: {
        text: 'Reporte de reparaciones de unidades por Costos por encima de los 400 BS'
    },
    xAxis: {
        categories: ['Reparación por Unidad: Modelo - Placa- Costo Individual']
    },
    credits: {
        enabled: false
    },
    yAxis: {
    allowDecimals: false,
    min: 0,
    title: {
        text: 'Escala de Costos por Reparacion'
    },
},
tooltip: {
    formatter: function () {
        return '<b>' + this.x + '</b><br/>' +
            this.series.name + ': ' + this.y + '<br/>' +
            'Total en Bs.: ' + this.point.stackTotal;
    }
},

plotOptions: {
    column: {
        stacking: 'normal'
    }
},
    series: [
    
    <?php 
        foreach ($mant as $key) {

    ?> 
        
{
        name: <?php echo "'".$key['modelo']. " - " .$key['placa']. "'," ?>
        data: [<?php echo $key['costo']. "," ?>]

},

<?php
        }
    ?> 
]
});

    </script>
</html>