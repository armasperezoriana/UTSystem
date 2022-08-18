
<!DOCTYPE html>
<html lang="en">

<head>
    <title><?php echo _NAMESYSTEM_; ?> | <?php if(!empty($action)){echo $action; } ?> <?php if(!empty($url)){echo $url;} ?></title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                        <h1 class="h3 mb-0 text-gray-800">Gestión de Mantenimientos Correctivos</h1>
                        <!-- <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generar Reportes</a> -->
                    </div>

                    <div class="container-fluid">

                        <!-- LEYENDA DEL MODULO -->
                        <p class="mb-4">En este módulo podrá visualizar los mantenimientos correctivos. Para que un vehiculo pueda ser registrado en este módelo debe existir la unidad registrada<a target="_blank"> 
                               </a></p>

                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <center>
                                    <h6 class="m-0 font-weight-bold text-primary">Módulo de Mantenimientos Correctivos</h6>
                                </center> 
                            </div>
                             
        
                            <div class="col-sm-2" style='text-align:right;'>
                                   <span class="icon text-white-50">
                                    <i class="fas fa-check"></i>
                                </span>
                                <a href="#" class="btn btn-success btn-icon-split" data-toggle="modal" data-target="#AgregarReparacionModal">
                                    <span class="icon text-white-50">
                                        <i class="fas fa-check"></i>
                                    </span>
                                    <span class="text">Registrar Reparación</span>
                                </a>
                            </div>
                            <br>  <div class="col-sm-20" style='text-align:right;'>
                                    
                                        <div class="card-body">
                                            <div class="row no-gutters align-items-center">
                                                <div class="col mr-2">
                                                    <div
                                                        class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                        <a href="<?=_REPORTS_?>Reparaciones" target="blank"  >
                                                            <h6>Orden de Servicio General</h6>
                                                        </a>
                            
                                                    </div>
                                                    <div class="h5 mb-0 font-weight-bold text-gray-800"></div>
                                                </div>
                                                <div class="col-auto">
                                                    <i class="fas fa-check fa-2x text-gray-300"></i>
                                                </div>

                                                <div class="col mr-2">
                                                    <div
                                                        class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                        <a href="<?=_REPORTS_?>Reparaciones/taller.php" target="blank"  >
                                                            <h6>Orden de Servicio Talleres</h6>
                                                        </a>
                                                        
                                                    </div>

                                                    <div class="h5 mb-0 font-weight-bold text-gray-800"></div>
                                                </div>
                                                <div class="col-auto">
                                                    <i class="fas fa-check fa-2x text-gray-300"></i>
                                                </div>

                                            </div>
                                        </div>
                              
                                </div>
                              

                            <div class="table-responsive">
                                <div class="card-body" style='background:;'>
                                    <div class="row" style='font-size:0.9em;'>
                                        <table class="table table-striped datatable col-sm-12" id="" >
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Vehiculo</th>
                                                    <th>Tipo de reparación</th>
                                                    <th>Taller-Rif</th>
                                                    <th>Fecha</th>
                                                    <th></th>
                                                    <th><center>Acción</center></th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                  
                                            <tbody>
                                                <?php foreach ($reparaciones as $rep): ?>
                                                    <?php if (!empty($rep['id_reparaciones'])): ?>
                                                <tr>
                                                    <td><?=$rep['id_reparaciones']?></td>
                                                    <td><?=$rep['placa']?></td>
                                                    <td><?=$rep['nombre']?></td>
                                                    <td><?=$rep['rif']?></td>
                                                    <td><?=$rep['fecha']?></td>
                                                    <td>
                                                            <div class="col-sm-7" style='text-align:right;'>
                                                            <a href="#" data-id="<?= $value['id_vehiculo'] ?>" class="btn btn-info btn-icon-split consultar" name="consultar" data-target="#ConsultarMantenimientoModal<?=$rep['id_reparaciones'] ?>"  data-toggle="modal">
                                                                <span class="icon text-white-50">
                                                                    <i class="fas fa-search"></i>
                                                                </span>
                                                                <span class="text"></span>
                                                            </a>
                                                        </div></td>
                                                    <td> 
                                                        <div class="col-sm-7" style='text-align:right;'>
                                                            <a href="#" class="btn btn-warning btn-icon-split editarbtn" name="editar" id="'$value['id_vehiculo']'" href="#" data-toggle="modal" data-target="#ModificarReparacionesModal<?=$rep['id_reparaciones']?>">
                                                                <span class="icon text-white-50" >
                                                                    <i class="fas fa-edit"></i>
                                                                </span>
                                                                <span class="text"></span>
                                                            </a>
                                                                <a class="scroll-to-top rounded" href="#page-top">
                                                            <i class="fas fa-angle-up"></i>
                                                        </a>

                                                            <!-- MODAL DE CONSULTAR-->

<style type="text/css"> .modal{ font-size:0.8em; } </style>
<div class="modal fade" id="ConsultarMantenimientoModal<?=$rep['id_reparaciones'] ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="padding:0;">
 <div class="container">
            <div class="modal-dialog">
                   <form id="modificarReparacion" method="POST">
                <input type="hidden" id="id_reparaciones" name="id_reparaciones">
                    <div class="modal-content">
                        <div class="modal-header bg-primary" style="color:#FFF">
                        <h5 class="modal-title" >Consultar Reparación</h5>
                              </div>
                     <div class="modal-body">
                            <div class="row">
                                    <div class="form-group col-sm-12 col-md-9">
                                    <label for="placa"><b>Unidad Reparada</b></label>
                                  <select class="form-control select2" style="width:60%;" name="id_vehiculo" id="id_vehiculo" disabled>
                                            <option></option>
                                            <?php foreach ($vehiculo as $unidad) : ?>
                                                <?php if (!empty($unidad['id_vehiculo'])) : ?>
                                                    <option value="<?php echo $rep['id_vehiculo'] ;?>" <?php if($unidad['id_vehiculo']==$rep['id_vehiculo']){echo "selected";} ?>><?php echo $unidad['placa']." - ".$unidad['modelo'];?></option>
                                                <?php endif ?>
                                            <?php endforeach ?>
                                
                                </div>
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="intervalo"><b>Fecha de la reparación</b></label>
                                    <input type="date" class="form-control-plaintext" disabled style="width:100%;" value="<?=$rep['fecha']?>" name="intervalo" id="intervalo">
                                    
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="nombre"><b>Nombre del mantenimiento</b></label>
                                    <input type="text" class="form-control-plaintext" disabled style="width:100%;" value="<?=$rep['nombre']?>" name="nombre" id="nombre">
                                
                                 
                                </div>
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="costo"><b>Costo</b></label>
                                    <input type="number" step="0.1" class="form-control-plaintext" disabled style="width:100%;" value="<?=$rep['costo']?>" name="costo" id="costo">
                            
                                </div>
                            </div>
                            <br>

                            <div class="row">
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="taller"><b>Taller</b></label>
                                            <select class="form-control select2 text-left" style="width:80%;" name="id_taller" id="id_taller" disabled>
                                            <option></option>
                                            <?php foreach ($taller as $ta) : ?>
                                                <?php if (!empty($ta['id_taller'])) : ?>
                                                    <option value="<?=$ta['id_taller']?>" <?php if($ta['id_taller']==$rep['id_taller']){ echo "selected"; } ?> ><?=$ta['nombre']?> - <?=$ta['rif']?></option>
                                                <?php endif ?>
                                            <?php endforeach ?>
                                        </select>
                                 
                                </div>
                                 <div class="form-group col-sm-12 col-md-6">
                                    <label for="descripcion"><b>Descripción</b></label>
                                    <input type="text" class="form-control-plaintext" disabled style="width:100%;" value="<?=$rep['descripcion']?>" name="descripcion" id="descripcion">
                                </div>
                            </div>
                        </div>
                    <div class="modal-footer">
                                    
                    <div class="col-sm-20" style='text-align:right;'>
                                    
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div
                                                    class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                    <input type="hidden" id="id_reparaciones" name="id_reparaciones">
                                                    <a href="<?=_REPORTS_?>Reparaciones/ordenindividual.php?id=<?=$rep['id_reparaciones'] ?>" target="blank"  >
                                                        <h6>iMPRIMIR ORDEN DE REPARACION</h6>
                                                    </a>
                                                </div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800"></div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-check fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                          
                            </div>
                          
                            </div>                          
                        <button class=" btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
</div>
<!-- MODAL DE MODIFICAR-->

    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    <style type="text/css"> .modal{ font-size:0.8em; } </style>
    <div class="modal fade" id="ModificarReparacionesModal<?=$rep['id_reparaciones']?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="padding:0;text-align:left;">
        <div class="container">
            <div class="modal-dialog">
                   <form id="modificarReparacion" method="POST">
                <input type="hidden" id="id_reparaciones" name="id_reparaciones">
                    <div class="modal-content">
                        <div class="modal-header bg-primary" style="color:#FFF">
                            <h5 class="modal-title" id="exampleModalLabel">Modificar Reparación</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>

                        <div class="modal-body">
                            <div class="row">
                                <div class="form-group col-sm-12 col-md-8">
                                    <label for="placa"><b>Unidad Reparada</b></label>
                                  <select class="form-control select2" style="width:60%;" name="id_vehiculo" id="id_vehiculo">
                                            <option></option>
                                            <?php foreach ($vehiculo as $unidad) : ?>
                                                <?php if (!empty($unidad['id_vehiculo'])) : ?>
                                                    <option value="<?php echo $unidad['id_vehiculo'] ;?>" <?php if($unidad['id_vehiculo']==$rep['id_vehiculo']){echo "selected";} ?>><?php echo $unidad['placa']." - ".$unidad['modelo'];?></option>
                                                <?php endif ?>
                                            <?php endforeach ?>
                                        </select>
                                    <span class="errorPlaca" style="color:red"></span>
                                </div>
                                <div class="form-group col-sm-12 col-md-4">
                                    <label for="intervalo"><b>Fecha de la reparación</b></label>
                                    <input type="date" class="form-control" style="width:100%;" value="<?=$rep['fecha']?>" name="intervalo" id="intervalo">
                                    <span class="errorIntervalo" style="color:red"></span>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="nombre"><b>Nombre del mantenimiento</b></label>
                                    <input type="text" class="form-control" style="width:100%;" value="<?=$rep['nombre']?>" name="nombre" id="nombre">
                                    <span class="errorNombre" style="color:red"></span>
                                </div>
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="costo"><b>Costo</b></label>
                                    <input type="text" step="0.1" class="form-control" style="width:100%;" value="<?=$rep['costo']?>" name="costo" id="costo">
                                    <span class="errorcosto" style="color:red"></span>
                                </div>
                            </div>
                            <br>

                            <div class="row">
                                <div class="form-group col-sm-12 col-md-6">
                                                <label for="taller"><b>Taller</b></label>
                                          <select class="form-control select2 text-left" style="width:100%;" name="id_taller" id="id_taller">
                                            <option></option>
                                            <?php foreach ($taller as $ta) : ?>
                                                <?php if (!empty($ta['id_taller'])) : ?>
                                                    <option value="<?=$ta['id_taller']?>" <?php if($ta['id_taller']==$rep['id_taller']){ echo "selected"; } ?> ><?=$ta['nombre']?> - <?=$ta['rif']?></option>
                                                <?php endif ?>
                                            <?php endforeach ?>
                                        </select>
                                    <span class="errorTaller" style="color:red"></span>
                                </div>
                                 <div class="form-group col-sm-12 col-md-6">
                                    <label for="descripcion"><b>Descripción</b></label>
                                    <input type="text" class="form-control" style="width:100%;" value="<?=$rep['descripcion']?>" name="descripcion" id="descripcion">
                                    <span class="errorDescripcion" style="color:red"></span>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button class=" btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                            <a class="EnviarReparacionesModificar btn btn-primary" href="#" id="<?=$rep['id_reparaciones']?>">Guardar Cambios</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </form>
    </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="col-sm-7" style='text-align:right;'>
                                                        <?php if ($rep['status'] == 1) { ?>
                                                            <a href="#" data-id="<?= $rep['id_reparaciones'] ?>" class="btn btn-danger btn-icon-split inhabilitar" data-toggle="modal" data-target="">
                                                                <span class="icon text-white-50">
                                                                    <i class="fas fa-trash"></i>
                                                                </span>
                                                                <span class="text"></span>
                                                            </a>
                                                        <?php } else { ?>
                                                            <a href="#" data-id="<?= $rep['id_reparaciones'] ?>" class="btn btn-outline-info btn-icon-split habilitar" data-toggle="modal" data-target="">
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

                        </div>  

        
          <?php require_once'view/assets/footer.php'; ?>
        <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->

    <!-- MODAL DE REGISTRARSE-->
                   <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    <style type="text/css">
        .modal{
            font-size:0.8em;
        }
    </style>
    <div class="modal fade" id="AgregarReparacionModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="padding:0;">
        <div class="container">
            <div class="modal-dialog">
                <div class="" role="document">
                    <div class="modal-content">
                        <div class="modal-header bg-primary" style="color:#FFF">
                            <h5 class="modal-title" id="exampleModalLabel">Registrar Mantenimiento Correctivo-Reparación</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="placa"><b>Unidad Reparada</b></label>
                                     <select class="form-control select2 text-left" name="id_vehiculo" id="id_vehiculo">
                                        <option></option>
                                        <?php foreach ($vehiculo as $unidad) : ?>
                                            <?php if (!empty($unidad['id_vehiculo'])) : ?>
                                                <option value="<?= $unidad['id_vehiculo'] ?>"><?= $unidad['placa'] ?></option>
                                            <?php endif ?>
                                        <?php endforeach ?>
                                    </select>
                                    <span class="errorPlaca" style="color:red"></span>
                                </div>
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="intervalo"><b>Fecha de la reparación</b></label>
                                    <input type="date" class="form-control" style="width:100%;" name="intervalo" id="intervalo">
                                    <span class="errorIntervalo" style="color:red"></span>
                                </div>
                            </div>
                            <div class="row">
                                    <div class="form-group col-sm-12 col-md-6">
                                        <label for="Nombre"><b>Reparación de :</b></label>   <select class="form-control select2" name="nombre" id="nombre">
                                                  <option value="">...</option>
                                                <option value="Bujias">Bujias</option>
                                                <option value="Pastillas de freno">Pastillas de freno</option>
                                                <option value="Filtro de Aceite">Filtro de Aceite</option>
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
                                                  <option value="Chequeo general">Chequeo general por fallo</option>
                                                <option value="filtro de gasolina">Filtro de gasolina</option>
                                                <option value="filtro de aire">Filtro de Aire</option>
                                                 <option value="Frenos">Frenos</option>
                                                 <option value="Averia">Averia</option>
                                                   <option value="Dano inesperado">Dano inesperado</option>
                                                   <option value="Otro">Otro</option>
                                                <option value="Sistema de escape y catalizadores">Sist. de escape y catalizadores</option>
                                                    <option value="Cables internos Bateria">Cables internos/Bateria</option>
                                            </select>
                                       
                                        <span class="errorNombre" style="color:red"></span>
                                    </div>
                            
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="costo"><b>Costo</b></label>
                                    <input type="text" step="0.1" class="form-control" name="costo" id="costo">
                                    <span class="errorcosto" style="color:red"></span>
                                </div>
                            </div>
                        

                            <div class="row">
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="taller"><b>Taller</b></label>
                                    <select class="form-control select2" style="width:100%;" name="id_taller" id="id_taller">
                                        <option></option>
                                        <?php foreach ($taller as $ta) : ?>
                                            <?php if (!empty($ta['id_taller'])) : ?>
                                                <option value="<?=$ta['id_taller']?>"><?= $ta['nombre'] ?></option>
                                            <?php endif ?>
                                        <?php endforeach ?>
                                    </select>
                                    <span class="errorTaller" style="color:red"></span>
                                </div>
                                 <div class="form-group col-sm-12 col-md-6">
                                    <label for="descripcion"><b>Descripción</b></label>
                                    <input type="text" class="form-control" name="descripcion" id="descripcion">
                                    <span class="errorDescripcion" style="color:red"></span>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button class=" btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                            <a class="EnviarReparacionRegistrar btn btn-primary" href="#">Agregar</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>  


            </div>
        </div>  
    </div>

 <!-- MODULo de AYUDA -->

            <a class="scroll-to-top rounded" href="#page-top">
                            <i class="fas fa-angle-up"></i>
                        </a>
                        <style type="text/css">
                            .modal{
                                font-size:0.8em;
                            }
                        </style>
                        <div class="modal fade" id="AyudaModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="padding:0;">
                            <div class="container">
                                    <div class="modal-dialog">
                                        <div class="" role="document">
                                            <div class="modal-content">

                        <div class="modal-content">
                            <div class="modal-header bg-primary" style="color:#FFF">
                                <h5 class="modal-title" id="exampleModalLabel"><center>Módulo de ayuda</center></h5>
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
                  En este modulo podrá visualizar las reparaciones que están registradas en el sistema a su vez registrar, eliminar y modificar
                  <br><br>
                  1. Para eliminar una reparacion seleccione "eliminar" situada a la derecha de la reparacion
                  <br> <br>
                  2. Para modificar una reparacion seleccione "modificar" situada a izquierda de la reparacion
                  <br><br>
                  3. Para registrar una reparacion seleccione "registrar" que se muestra en el lado inferior derecho de la tabla
                  <br><br>
                  4. Para volver al menu principal presione "volver" situado en la parte inferior derecha
                  <br><br>
                  5. Para cerrar esta ventana emergente y seguir con el sistema presione e "cerrar"
                  <br><br>
                  6. Para hacer una busqueda dentro del modulo debe ingresar el nombre completo del dato que desea buscar

                </p>


            
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

<script type="text/javascript" src="'../../assets/js/reparaciones/reparacionesV.js">
 
</script> 

</html>