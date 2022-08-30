<!DOCTYPE html>
<html lang="en">

<head>
    <title><?php echo _NAMESYSTEM_; ?> | <?php if(!empty($action)){echo $action; } ?>
        <?php if(!empty($url)){echo $url;} ?></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</head>

<body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <?php require_once'view/assets/menu.php'; ?>
        <!-- End of Sidebar -->


        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <?php require_once'view/assets/top_menu.php'; ?>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <center>
                            <h1 class="h3 mb-0 text-gray-800">Gestión de Reportes</h1>
                       <br><br>
                            <!-- 
                            <center> <img src="assets/img/PDF.png" class="img-profile" width="15%"  right="20%" > </center> 
                            <br><br> -->
                            <!-- REPORTES PDF -->
                            <div class="row">

                                <!-- REPORTE DE VEHICULOS -->
                                <div class="col-xl-3 col-md-30 mb-30">
                                    <div class="card border-left-primary shadow h-70 py-2">
                                        <div class="card-body">
                                            <div class="row no-gutters align-items-center">
                                                <div class="col mr-2">
                                                    <div
                                                        class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                        <a href="Manual.pdf" target="blank">
                                                            <h5>Manual de Usuario</h5>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="col-auto">
                                                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-800"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                    <!-- REPORTE DE VEHICULOS -->
                                    <div class="col-xl-3 col-md-30 mb-30">
                                    <div class="card border-left-primary shadow h-70 py-2">
                                        <div class="card-body">
                                            <div class="row no-gutters align-items-center">
                                                <div class="col mr-2">
                                                    <div
                                                        class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                        <a href="<?=_REPORTS_?>Vehiculos" target="blank" >
                                                            <h5>Vehiculos PDF</h5>
                                                        </a>
                                                    </div>
                                                    <div class="h5 mb-0 font-weight-bold text-gray-800"></div>
                                                </div>
                                                <div class="col-auto">
                                                    <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            
                                <!-- REPORTE CHOFERES-->
                                <div class="col-xl-3 col-md-6 mb-4">
                                    <div class="card border-left-success shadow h-70 py-2">
                                        <div class="card-body">
                                            <div class="row no-gutters align-items-center">
                                                <div class="col mr-2">
                                                    <div
                                                        class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                        <a href="<?=_REPORTS_ ?>Choferes" target="blank">
                                                            <h5>Choferes PDF</h5>
                                                        </a>
                                                    </div>
                                                    <div class="h5 mb-0 font-weight-bold text-gray-800"></div>
                                                </div>
                                                <div class="col-auto">
                                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- REPORTE MANTENIMIENTO PDF -->
                                <div class="col-xl-3 col-md-6 mb-4">
                                    <div class="card border-left-info shadow h-70 py-2">
                                        <div class="card-body">
                                            <div class="row no-gutters align-items-center">
                                                <div class="col mr-2">
                                                    <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                                        <a href="<?=_REPORTS_?>Mantenimientos" target="blank">
                                                            <h6>Mantenimientos PDF</h6>
                                                        </a>
                                                    </div>
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col-auto">
                                                            <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
                                                            </div>
                                                            <i class="fas fa-fw fa-wrenchtext-gray-800"></i>

                                                        </div>

                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <!-- REPORTE DE RUTAS -->
                                <div class="col-xl-3 col-md-6 mb-4">
                                    <div class="card border-left-warning shadow h-100 py-2">
                                        <div class="card-body">
                                            <div class="row no-gutters align-items-center">
                                                <div class="col mr-2">
                                                    <div
                                                        class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                        <a href="<?=_REPORTS_?>Rutas" target="blank">
                                                            <h5>Rutas PDF</h5>
                                                        </a>
                                                    </div>
                                                    <div class="h5 mb-0 font-weight-bold text-gray-800"></div>
                                                </div>
                                                <div class="col-auto">
                                                    <i class="fas fa-comments fa-2x text-gray-300"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                  <!-- REPORTE DE TALLERES -->
                                  <div class="col-xl-3 col-md-6 mb-4">
                                    <div class="card border-left-danger shadow h-100 py-2">
                                        <div class="card-body">
                                            <div class="row no-gutters align-items-center">
                                                <div class="col mr-2">
                                                    <div
                                                        class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                        <a href="<?=_REPORTS_ ?>Taller" target="blank">
                                                            <h5>Talleres PDF</h5>
                                                        </a>
                                                    </div>
                                                    <div class="h5 mb-0 font-weight-bold text-gray-800"></div>
                                                </div>
                                                <div class="col-auto">
                                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        


                            <!--ESTADISTICAS -->



                            <center>
                                <h1 class="h3 mb-0 text-gray-800">Gestión de Reportes Estadisticos</h1>
                            </center>
                            <br>
                            <!-- <br><br>
                            <center> <img src="assets/img/estadisticas.png" class="img-profile" width="20%"  right="20%" > </center> 
                            <br><br> -->
                            <!-- Area Chart -->
                            <div class="row">
                                <div class="col-xl-3 col-md-6 mb-4">
                                    <div class="card border-left-primary shadow h-70 py-2">
                                        <div class="card-body">
                                            <div class="row no-gutters align-items-center">
                                                <div class="col mr-2">
                                                    <div
                                                        class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                        <a target="blank" href="<?=_ESTADISTICOS_?>Vehiculos">
                                                            <h5> Vehiculos</h5>
                                                        </a>
                                                    </div>
                                                    <div class="h5 mb-0 font-weight-bold text-gray-800"></div>
                                                </div>
                                                <div class="col-auto">
                                                    <i class="fas fa-fw fa-chart-area"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Earnings (Monthly) Card Example -->
                                <div class="col-xl-3 col-md-6 mb-4">
                                    <div class="card border-left-success shadow h-70 py-2">
                                        <div class="card-body">
                                            <div class="row no-gutters align-items-center">
                                                <div class="col mr-2">
                                                    <div
                                                        class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                        <a href="<?=_ESTADISTICOS_ ?>Reparaciones" target="blank">
                                                            <h5>Reparaciones</h5>
                                                        </a>
                                                    </div>
                                                    <div class="h5 mb-0 font-weight-bold text-gray-800"></div>
                                                </div>
                                                <div class="col-auto">
                                                    <i class="fas fa-fw fa-chart-area"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- ALERTAS -->
                                <div class="col-xl-3 col-md-6 mb-4">
                                    <div class="card border-left-info shadow h-70 py-2">
                                        <div class="card-body">
                                            <div class="row no-gutters align-items-center">
                                                <div class="col mr-2">
                                                    <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                                        <a href="<?=_ESTADISTICOS_?>Mantenimientos" target="blank">
                                                            <h6>Mantenimiento</h6>
                                                        </a>
                                                    </div>
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col-auto">
                                                            <i class="fas fa-fw fa-chart-area"></i>

                                                        </div>

                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <!-- Pending Requests Card Example -->
                                <div class="col-xl-3 col-md-6 mb-4">
                                    <div class="card border-left-warning shadow h-100 py-2">
                                        <div class="card-body">
                                            <div class="row no-gutters align-items-center">
                                                <div class="col mr-2">
                                                    <div
                                                        class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                        <a href="<?=_ESTADISTICOS_?>Rutas" target="blank">
                                                            <h5>Rutas</h5>
                                                        </a>
                                                    </div>
                                                    <div class="h5 mb-0 font-weight-bold text-gray-800"></div>
                                                </div>
                                                <div class="col-auto">
                                                    <i class="fas fa-fw fa-chart-area"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <!-- Pending Requests Card Example -->
                                
                            </div>
                    </div>
                </div>





                <?php require_once'view/assets/footer.php'; ?>
                <!-- End of Content Wrapper -->
            </div>
            <!-- End of Page Wrapper -->

            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top">
                <i class="fas fa-angle-up"></i>
            </a>

</body>

</html>