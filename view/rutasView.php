<!DOCTYPE html>
<html lang="en">

<head>
    <title><?php echo _NAMESYSTEM_; ?> | <?php if(!empty($action)){echo $action; } ?> <?php if(!empty($url)){echo $url;} ?></title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
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
                        <h1 class="h3 mb-0 text-gray-800">Gestión de Rutas</h1>
                        <!-- <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generar Reportes</a> -->
                    </div>

                    <div class="container-fluid">

                    <!-- LEYENDA DEL MODULO -->
                    <p class="mb-4">En este módulo podrá visualizar las rutas que están registrados en el sistema a su vez registrar, eliminar y modificar <a target="_blank"> 
                           </a></p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                         <center>   <h6 class="m-0 font-weight-bold text-primary">Módulo de Rutas</h6></center> 
                        </div>
                      <!--   <img src="assets/img/rutas.jpg" class="img-profile rounded-circle" width="20%"  right="100%">  -->
                           <?php
       if (in_array('registrar ruta', $_SESSION['ut_permisos']))
            {
                 ?>  
                     
                        <div class="col-sm-2" style='text-align:right;'>
                               <span class="icon text-white-50">
                                            <i class="fas fa-check"></i>
                                        </span>
                                   <a href="#" class="btn btn-success btn-icon-split" data-target=".AgregarRutaModal" data-toggle="modal" data-target="#">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-check"></i>
                                        </span>
                                        <span class="text">Registrar Rutas</span>

                                    </a>
                        </div>
                        <?php } ?>
                        <br>
                        <div class="table-responsive">
                        <div class="card-body" style='background:;'>
                            <div class="row" style='font-size:0.9em;'>
                                <table class="table table-striped datatable col-sm-12" id="" >
                                    <thead>
                                        <tr>
                                         
                                            <th>Unidad</th>
                                            <th>Direccion</th>
                                            <th>Nombre Ruta</th>
                                            <th>Hora de Salida</th>
                                            <th>Kilometraje</th>
                                             <th><center>Accion</center></th>
                                              <th></th>
                                               <th></th>
                                        </tr>
                                    </thead>
                          
                                    <tbody>
                                        <?php foreach ($ruta as $value): ?>
                                            <?php if (!empty($value['id_ruta'])): ?>
                                        <tr>
                                        
                                               <td><?=$value['placa']?></td>
                                               <td><?=$value['direccion_ruta']?></td>
                                             <td><?=$value['nombre_ruta']?></td>
                                            <td><?=$value['hora_salida']?></td>
                                            <td><?=$value['kilometraje']?></td>
                                            <td> 

                         <div class="col-sm-7" style='text-align:right;'>

                                                            <!-- <a href="#"  data-id="<?= $value['id_ruta'] ?>" class="btn btn-info btn-icon-split consultar" name="consultar" > -->
                                                            <a href="#" data-id="<?=$value['id_ruta'];?>" class="btn btn-info btn-icon-split" data-target="#Consultar<?=$value['id_ruta'] ?>"  data-toggle="modal">
                                                                <span class="icon text-white-50">
                                                                    <i class="fas fa-search"></i>
                                                                </span>
                                                                <span class="text">Consultar</span>
                                                            </a>
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- MODAL DE consultar-->
    <style type="text/css"> .modal{ font-size:0.8em; } </style>
    <div class="modal fade" id="Consultar<?=$value['id_ruta'] ?>"tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="padding:0;">
        <div class="container ">
            <div class="modal-dialog">
                <div class="" role="document">
                    <div id="" class="modal-content">
                        <div class="modal-header bg-primary" style="color:#FFF">
                            <h5 class="modal-title" id="exampleModalLabel">Consultar Ruta</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>

                        <div class="modal-body">
                            <div class="row">
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="placa"><b>Unidad</b></label>
                                    <div class=" placa placa<?=$value['id_ruta'];?>" style="width:100%;text-align:left;" name="placa" id="placa">
                                        <option><?=$value['placa'];?></option>
                                    </div>
                                </div>
                                
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="Modelo"><b>Dirección</b></label>
                                      <input type="text" class="form-control direccion_ruta direccion_ruta<?=$value['id_ruta'];?>" style='background:none;border:none;' disabled value="<?=$value['direccion_ruta'];?>" name="direccion_ruta" id="direccion_ruta">
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="nombrer"><b>Nombre de la Ruta</b></label>
                                     <input type="text" class="form-control nombre_ruta nombre_ruta<?=$value['id_ruta'];?>" style='background:none;border:none;' disabled value="<?=$value['nombre_ruta'];?>" name="nombre_ruta" id="nombre_ruta">
                                </div>
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="hora"><b>Hora</b></label>
                                    <br><br>
                                    <input type="time" class="form-control hora_salida hora_salida<?=$value['id_ruta'];?>" style='background:none;border:none;width:100%;' disabled value="<?=$value['hora_salida'];?>" name="hora_salida" id="hora_salida">
                                </div>
                            </div> 
                             <div class="form-group col-sm-12 col-md-6">
                                    <label for="kilometraje"><b>Kilometraje</b></label>
                                    <br><br>
                                    <input type="text" class="form-control kilometraje kilometraje value="<?=$value['kilometraje'];?>" style='background:none;border:none;width:100%;' disabled value="<?=$value['kilometraje'];?> kilometros" name="kilometraje" id="kilometraje" placeholder="kilometros en metros">
                                </div>
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="cantidad"><b>Cantidad de veces que recorre la ruta a la semana</b></label>
                                    <input type="number"  disabled  class="form-control cantidad<?=$value['id_ruta'];?>"  value="<?=$value['cantidad'];?>"  style="width:100%;" name="cantidad" id="cantidad">
                                    <span class="errorCantidad" style="color:red"></span>
                               
                                    <label for="date"><b>Fecha de asignación de la ruta</b></label>
                                    <input type="date"  disabled  class="form-control fecha_inicio<?=$value['id_ruta'];?>" value="<?=$value['fecha_inicio'];?>"  style="width:100%;" name="fecha_inicio" id="fecha_inicio">
                                    <span class="errorDate" style="color:red"></span>
                                </div>
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="date"><b>Fecha de culminacion de la ruta</b></label>
                                    <input type="date" disabled  class="form-control fecha_fin<?=$value['id_ruta'];?>" value="<?=$value['fecha_fin'];?>"  style="width:100%;" name="fecha_fin" id="fecha_fin">
                                    <span class="errorDate" style="color:red"></span>
                                </div>
                                
                            <br><br>
                        </div>
                        <br>
                        <div class="modal-footer">
                            <button class=" btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
                                                        </div>


                                                    </td>
                                                    <td>
                                                         <?php
                                                             if (in_array('editar ruta', $_SESSION['ut_permisos']))
            {
                 ?>  
                                                        <div class="col-sm-7" style='text-align:right;'>

                                                            <a href="#" data-id="<?=$value['id_ruta'];?>" class="btn btn-warning btn-icon-split" data-target="#ModificarvehiculoModal<?=$value['id_ruta'] ?>"  data-toggle="modal">
                                                                <span class="icon text-white-50">
                                                                    <i class="fas fa-flag"></i>
                                                                </span>
                                                                <span class="text" style="color:#FFF;">Modificar</span>
                                                            </a>
                                                        </div>
                                                        <?php } ?>





    <!-- MODAL DE MODIFICAR-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    <style type="text/css"> .modal{ font-size:0.8em; } </style>
    <div class="modal fade EditarRutaModal" id="ModificarvehiculoModal<?=$value['id_ruta'] ?>"tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="padding:0;">
        <div class="container ">
            <div class="modal-dialog">
                <div class="" role="document">
                    <div id="" class="modal-content">
                        <div class="modal-header bg-primary" style="color:#FFF">
                            <h5 class="modal-title" id="exampleModalLabel">Modificar Ruta</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>

                        <div class="modal-body">
                            <div class="row">
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="placa"><b>Unidad</b></label>
                                    <select class="form-control select2 placa placa<?=$value['id_ruta'];?>" style="width:100%;" name="placa" id="placa">
                                        <option></option>
                                        <?php foreach ($vehiculo as $unidad) : ?>
                                            <?php if (!empty($unidad['id_vehiculo'])) : ?>
                                                <option <?php if($value['placa']==$unidad['placa']){ echo "selected"; } ?>><?= $unidad['placa'] ?></option>
                                            <?php endif ?>
                                        <?php endforeach ?>
                                    </select>
                                    <span class="errorPlaca" style="color:red"></span>
                                </div>
                                
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="Modelo"><b>Dirección</b></label>
                                      <input type="text" class="form-control direccion_ruta direccion_ruta<?=$value['id_ruta'];?>" value="<?=$value['direccion_ruta'];?>" name="direccion_ruta" id="direccion_ruta">
                                    <span class="errorDireccion" style="color:red"></span>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="nombrer"><b>Nombre de la Ruta</b></label>
                                     <input type="text" class="form-control nombre_ruta nombre_ruta<?=$value['id_ruta'];?>" value="<?=$value['nombre_ruta'];?>" name="nombre_ruta" id="nombre_ruta">
                                    <span class="errorNombre" style="color:red"></span>
                                </div>
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="hora"><b>Hora</b></label>
                                    <input type="time" class="form-control hora_salida hora_salida<?=$value['id_ruta'];?>" style="width:100%;" value="<?=$value['hora_salida'];?>" name="hora_salida" id="hora_salida">
                                    <span class="errorHora" style="color:red"></span>
                                </div>
                            </div> 
                            <br><br>
                             <div class="row">
                                <div class="form-group col-sm-12 col-md-6">
                                    

                        
                            <br>
                                    <label for="kilometraje"><b>Kilometraje</b></label>
                                       <input type="text" class="form-control kilometraje kilometraje<?=$value['id_ruta'];?>" value="<?=$value['kilometraje'];?>" name="kilometraje" id="kilometraje">
                                    <span class="errorKilometraje" style="color:red"></span>
                                    <label for="kilometraje"><b>Ver ruta</b></label>
                                    <a target="blank" href=" https://www.google.com/maps/dir//Barquisimeto+3001,+Lara/@10.0677719,-69.3473509,11z/data=!4m8!4m7!1m0!1m5!1m1!1s0x8e87671d783e8671:0x972fe1e11519c3db!2m2!1d-69.3473509!2d10.0677719"> Cómo llegar?
                                                </a>
                                </div>
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="date"><b>Fecha de asignación de la ruta</b></label>
                                    <input type="date" class="form-control fecha_inicio fecha_inicio<?=$value['id_ruta'];?>" value="<?=$value['fecha_inicio'];?>"  style="width:100%;" name="fecha_inicio" id="fecha_inicio">
                                    <span class="errorDate" style="color:red"></span>
                                </div>
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="date"><b>Fecha de culminacion de la ruta</b></label>
                                    <input type="date" class="form-control fecha_fin fecha_fin<?=$value['id_ruta'];?>"  value="<?=$value['fecha_fin'];?>" style="width:100%;" name="fecha_fin" id="fecha_fin">
                                    <span class="errorDate" style="color:red"></span>
                                </div>
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="cantidad"><b>Cantidad de veces que recorre la ruta a la semana</b></label>
                                    <input type="number" class="form-control cantidad cantidad<?=$value['id_ruta'];?>"  value="<?=$value['cantidad'];?>" style="width:100%;" name="cantidad" id="cantidad">
                                    <span class="errorCantidad" style="color:red"></span>
                                </div>
                            <br><br>
    
                            
                        <br>
                        <div class="modal-footer">
                            <button class=" btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                            <a class="EnviarRutaEditar btn btn-primary" href="#" id="<?=$value['id_ruta'];?>">Guardar</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>  


                                                    <td>
                                                        <?php
                                                             if (in_array('eliminar ruta', $_SESSION['ut_permisos']))
            {
                 ?>  
                                                        <div class="col-sm-7" style='text-align:right;'>
                                                        <?php if ($value['status'] == 1) { ?>
                                                            <a href="#" data-id="<?= $value['id_ruta'] ?>" class="btn btn-danger btn-icon-split inhabilitar" data-toggle="modal" data-target="">
                                                                <span class="icon text-white-50">
                                                                    <i class="fas fa-trash"></i>
                                                                </span>
                                                                <span class="text">Eliminar</span>
                                                            </a>
                                                        <?php } else { ?>
                                                            <a href="#" data-id="<?= $value['id_ruta'] ?>" class="btn btn-outline-info btn-icon-split habilitar" data-toggle="modal" data-target="">
                                                                <span class="icon text-info-50">
                                                                    <i class="fas fa-trash-alt"></i>
                                                                </span>
                                                                <span class="text">Habilitar</span>
                                                            </a>
                                                        <?php } ?>
                                                        </div>
                                                         <?php } ?>
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

                </div>   <!-- MODAL DE ayuda-->
                    
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
    <div class="modal fade AgregarRutaModal" id="" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="padding:0;">
        <div class="container">
            <div class="modal-dialog">
                <div class="" role="document">
                    <div class="modal-content">
                        <div class="modal-header bg-primary" style="color:#FFF">
                            <h5 class="modal-title" id="exampleModalLabel">Registrar Ruta</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>

                        <div class="modal-body">
                            <div class="row">
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="rol"><b>Unidad</b></label>
                                    <select class="form-control select2 placa" style="width:100%;" name="placa" id="placa">
                                        <option></option>
                                        <?php foreach ($vehiculo as $unidad) : ?>
                                            <?php if (!empty($unidad['id_vehiculo'])) : ?>
                                                <option><?= $unidad['placa'] ?></option>
                                            <?php endif ?>
                                        <?php endforeach ?>
                                    </select>
                                    <span class="errorPlaca" style="color:red"></span>
                                </div>
                                
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="Modelo"><b>Dirección</b></label>
                                      <input type="text" class="form-control direccion_ruta" name="direccion_ruta" id="direccion_ruta" placeholder="Ingrese la direccion de la ruta">
                                    <span class="errorDireccion" style="color:red"></span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="nombrer"><b>Nombre de la Ruta</b></label>
                                     <input type="text" class="form-control nombre_ruta" name="nombrer" id="nombre_ruta" placeholder="Ingrese nombre de la ruta">
                                    <span class="errorNombre" style="color:red"></span>
                                </div>
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="hora"><b>Hora</b></label>
                                    <input type="time" class="form-control hora_salida"  style="width:100%;" name="hora_salida" id="hora_salida">
                                    <span class="errorHora" style="color:red"></span>
                                </div>
                            </div> 

                             <div class="row">
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="kilometraje"><b>Kilometraje</b></label>
                                     <input type="text" class="form-control kilometraje" name="kilometraje" id="kilometraje" placeholder="Kilometraje del recorrido">
                                    <span class="errorkilometraje" style="color:red"></span>
                                </div>
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="date"><b>Fecha de asignación de la ruta</b></label>
                                    <input type="date" class="form-control fecha_inicio"  style="width:100%;" name="fecha_inicio" id="fecha_inicio">
                                    <span class="errorDate" style="color:red"></span>
                                </div>
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="cantidad"><b>Cantidad de veces que recorre la ruta</b></label>
                                    <input type="number" class="form-control cantidad"  style="width:100%;" name="cantidad" id="cantidad">
                                    <span class="errorCantidad" style="color:red"></span>
                                </div>
                                <div class="form-group col-sm-12 col-md-6">
                                    <label for="date"><b>Fecha de culminacion de la ruta a la semana</b></label>
                                    <input type="date" class="form-control fecha_fin"  style="width:100%;" name="fecha_fin" id="fecha_fin">
                                    <span class="errorDate" style="color:red"></span>
                                </div>
                                
                            <br><br>
                             <div class="form-group col-sm-12 col-md-6">
                                    <label for="kilometraje"><b>Ver ruta</b></label>
                                    <a target="blank" href=" https://www.google.com/maps/dir//Barquisimeto+3001,+Lara/@10.0677719,-69.3473509,11z/data=!4m8!4m7!1m0!1m5!1m1!1s0x8e87671d783e8671:0x972fe1e11519c3db!2m2!1d-69.3473509!2d10.0677719">Cómo llegar?
 </a>

                                    
                                </div>
                            <br>
                            
                                    <span class="kilometraje" style="color:red"></span>
                        </div>
                         <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d125710.5162316898!2d-69.36284785000001!3d10.061866349999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e87671d783e8671%3A0x972fe1e11519c3db!2sBarquisimeto%203001%2C%20Lara!5e0!3m2!1ses!2sve!4v1654746367020!5m2!1ses!2sve" width="250" height="250" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

                        <div class="modal-footer">
                            <button class=" btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                            <a class="EnviarRutaRegistrar btn btn-primary" href="#" id="AgregarRutaModal">Agregar</a>
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
                  En este modulo podrá visualizar los rutas que están registrados en el sistema a su vez registrar, eliminar y modificar.
                  Si necesitas colocar un kilometraje y no lo conoces, cuentas con la opción a google maps para saber sobre los recorridos.
                  <br><br>
                  1. Para eliminar una ruta seleccione "eliminar" situada a la derecha del ruta
                  <br> <br>
                  2. Para modificar una ruta seleccione "modificar" situada a izquierda del ruta
                  <br><br>
                  3. Para registrar una ruta seleccione "registrar" que se muestra en el lado inferior derecho de la tabla
                  <br><br>
                  4. Para volver al menu principal presione "volver" situado en la parte inferior derecha
                  <br><br>
                  5. Para cerrar esta ventana emergente y seguir con el sistema presione e "cerrar"
                  <br><br>
                  6. Para hacer una busqueda dentro del modulo debe ingresar el nombre completo del dato que desea buscar

            
                </p>
              </div> 
                 <div class="modal-footer">
                                <button class=" btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>

                            </div>
                              </div>
                                </div>  
                            </div>
                              </div>

 <!-- MODULo de ELIMINAR -->

</body>

<script type="text/javascript" src="'../../assets/js/ruta/validarR.js"></script> 
 

</script> 
</html>