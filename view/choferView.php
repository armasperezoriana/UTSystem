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
                        <h1 class="h3 mb-0 text-gray-800">Gestión de Choferes</h1>
                        <!-- <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generar Reportes</a> -->
                    </div>

                    <div class="container-fluid">

                        <!-- LEYENDA DEL MODULO -->
                        <p class="mb-4">En este módulo podrá visualizar los choferes que están registrados en el sistema conjunto a las unidades asignadas<a target="_blank"> 
                               </a></p>

                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                             <center>   <h6 class="m-0 font-weight-bold text-primary">Módulo de Choferes</h6></center> 
                        
                            <center> <img src="assets/img/chofer.png" class="img-profile" width="20%"  right="500%" > </center> 
                    
                            
                            <div class="col-sm-3" style='text-align:right;'>
                                <span class="icon text-white-50"><i class="fas fa-check"></i></span>
                                <a href="#" class="btn btn-success btn-icon-split" data-target="#AgregarChoferModal" data-toggle="modal" >
                                    <span class="icon text-white-50">
                                        <i class="fas fa-check"></i>
                                    </span>
                                    <span class="text">Registrar Chofer</span>
                                </a>
                            </div>
                            <br>
                            <div class="table-responsive">
                                <div class="card-body" style='background:;'>
                                    <div class="row" style='font-size:0.9em;'>
                                        <table class="table table-striped datatable col-sm-12" id="" >
                                            <thead>
                                                <tr>
                                                    <th></th>
                                                    <th>Nombre</th>
                                                    <th>Apellido</th>
                                                    <th>Cédula</th>
                                                    <th></th>
                                                    <th></th>
                                                    <th><center>Acciones</center></th>
                                                    <th></th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                  
                                            <tbody>
                                            <?php foreach ($chofer as $value): ?>
                                                <?php if (!empty($value['id_choferes'])): ?>
                                                <tr>
                                                    <td></td>
                                                    <td><?=$value['nombre']?></td>
                                                    <td><?=$value['apellido']?></td>
                                                    <td><?=$value['cedula']?></td>
                                                    <td></td>
                                                    <td></td> 
                                                    <td>
                                                        <div class="col-sm-7" style='text-align:right;'>
                                                            <a href="#" data-id="<?= $value['id_choferes'] ?>" class="btn btn-info btn-icon-split consultar" name="consultar" data-target="#ConsultarChoferModal<?=$value['id_choferes'] ?>"  data-toggle="modal">
                                                                <span class="icon text-white-50">
                                                                    <i class="fas fa-search"></i>
                                                                </span>
                                                                <span class="text"></span>
                                                            </a>
                                                        </div>
<!-- MODAL DE CONSULTAR-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>
<style type="text/css"> .modal{ font-size:0.8em; } </style>
<div class="modal fade" id="ConsultarChoferModal<?=$value['id_choferes'] ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="padding:0;">
    <div class="container">
        <div class="modal-dialog">
            <div class="" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-primary" style="color:#FFF">
                        <h5 class="modal-title" >Consultar Chofer</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="form-group col-sm-12 col-md-6">
                                <label for="nombre"><b>Nombre</b></label>
                                <input type="text" class="form-control-plaintext" disabled value="<?=$value['nombre'] ?>" name="nombre" id="nombre">
                               
                            </div>
                            <div class="form-group col-sm-12 col-md-6">
                                <label for="apellido"><b>Apellido</b></label>
                                <input type="text" class="form-control-plaintext" disabled value="<?=$value['apellido'] ?>" name="apellido" id="apellido">
                                
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="form-group col-sm-12 col-md-6">
                                <label for="cedula"><b>Cedula</b></label>
                                <input type="text" class="form-control-plaintext" disabled style="border:none;" value="<?=$value['cedula'] ?>" name="cedula" id="cedula">
                               
                            </div>
                            <div class="form-group col-sm-12 col-md-6">
                                <label for="username"><b>Telefono</b></label>
                                <input type="text" class="form-control-plaintext" disabled style="border:none;" value="<?=$value['telefono'] ?>" name="username" id="telefono">
                               
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="form-group col-sm-12 col-md-6">
                                <label for="unidad"><b>Unidad</b></label>
                                <div class="" style="width:100%;" class="form-control-plaintext" disabled name="unidad" id="unidad">
                                    <span><?=$value['placa']?></span>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class=" btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
                                                    </td>
                                                    <td>
                                                        <div class="col-sm-7" style='text-align:right;'>
                                                            <a href="#" data-id="<?=$value['id_choferes'] ?>" data-toggle="modal" data-target="#ModificarChoferModal<?=$value['id_choferes'] ?>" class="btn btn-warning btn-icon-split editar" name="editar">
                                                                <span class="icon text-white-50">
                                                                    <i class="fas fa-edit"></i>
                                                                </span>
                                                                <span class="text" style="color:#FFF;"></span>
                                                            </a>
                                                        </div>

<!-- MODAL DE MODIFICAR-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    <style type="text/css">.modal{font-size:0.8em;}</style>
    <div class="modal fade ModificarChoferModal" id="ModificarChoferModal<?=$value['id_choferes'] ?>" tabindex="-1" role="dialog" aria-hidden="true" value="<? const id = $chofer->id;  ?>" style="padding:0;">
        <form id="modificarChofer" method="POST">
            <input type="hidden" id="id_choferes" name="id_choferes">
            <div class="container">
                <div class="modal-dialog">
                    <div class="" role="document">
                        <div class="modal-content">
                            <div class="modal-header bg-primary" style="color:#FFF">
                                <h5 class="modal-title" id="exampleModalLabel">Modificar Chofer</h5>
                                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="form-group col-sm-12 col-md-6">
                                        <label for="nombre"><b>Nombre</b></label>
                                        <input type="text" class="form-control nombre<?=$value['id_choferes'];?>" value="<?=$value['nombre'];?>" name="nombre" id="nombre">
                                        <span class="errorNombreM" style="color:red"></span>
                                    </div>
                                    <div class="form-group col-sm-12 col-md-6">
                                        <label for="apellido"><b>Apellido</b></label>
                                        <input type="text" class="form-control apellido<?=$value['id_choferes'];?>" value="<?=$value['apellido'];?>" name="apellido" id="apellido">
                                        <span class="errorApellidoM" style="color:red"></span>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="form-group col-sm-12 col-md-6">
                                        <label for="cedula"><b>Cedula</b></label>
                                        <input type="text" class="form-control cedula<?=$value['id_choferes'];?>" value="<?=$value['cedula'];?>" name="cedula" id="cedula">
                                        <span class="errorCedulaM" style="color:red"></span>
                                    </div>
                                    <div class="form-group col-sm-12 col-md-6">
                                        <label for="telefono"><b>Telefono</b></label>
                                        <input type="text" class="form-control telefono<?=$value['id_choferes'];?>" value="<?=$value['telefono'];?>" name="telefono" id="telefono">
                                        <span class="errorTelefonoM" style="color:red"></span>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="form-group col-sm-12 col-md-6">
                                        <label for="placa"><b>Unidad</b></label>
                                        <select class="form-control select2 placa<?=$value['id_choferes'];?>" style="width:100%;" name="placa" id="placa">
                                            <option></option>
                                            <?php foreach ($vehiculos as $unidad) : ?>
                                                <?php if (!empty($unidad['id_vehiculo'])) : ?>
                                                    <option <?php if($value['placa']==$unidad['placa']){ echo "selected"; } ?>><?=$unidad['placa'] ?></option>
                                                <?php endif; ?>
                                            <?php endforeach; ?>
                                        </select>
                                        <span class="errorPlacaM" style="color:red"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button class=" btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                                <a class="ModificarChofer btn btn-primary" href="#" id="<?=$value['id_choferes']?>">Guardar</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
 
                                                    </td>
                                                    <td>
                                                        <div class="col-sm-7" style='text-align:right;'>
                                                        <?php if ($value['status'] == 1) { ?>
                                                            <a href="#" data-id="<?= $value['id_choferes'] ?>" class="btn btn-danger btn-icon-split inhabilitar" data-toggle="modal" data-target="">
                                                                <span class="icon text-white-50">
                                                                    <i class="fas fa-trash"></i>
                                                                </span>
                                                                <span class="text"></span>
                                                            </a>
                                                        <?php } else { ?>
                                                            <a href="#" data-id="<?= $value['id_choferes'] ?>" class="btn btn-outline-info btn-icon-split habilitar" data-toggle="modal" data-target="">
                                                                <span class="icon text-info-50">
                                                                    <i class="fas fa-trash-alt"></i>
                                                                </span>
                                                                <span class="text"></span>
                                                            </a>
                                                        <?php } ?>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <?php endif; ?>
                                            <?php endforeach; ?>
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
    <div class="modal fade" id="AgregarChoferModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="padding:0;">
        <div class="container">
                <div class="modal-dialog">
                    <div class="" role="document">
                        <div class="modal-content">
                            <div class="modal-header bg-primary" style="color:#FFF">
                                <h5 class="modal-title" id="exampleModalLabel">Registrar Chofer</h5>
                                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                            </div>

                            <div class="modal-body">
                                <div class="row">
                                    <div class="form-group col-sm-12 col-md-6">
                                        <label for="nombre"><b>Nombre</b></label>
                                        <input type="text" class="form-control" name="nombre" id="nombre">
                                        <span class="errorNombre" style="color:red"></span>
                                    </div>
                                    <div class="form-group col-sm-12 col-md-6">
                                        <label for="apellido"><b>Apellido</b></label>
                                        <input type="text" class="form-control" name="apellido" id="apellido">
                                        <span class="errorApellido" style="color:red"></span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-sm-12 col-md-6">
                                        <label for="cedula"><b>Cedula</b></label>
                                        <input type="text" class="form-control" name="cedula" id="cedula">
                                        <span class="errorCedula" style="color:red"></span>
                                    </div>
                                    <div class="form-group col-sm-12 col-md-6">
                                        <label for="telefono"><b>Telefono</b></label>
                                        <input type="text" class="form-control" name="telefono" id="telefono">
                                        <span class="errorTelefono" style="color:red"></span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-sm-12 col-md-6">
                                      <label for="rol"><b>Unidad asignada</b></label>
                                        <select class="form-control select2" name="placa" id="placa">
                                            <option></option>
                                            <?php foreach ($vehiculos as $unidad) : ?>
                                                <?php if (!empty($unidad['id_vehiculo'])) : ?>
                                                    <option><?= $unidad['placa'] ?></option>
                                                <?php endif; ?>
                                            <?php endforeach; ?>
                                        </select>
                                        <span class="errorPlaca" style="color:red"></span>
                                    </div>
                                </div>
                            </div>
    
                            <div class="modal-footer">
                                <button class=" btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                                <a class="EnviarChoferRegistrar btn btn-primary" href="#">Agregar</a>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
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
              
            En este modulo podrá visualizar los choferes que están registrados en el sistema a su vez registrar, eliminar y modificar
                  <br><br>
                  1. Para eliminar un chofer seleccione "eliminar" situada a la derecha del chofer
                  <br> <br>
                  2. Para modificar un chofer seleccione "modificar" situada a izquierda del chofer
                  <br><br>
                  3. Para registrar un chofer seleccione "registrar" que se muestra en el lado inferior derecho de la tabla
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

 <script type="text/javascript" src="'../../assets/js/chofer/validandoC.js"></script>
 

</script> 
</html>