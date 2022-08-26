<!DOCTYPE html>
<html lang="en">

<head>
    <title><?php echo _NAMESYSTEM_; ?> | <?php if(!empty($action)){echo $action; } ?>
        <?php if(!empty($url)){echo $url;} ?></title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
    <link href="../../assets/css/select2.min.css" rel="stylesheet" />
    <script src="../../assets/js/select2.min.js"></script>


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
                        <h1 class="h3 mb-0 text-gray-800">Gestión de Mantenimientos Preventivos</h1>
                        <!-- <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generar Reportes</a> -->
                    </div>

                    <div class="container-fluid">

                        <!-- LEYENDA DEL MODULO -->
                        <p class="mb-4">En este módulo podrá visualizar los mantenimientos preventivos de los vehiculos,
                            relacionados con el kilometraje, es necesario que dicho vehiculo este previamente registrado
                            al igual que el taller<a target="_blank">
                            </a></p>

                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <center>
                                    <h6 class="m-0 font-weight-bold text-primary">Módulo de Mantenimientos</h6>
                                </center>
                            </div>
                            <div class="col-sm-4" style='text-align:right;top:100px;'>
                                <span class="icon text-white-50">
                                    <i class="fas fa-check"></i>
                                </span>
                                <a href="#" class="btn btn-success btn-icon-split" data-toggle="modal"
                                    data-target="#AgregarMantenimientoModal">
                                    <span class="icon text-white-50">
                                        <i class="fas fa-check"></i>
                                    </span>
                                    <span class="text">Registrar Mantenimiento Preventivo</span>
                                </a>
                            </div>
                            <br>
                        
                       <div class="card-body">
                        
                            <div class="col-sm-20" style='text-align:right; '>


                            </div>
                    
                        </div>
                       

                        <div class="col-sm-20" style='text-align:right;'>

                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                        <button class="btn btn-secondary" type="submit"> <a href="<?=_REPORTS_?>Orden/ordentaller.php" target="blank">
                                                <h6"><font color="white">Orden de Servicio por taller</font></h6>
                                            </a>  <i class="fas fa-check fa-1x text-gray-250"></i></button>
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800"></div>
                                    </div>
                                    <button class=" btn btn-danger" type="submit" onclick="reportarPDF();" ><a href="<?=_REPORTS_?>Mantenimientos/Actualizar.php" target="blank">
                            <font color="white">Exportar PDF</font></a><i class="fas fa-check fa-1x text-gray-250"></i> </button>  
                                </div>
                            </div>
                            </table>
                        </div>



                        <div class="table-responsive">
                            <div class="card-body">
                                <div class="row" style='font-size:0.9em;'>
                                    <table class="table table-striped datatable col-sm-12" id="">
                                        <thead>
                                            <tr>
                                                <th>Orden Nro.</th>
                                                <th>Vehiculo</th>
                                                <th>Mantenimiento</th>
                                                <th>Taller</th>
                                                <th>Rif</th>
                                                <th>Fecha</th>
                                                <th></th>
                                                <th>
                                                    <center>Acción</center>
                                                </th>
                                                <th></th>
                                                <th></th>

                                            </tr>
                                        </thead>

                                        <tbody>
                                            <?php foreach ($mantenimiento as $preventivo): ?>
                                            <?php if (!empty($preventivo['id_mantenimiento'])): ?>
                                            <tr>

                                                <td><?=$preventivo['id_mantenimiento'];?></td>
                                                <td><?=$preventivo['placa'] ?></td>
                                                <td><?=$preventivo['nombre']?></td>
                                                <td><?=$preventivo['nombre_t']?></td>
                                                <td><?=$preventivo['rif']?></td>
                                                <td><?=$preventivo['fecha']?></td>



                                                <td>


                                                </td>
                                                <td>
                                                    <div class="col-sm-7" style='text-align:right;'>
                                                        <a href="#" data-id="<?= $value['id_vehiculo'] ?>"
                                                            class="btn btn-info btn-icon-split consultar"
                                                            name="consultar"
                                                            data-target="#ConsultarMantenimientoModal<?=$preventivo['id_mantenimiento'] ?>"
                                                            data-toggle="modal">
                                                            <span class="icon text-white-40">
                                                                <i class="fas fa-search"></i>
                                                            </span>
                                                            <span class="text"></span>
                                                        </a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="col-sm-4" style='text-align:right;'>
                                                        <a style='color:white' class="btn btn-warning btn-icon-split editarbtn"
                                                            name="editar" id="'$value['id_vehiculo']'" 
                                                            onclick='openModal(<?=$preventivo["id_mantenimiento"] ?>);'>
                                                    
                                                            <span class="icon text-white-40">
                                                                <i class="fas fa-edit"></i>
                                                            </span>
                                                            <span class="text"></span>
                                                        </a>
                                                        <!-- <a href="#" class="btn btn-warning btn-icon-split editarbtn"
                                                            name="editar" id="'$value['id_vehiculo']'" href="#"
                                                            data-toggle="modal"
                                                           
                                                           data-target="#modalForm">
                                                    
                                                            <span class="icon text-white-40">
                                                                <i class="fas fa-edit"></i>
                                                            </span>
                                                            <span class="text"></span>
                                                        </a> -->
                                                </td>





                                                <!-- MODAL DE CONSULTAR-->
                                                <a class="scroll-to-top rounded" href="#page-top">
                                                    <i class="fas fa-angle-up"></i>
                                                </a>
                                                <style type="text/css">
                                                .modal {
                                                    font-size: 0.8em;
                                                }
                                                </style>
                                                <div class="modal fade"
                                                    id="ConsultarMantenimientoModal<?=$preventivo['id_mantenimiento'] ?>"
                                                    tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                                                    aria-hidden="true" style="padding:0;">
                                                    <div class="container">
                                                        <div class="modal-dialog">
                                                            <div class="" role="document">
                                                                <div class="modal-content">
                                                                    <div class="modal-header bg-primary"
                                                                        style="color:#FFF">
                                                                        <h5 class="modal-title">Consultar Mantenimiento
                                                                        </h5>
                                                                    </div>
                                                                    <div class="modal-body">
                                                                        <div class="row" style="width:100%;">
                                                                            <div class="form-group col-sm-12 col-md-6">
                                                                                <label for="Nombre"><b>Pieza
                                                                                        reparada</b></label>
                                                                                <input type="text"
                                                                                    class="form-control-plaintext"
                                                                                    disabled
                                                                                    value="<?=$preventivo['nombre']?>"
                                                                                    name="nombre" id="nombre">

                                                                            </div>
                                                                            <div class="form-group col-sm-12 col-md-6">
                                                                                <label for="intervalo"><b>Fecha del
                                                                                        último mantenimiento</b></label>
                                                                                <input type="date"
                                                                                    class="form-control-plaintext"
                                                                                    disabled
                                                                                    value="<?=$preventivo['fecha']?>"
                                                                                    style="width:100%;" name="intervalo"
                                                                                    id="intervalo">

                                                                            </div>
                                                                        </div>
                                                                        <br>
                                                                        <div class="row">
                                                                            <div class="form-group col-sm-12 col-md-6">
                                                                                <label
                                                                                    for="tipo"><b>Kilometraje</b></label>
                                                                                <input type="text"
                                                                                    class="form-control-plaintext"
                                                                                    disabled
                                                                                    value="<?=$preventivo['kilometraje']?>"
                                                                                    name="kilometraje" id="kilometraje">

                                                                            </div>
                                                                            <div class="form-group col-sm-12 col-md-6">
                                                                                <label
                                                                                    for="taller"><b>Taller</b></label>
                                                                                <select class="js-example-basic-single"
                                                                                    style="width:80%;" name="id_tallerM"
                                                                                    id="id_tallerM" disabled>
                                                                                    <option></option>
                                                                                    <?php foreach ($taller as $ta) : ?>
                                                                                    <?php if (!empty($ta['id_taller'])) : ?>
                                                                                    <option
                                                                                        value="<?=$ta['id_taller']?>"
                                                                                        <?php if($ta['id_taller']==$preventivo['id_taller']){ echo "selected"; } ?>>
                                                                                        <?=$ta['nombre']?> -
                                                                                        <?=$ta['rif']?></option>
                                                                                    <?php endif ?>
                                                                                    <?php endforeach ?>
                                                                                </select>

                                                                            </div>
                                                                        </div>
                                                                        <br>
                                                                        <div class="row">
                                                                            <div class="form-group col-sm-8">
                                                                                <label for="placa"><b>Unidad que se le
                                                                                        realizo
                                                                                        Mantenimiento</b></label>
                                                                                <select class="form-control select2"
                                                                                    style="width:60%;"
                                                                                    name="id_vehiculo" id="id_vehiculo"
                                                                                    disabled>
                                                                                    <option></option>
                                                                                    <?php foreach ($vehiculo as $unidad) : ?>
                                                                                    <?php if (!empty($unidad['id_vehiculo'])) : ?>
                                                                                    <option
                                                                                        value="<?php echo $unidad['id_vehiculo'] ;?>"
                                                                                        <?php if($unidad['id_vehiculo']==$preventivo['id_vehiculo']){echo "selected";} ?>>
                                                                                        <?php echo $unidad['placa']." - ".$unidad['modelo'];?>
                                                                                    </option>
                                                                                    <?php endif ?>
                                                                                    <?php endforeach ?>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                        <br>
                                                                        <div class="row">
                                                                            <div class="form-group col-sm-12 col-md-6">
                                                                                <label for="costo"><b>Costo en
                                                                                        Bs.</b></label>
                                                                                <input type="text" step="0.1"
                                                                                    value="<?=$preventivo['costo']?>"
                                                                                    class="form-control-plaintext"
                                                                                    disabled name="costo" id="costo">

                                                                            </div>
                                                                            <div class="form-group col-sm-12 col-md-6">
                                                                                <label for="tiempo"><b>Orden de
                                                                                        Servicio</b></label>
                                                                                <input type="tiempo"
                                                                                    class="form-control-plaintext"
                                                                                    disabled
                                                                                    value="Nro.   <?=$preventivo['id_mantenimiento']?>"
                                                                                    name="tiempo" id="tiempo">

                                                                            </div>

                                                                            <div class="form-group col-sm-12 col-md-6">
                                                                                <label for="Estado"><b>Estado de la
                                                                                        orden :</b></label> <input
                                                                                    type="text"
                                                                                    class="form-control select2"
                                                                                    name="estado" id="estado"
                                                                                    value="<?=$preventivo['estado']?>"
                                                                                    disabled>



                                                                                </select>


                                                                            </div>

                                                                        </div>
                                                                    </div>
                                                                    <div class="modal-footer">
                                                                        <div class="col-sm-20"
                                                                            style='text-align:right;'>

                                                                            <div class="card-body">
                                                                                <div
                                                                                    class="row no-gutters align-items-center">
                                                                                    <div class="col mr-2">
                                                                                        <div
                                                                                            class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                                                            <input type="hidden"
                                                                                                id="id_vehiculo"
                                                                                                name="id_vehiculo">
                                                                                            <a href="<?=_REPORTS_?>Orden/ordenservicio_unidad.php?id=<?=$preventivo['id_mantenimiento'] ?>"
                                                                                                target="blank">
                                                                                                <h6>IMPRIMIR ESTA ORDEN
                                                                                                </h6>
                                                                                            </a>
                                                                                        </div>
                                                                                        <div
                                                                                            class="h5 mb-0 font-weight-bold text-gray-800">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-auto">
                                                                                        <i
                                                                                            class="fas fa-check fa-2x text-gray-300"></i>
                                                                                    </div>
                                                                                </div>
                                                                            </div>

                                                                        </div>
                                                                    </div>
                                                                    <button class=" btn btn-secondary" type="button"
                                                                        data-dismiss="modal">Cancelar</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                </div>

                                </td>

                                <!-- MODAL DE MODIFICAR-->

                                <a class="scroll-to-top rounded" href="#page-top">
                                    <i class="fas fa-angle-up"></i>
                                </a>
                                <style type="text/css">
                                .modal {
                                    font-size: 0.8em;
                                }
                                </style>
                                <div class="modal fade"
                                    id="ModificarMantenimientoModal<?=$preventivo['id_mantenimiento']?>" tabindex="-1"
                                    role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true"
                                    style="padding:0;text-align:left;">
                                    <div class="container">
                                        <div class="modal-dialog">
                                            <div class="" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header bg-primary" style="color:#FFF">
                                                        <h5 class="modal-title" id="exampleModalLabel">Modificar
                                                            Mantenimiento Preventivo</h5>
                                                        <button class="close" type="button" data-dismiss="modal"
                                                            aria-label="Close">
                                                            <span aria-hidden="true">×</span>
                                                        </button>
                                                    </div>

                                                    <div class="modal-body">
                                                        <div class="row" style="width:100%;">
                                                            <div class="form-group col-sm-12 col-md-6">
                                                                <label for="Nombre"><b>Pieza a modificar</b></label>
                                                                <input type="text" class="form-control"
                                                                    value="<?=$preventivo['nombre']?>" name="nombre"
                                                                    id="nombre">
                                                                <span class="errorNombre" style="color:red;"></span>
                                                            </div>
                                                            <div class="form-group col-sm-12 col-md-6">
                                                                <label for="intervalo"><b>Fecha del último
                                                                        mantenimiento</b></label>
                                                                <input type="date" class="form-control"
                                                                    value="<?=$preventivo['fecha']?>"
                                                                    style="width:100%;" name="intervalo" id="intervalo">
                                                                <span class="errorIntervalo" style="color:red"></span>
                                                            </div>
                                                        </div>
                                                        <br>
                                                        <div class="row">
                                                            <div class="form-group col-sm-12 col-md-6">
                                                                <label for="kilometraje"><b>Kilometraje</b></label>
                                                                <input type="text" class="form-control"
                                                                    value="<?=$preventivo['kilometraje']?>"
                                                                    name="kilometraje" id="kilometraje">
                                                                <span class="errortipo" style="color:red"></span>
                                                            </div>
                                                            <div class="form-group col-sm-12 col-md-6">
                                                                <label for="taller"><b>Taller</b></label>
                                                                <select class="form-control select2 text-left"
                                                                    style="width:100%;" name="id_taller" id="id_taller">
                                                                    <option></option>
                                                                    <?php foreach ($taller as $ta) : ?>
                                                                    <?php if (!empty($ta['id_taller'])) : ?>
                                                                    <option value="<?=$ta['id_taller']?>"
                                                                        <?php if($ta['id_taller']==$preventivo['id_taller']){ echo "selected"; } ?>>
                                                                        <?=$ta['nombre']?> - <?=$ta['rif']?></option>
                                                                    <?php endif ?>
                                                                    <?php endforeach ?>
                                                                </select>
                                                                <span class="errorTaller" style="color:red"></span>
                                                            </div>
                                                        </div>
                                                        <br>
                                                        <div class="row">
                                                            <div class="form-group col-sm-12">
                                                                <label for="placa"><b>Unidad que se le realizo
                                                                        Mantenimiento</b></label>
                                                                <select class="form-control select2" style="width:100%;"
                                                                    name="id_vehiculo" id="id_vehiculo">
                                                                    <option></option>
                                                                    <?php foreach ($vehiculo as $unidad) : ?>
                                                                    <?php if (!empty($unidad['id_vehiculo'])) : ?>
                                                                    <option
                                                                        value="<?php echo $unidad['id_vehiculo'] ;?>"
                                                                        <?php if($unidad['id_vehiculo']==$preventivo['id_vehiculo']){echo "selected";} ?>>
                                                                        <?php echo $unidad['placa']." - ".$unidad['modelo'];?>
                                                                    </option>
                                                                    <?php endif ?>
                                                                    <?php endforeach ?>
                                                                </select>
                                                                <span class="errorPlaca" style="color:red"></span>
                                                            </div>
                                                        </div>
                                                        <br>
                                                        <div class="form-group col-sm-12 col-md-6">
                                                            <label for="costo"><b>Costo</b></label>
                                                            <input type="text" step="0.1" class="form-control"
                                                                name="costo" id="costo"
                                                                value="<?=$preventivo['costo']?>">
                                                            <span class="errorCosto" style="color:red"></span>

                                                        </div>
                                                        <div class="form-group col-sm-12 col-md-6">
                                                            <label for="Estado"><b>Estado de la orden :</b></label>
                                                            <select class="form-control select2" name="estado"
                                                                id="estado">
                                                                <option value="">...</option>
                                                                <option value="1">Generada</option>
                                                                <option value="0">En proceso</option>
                                                            
                                                            </select>

                                                            <span class="errorEstado" style="color:red"></span>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button class=" btn btn-secondary" type="button"
                                                            data-dismiss="modal">Cancelar</button>
                                                        <a class="EnviarMantenimientoModificar btn btn-primary" href="#"
                                                            id="<?=$preventivo['id_mantenimiento']?>">Guardar
                                                            Cambios</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </td>
                            <td>
                                <div class="col-sm-7" style='text-align:right;'>
                                    <?php if ($preventivo['status'] == 1) { ?>
                                    <a href="#" data-id="<?= $preventivo['id_mantenimiento'] ?>"
                                        class="btn btn-danger btn-icon-split inhabilitar" data-toggle="modal"
                                        data-target="">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-trash"></i>
                                        </span>
                                        <span class="text"></span>
                                    </a>
                                    <?php } else { ?>
                                    <a href="#" data-id="<?= $preventivo['id_mantenimiento'] ?>"
                                        class="btn btn-outline-info btn-icon-split habilitar" data-toggle="modal"
                                        data-target="">
                                        <span class="icon text-info-50">
                                            <i class="fas fa-trash-alt"></i>
                                        </span>
                                        <span class="text"></span>
                                    </a>
                                    <?php } ?>
                                </div>
                            </td>
                            </tr>
                            <?php endif ?>
                            <?php endforeach ?>
                            </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- MODAL DE ayuda-->

        <div class="col-sm-7" style='text-align:right;'>
            <span class="btn btn-primary" href="#" data-toggle="modal" data-target="#AyudaModal">
                Ayuda
            </span>
             <!-- boton de seguridad
            <button class="btn btn-success btn-lg" data-toggle="modal" data-target="#modalForm">
    Seguridad
</button>
-->

        </div>


        <?php require_once'view/assets/footer.php'; ?>
        <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->

    </div>
    </div>


    <!-- MODAL DE REGISTRARSE-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    <style type="text/css">
    .modal {
        font-size: 0.8em;
    }
    </style>
    <div class="modal fade" id="AgregarMantenimientoModal" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalLabel" aria-hidden="true" style="padding:0;">
        <div class="container">
            <div class="modal-dialog">
                <div class="" role="document">
                    <div class="modal-content">
                        <div class="modal-header bg-primary" style="color:#FFF">
                            <h5 class="modal-title" id="exampleModalLabel">Registrar Mantenimiento Preventivo</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>

                        <div class="modal-body">
                            <div class="row">
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="Nombre"><b>Mantenimiento de :</b></label> <select
                                        class="form-control select2" name="nombre" id="nombre">
                                        <option value="">...</option>
                                        <option value="Cambio de Aceite">Cambio de Aceite</option>
                                        <option value="Bujias">Bujias</option>
                                        <option value="Pastillas de freno">Pastillas de freno</option>
                                        <option value="Filtro de Aceite">Filtro de Aceite</option>
                                        <option value="Mant. programado">Mant. programado</option>
                                        <option value="Cauchos">Cauchos</option>
                                        <option value="Bateria">Bateria</option>
                                        <option value="Anticongelante adicional">Anticongelante adicional</option>
                                        <option value="Balanceo">Balanceo</option>
                                        <option value="Alineación">Alineación</option>
                                        <option value="Afinacion del motor">Afinacion del motor</option>
                                        <option value="Limpiaparabrisas">Limpiaparabrisas</option>
                                        <option value="Brazos de suspensión">Brazos de suspensión</option>
                                        <option value="Chasis/Dirección">Chasis/Dirección</option>
                                        <option value="Amortiguadores">Amortiguadores</option>
                                        <option value="Correa de distribución">Correa de distribución</option>
                                        <option value="Luces">Luces</option>
                                        <option value="chequeo general">Chequeo general</option>
                                        <option value="filtro de gasolina">Filtro de gasolina</option>
                                        <option value="filtro de aire">Filtro de Aire</option>
                                        <option value="Frenos">Frenos</option>
                                        <option value="Sistema de escape y catalizadores">Sist. de escape y
                                            catalizadores</option>
                                        <option value="Cables internos Bateria">Cables internos/Bateria</option>
                                    </select>

                                    <span class="errorNombre" style="color:red"></span>
                                </div>
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="intervalo"><b>Fecha del último mantenimiento</b></label>
                                    <input type="date" class="form-control intervalo" name="intervalo" id="intervalo">
                                    <span class="errorIntervalo" style="color:red"></span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="descripcion"><b>Kilometraje</b></label>
                                    <input type="text" class="form-control kilometraje" name="kilometraje"
                                        id="kilometraje">
                                    <span class="errortipo" style="color:red"></span>
                                </div>


                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="taller"><b>Taller</b></label>
                                    <select class="form-control select2 taller" style="width:100%;" name="id_taller"
                                        id="id_taller">
                                        <option></option>
                                        <?php foreach ($taller as $ta) : ?>
                                        <?php if (!empty($ta['id_taller'])) : ?>
                                        <option value="<?=$ta['id_taller']?>"><?=$ta['rif'];?>
                                            - <?=$ta['nombre'];?></option>
                                        <?php endif ?>
                                        <?php endforeach ?>
                                    </select>
                                    <span class="errorTaller" style="color:red"></span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-sm-12">
                                    <label for="unidad"><b>Unidad que se le realizo Mantenimiento</b></label>
                                    <select class="form-control select2" name="id_vehiculo" id="id_vehiculo"><span
                                            class="errorUnidad" style="color:red"></span>
                                        <option></option>
                                        <?php foreach ($vehiculo as $unidad) : ?>
                                        <?php if (!empty($unidad['id_vehiculo'])) : ?>
                                        <option value="<?=$unidad['id_vehiculo']?>"><?=$unidad['placa'];?>
                                            - <?=$unidad['modelo'];?></option>
                                        </option>
                                        <?php endif ?>
                                        <?php endforeach ?>
                                    </select>
                                    <span class="errorPlaca" style="color:red"></span>
                                </div>

                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="costo"><b>Costo</b></label>
                                    <input type="text" step="0.1" class="form-control" name="costo" id="costo">
                                    <span class="errorCosto" style="color:red"></span>
                                </div>

                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="Estado"><b>Estado de la orden :</b></label> <select
                                        class="form-control select2" name="estado" id="estado">
                                        <option value="">...</option>
                                        <option value="1">Generada</option>
                                        <option value="0">En proceso</option>
            

                                    </select>

                                    <span class="errorEstado" style="color:red"></span>
                                </div>

                            </div>
                        </div>
                        <div class="modal-footer">
                            <button class=" btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                            <a class="EnviarMantenimientoRegistrar btn btn-primary" href="#">Agregar</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


<!-- Modal -->
<div class="modal fade" id="modalForm" role="dialog" data-controls-modal="your_div_id" data-backdrop="static" data-keyboard="false">>
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                <!--     <span aria-hidden="true">×</span>
                    <span class="sr-only">Close</span>-->
                </button>
                <h4 class="modal-title" id="myModalLabel"></h4>
            </div>
            
            <!-- Modal Body -->
            <div class="modal-body">
                <p class="statusMsg"></p>
                <form role="form">
                    <div class="form-group">
                    <label for="confirmar"><center><h3>Confirme la acción</center></h3></label>
                        <br>
                        <p>Verifica tus datos</p>
                        <br>
                        <input type="text"  class="form-control" id="usuario" placeholder="Usuario" required/>
                        <span class="errorUsername" style="color:red"></span>

                        <br>
                        <input type="password" class="form-control" id="clave_especial" placeholder="Contraseña" />
                        <span class="erroClaveEspecial" style="color:red"></span>
                        <br>
                        <p>Nota: Debe ingresar su clave especial para modificar un registro en este módulo</p>
                    </div>
                
                </form>
            </div>
            
            <!-- Modal Footer -->
            <div class="modal-footer">
                <a class="confirmarClaveEspecial btn btn-primary" href="#">Confirmar</a>
                <!-- <button type="button" class="btn btn-primary submitBtn" onclick="submitContactForm()">Confirmar</button>-->
            </div>
        </div>
    </div>
</div>

    <!-- MODULo de AYUDA -->

    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    <style type="text/css">
    .modal {
        font-size: 0.8em;
    }
    </style>
    <div class="modal fade" id="AyudaModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true" style="padding:0;">
        <div class="container">
            <div class="modal-dialog">
                <div class="" role="document">
                    <div class="modal-content">

                        <div class="modal-content">
                            <div class="modal-header bg-primary" style="color:#FFF">
                                <h5 class="modal-title" id="exampleModalLabel">
                                    <center>Módulo de ayuda</center>
                                </h5>
                                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                            </div>

                            <div class="col-sm-7" style='text-align:right;'>
                                <span href="#" data-toggle="modal" data-target="#AyudaModal">

                                </span>
                            </div>

                            <div class="modal-body">
                                <p>
                                    En este modulo podrá visualizar los mantenimientos que están registrados en el
                                    sistema a su vez registrar, eliminar y modificar
                                    <br><br>
                                    1. Para eliminar un mantenimiento seleccione "eliminar" situada a la derecha del
                                    mantenimiento
                                    <br> <br>
                                    2. Para modificar un mantenimiento seleccione "modificar" situada a izquierda del
                                    mantenimiento
                                    <br><br>
                                    3. Para registrar un mantenimiento seleccione "registrar" que se muestra en el lado
                                    inferior derecho de la tabla
                                    <br><br>
                                    4. Para volver al menu principal presione "volver" situado en la parte inferior
                                    derecha
                                    <br><br>
                                    5. Para cerrar esta ventana emergente y seguir con el sistema presione e "cerrar"
                                    <br><br>
                                    6. Para hacer una busqueda dentro del modulo debe ingresar el nombre completo del
                                    dato que desea buscar

                                </p>
                            </div>
                            <div class="modal-footer">
                                <button class=" btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>

                            </div>
                        </div>
                    </div>
                </div>
            </div>







</body>
<script type="text/javascript" src="'../../assets/js/usuario/verificar_clave.js"></script>
<script type="text/javascript" src="'../../assets/js/seguridad/modalseguridad.js"></script>
<script type="text/javascript" src="'../../assets/js/mantenimiento/mantenimientoV.js"></script>
</html>