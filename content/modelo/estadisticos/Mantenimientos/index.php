<?php  
    $mysqli = new mysqli("localhost", "root", "", "ut");
    $mant = $mysqli->query('SELECT placa, modelo, nombre, costo FROM mantenimientos, vehiculos WHERE mantenimientos.costo > 700 AND vehiculos.id_vehiculo = mantenimientos.id_vehiculo');
  //SELECT * FROM mantenimientos, vehiculos WHERE mantenimientos.kilometraje> vehiculos.kilometraje;  
?>


<!DOCTYPE html>
<html lang="es">

<head>
    <title>GRÁFICOS MANTENIMIENTO</title>
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
	<center><h1>GRÁFICO ESTADISTICO MANTENIMIENTO</h1></center>
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
        text: 'Costo de los mantenimientos por Vehiculo por encima de los 700 Bs. porcentaje anual'
    },
    xAxis: {
        categories: ['Modelo - Placa- Costo']
    },
    credits: {
        enabled: false
    },
    yAxis: {
    allowDecimals: false,
    min: 0,
    title: {
        text: 'Escala de Costos por Mantenimientos'
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