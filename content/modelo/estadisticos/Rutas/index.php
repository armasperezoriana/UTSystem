<?php  
    $mysqli = new mysqli("localhost", "root", "", "ut");
    $mant = $mysqli->query('SELECT rutas.id_ruta AS id_ruta, rutas.direccion_ruta AS direccion_ruta, rutas.nombre_ruta AS nombre_ruta, vehiculos.placa AS placa, rutas.kilometraje AS kilometraje FROM rutas INNER JOIN vehiculos ON rutas.placa = vehiculos.placa');
  //SELECT * FROM mantenimientos, vehiculos WHERE mantenimientos.kilometraje> vehiculos.kilometraje;  
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
	<center><h2>GRÁFICO ESTADISTICO RUTAS CON MAYOR KILOMETRAJE</h2></center>
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
    text: 'Rutas con recorridos mas largos'
},

xAxis: {
    categories: ['Ruta Asignada', 'Kilometraje']
},

yAxis: {
    allowDecimals: false,
    min: 0,
    title: {
        text: 'Rutas y kilometrajes por unidad'
    }
},

tooltip: {
    formatter: function () {
        return '<b>' + this.x + '</b><br/>' +
            this.series.name + ': ' + this.y + '<br/>' +
            'Total: ' + this.point.stackTotal;
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
        name: <?php echo "'".$key['nombre_ruta']. " - " .$key['placa']. "'," ?>
        data: [<?php echo $key['kilometraje']. "," ?>]

},
<?php
        }
    ?> 
    ],
    series: [

<?php 
    foreach ($mant as $key) {

?> 
{
    name: <?php echo "'".$key['nombre_ruta']. " - " .$key['direccion_ruta']. "'," ?>
    data: [<?php echo $key['kilometraje']. "," ?>]

},
<?php
    }
?> 
]
});
          
    </script>
</html>