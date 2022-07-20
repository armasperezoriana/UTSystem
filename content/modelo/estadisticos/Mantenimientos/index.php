<!DOCTYPE html>
<html lang="es">

<head>
    <title>GRÁFICOS MANTENIMIENTOS</title>
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
	<center><h2>GRÁFICO ESTADISTICO MANTENIMIENTOS CON MAYOR COSTO MENSUAL</h2></center>
<section>	
    
<div id="container" width="80%"></div>

</section>

</body>
  <script type="text/javascript">
  Highcharts.chart('container', {

title: {
    text: 'Mantenimientos con mayor costo de forma decreciente'
},

subtitle: {
    text: 'Analisis de Datos de sistem UT'
},

yAxis: {
    title: {
        text: 'Kilometraje alcanzado para el mantenimiento'
    }
},

xAxis: {
    accessibility: {
        rangeDescription: 'Rango: bs a $'
    }
},

legend: {
    layout: 'vertical',
    align: 'right',
    verticalAlign: 'middle'
},

plotOptions: {
    series: {
        label: {
            connectorAllowed: false
        },
        pointStart: 25
    }
},

series: [{
    name: 'Reparacion Bujias',
    data: [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]
}, {
    name: 'Cambio de Aceite',
    data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434]
}, {
    name: 'Chequeo General',
    data: [11744, 17722, 16005, 19771, 20185, 24377, 32147, 39387]
}, {
    name: 'Cauchos',
    data: [null, null, 7988, 12169, 15112, 22452, 34400, 34227]
}, {
    name: 'Tripoide',
    data: [12908, 5948, 8105, 11248, 8989, 11816, 18274, 18111]
}],

responsive: {
    rules: [{
        condition: {
            maxWidth: 5000
        },
        chartOptions: {
            legend: {
                layout: 'horizontal',
                align: 'center',
                verticalAlign: 'bottom'
            }
        }
    }]
}

});
          

    </script>
</html>