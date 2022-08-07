<?php  
    $mysqli = new mysqli("localhost", "root", "", "ut");
    $vehiculo = $mysqli->query('SELECT * FROM vehiculos WHERE status = 1 AND KILOMETRAJE>1500 ORDER BY KILOMETRAJE');
?>


<!DOCTYPE html>
<html lang="es">

<head>
    <title>GRÁFICOS VEHICULOS</title>
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
	<center><h1>GRÁFICO ESTADISTICO VEHICULOS</h1></center>
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
        text: 'Vehiculos con kilometraje por encima de los 1500k, que ameritan proximos mantenimientos'
    },
    xAxis: {
        categories: ['Modelo - Placa -Kilometraje' ]
    },
    yAxis: {
    allowDecimals: false,
    min: 0,
    title: {
        text: 'Escala de Kilometrajes por Vehiculo'
    }
},
    credits: {
        enabled: false
    },
    series: [
    
    <?php 
        foreach ($vehiculo as $key) {

    ?> 
        
{
        name: <?php echo "'".$key['modelo']. " - " .$key['placa']. "'," ?>
        data: [<?php echo $key['kilometraje']. "," ?>]

},

    <?php
        }
    ?> 
]
});

    </script>
</html>