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
    categories: ['Nombre de la Ruta', 'Kilometraje', 'Duracion de la ruta']
},

yAxis: {
    allowDecimals: false,
    min: 0,
    title: {
        text: 'Number of fruits'
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

series: [{
    name: 'John',
    data: [5, 3, 4, 7, 2],
    stack: 'male'
}, {
    name: 'Joe',
    data: [3, 4, 4, 2, 5],
    stack: 'male'
}, {
    name: 'Jane',
    data: [2, 5, 6, 2, 1],
    stack: 'female'
}, {
    name: 'Janet',
    data: [3, 0, 4, 4, 3],
    stack: 'female'
}]
});
          
    </script>
</html>