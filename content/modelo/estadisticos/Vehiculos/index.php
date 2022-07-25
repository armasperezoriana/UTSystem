

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
        text: 'Vehiculos con mayor kilometraje recorrido '
    },
    xAxis: {
        categories: ['Modelo', 'Funcionamiento', 'Kilometraje']
    },
    credits: {
        enabled: false
    },
    series: [{
        name: 'Unidad', 
        data: [
            <?php
                use content\config\conection\database as database;
$mysqli = new mysqli("localhost", "root", "", "ut");
        $resultado = $mysqli->query('SELECT * FROM Vehiculos WHERE kilometraje > 300');

               while($row=$resultado->fetch_assoc()){

                    //echo "['".$row["modelo"]."',".$row["funcionamiento"]."',".$row["kilometraje"]."],";
                $row['id_vehiculo'];
                $row['placa'];
                $row['modelo'];
                $row['funcionamiento'];


                }
                 
                ?>
        ]

    }]
});

    </script>
</html>