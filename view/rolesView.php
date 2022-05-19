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
                        <h1 class="h3 mb-0 text-gray-800">Gestión de Seguridad</h1>
                        <a href="Manual.pdf"  target="blank" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50" ></i>Manual de Usuario</a>
                    </div>

                      <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <center>
                                    <h6 class="m-0 font-weight-bold text-primary">Módulo de Gestión Roles </h6>
                                </center>
                            </div>
                        </div>
                        <span class="icon text-white-50">
                            <i class="fas fa-check"></i>
                        </span>
                        <a href="#" class="btn btn-success btn-icon-split" data-target="#AgregarUsuarioModal" data-toggle="modal" data-target="#AgregarUsuarioModal">
                            <span class="icon text-white-50">
                                <i class="fas fa-check"></i>
                            </span>
                            <span class="text">Registrar</span>

                        </a>
                    </div>
                    <br>
                    <div class="table-responsive">
                        <div class="card-body" style='background:;'>
                            <div class="row" style='font-size:0.9em;'>
                                <table class="table table-striped datatable col-sm-12" id="">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Rol</th>
                                            <th>Descripcion</th>
                                            <th>Permisos</th>
                                            <th>Acciones</th>
                                            <th></th>
                                            <th>
                                            
                                            </th>
                                            <th></th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <?php foreach ($roles as $rols) : ?>
                                            <?php if (!empty($rols['id_rol'])) : ?>
                                                <tr>
                                                    <td><?= $rols['id_rol'] ?></td>
                                                    <td><?= $rols['nombre_rol'] ?></td>
                                                    <td><?= $rols['descripcion'] ?></td>
                                                    <td>    <div class="col-sm-7" style='text-align:right;'>

                                                            <a href="#" data-id="<?= $value['id_usuario']?>" class="btn btn-info btn-icon-split permisos" name="permisos" id="'$value['id_usuario']'" href="#" data-toggle="modal" data-target="#permisosModal">
                                                                <span class="icon text-white-50">
                                                                    <i class="fas fa-flag"></i>
                                                                </span>
                                                                <span class="text">Permisos</span></td>
                                                    <td>

                                                        <div class="col-sm-7" style='text-align:right;'>

                                                            <a href="#" data-id="<?= $value['id_usuario']?>" class="btn btn-warning btn-icon-split editarbtn" name="editar" id="'$value['id_usuario']'" href="#" data-toggle="modal" data-target="#ModificarUsuarioModal">
                                                                <span class="icon text-white-50">
                                                                    <i class="fas fa-flag"></i>
                                                                </span>
                                                                <span class="text">Modificar</span>
                                                            </a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="col-sm-7" style='text-align:right;'>
                                                            <?php if ($rols['status'] == 1) { ?>
                                                                <a href="#" data-id="<?= $value['id_rol'] ?>" class="btn btn-danger btn-icon-split inhabilitar" data-toggle="modal" data-target="">
                                                                    <span class="icon text-white-50">
                                                                        <i class="fas fa-trash"></i>
                                                                    </span>
                                                                    <span class="text">Eliminar</span>
                                                                </a>
                                                            <?php } else { ?>
                                                                <a href="#" data-id="<?= $value['id_rol'] ?>" class="btn btn-outline-info btn-icon-split habilitar" data-toggle="modal" data-target="">
                                                                    <span class="icon text-info-50">
                                                                        <i class="fas fa-trash-alt"></i>
                                                                    </span>
                                                                    <span class="text">Habilitar</span>
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
                    
                       <!-- MODAL DE REGISTRARSE-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>
        <style type="text/css">
            .modal {
                font-size: 0.8em;
            }
        </style>
        <div class="modal fade" id="AgregarUsuarioModal" tabindex="-1" role="dialog" aria-hidden="true" style="padding:0;">
            <div class="container">
                  <form action id="">
                <div class="modal-dialog">
                    <div class="" role="document">
                        <div class="modal-content">
                            <div class="modal-header bg-primary" style="color:#FFF">
                                <h5 class="modal-title" id="exampleModalLabel">Registrar Rol</h5>
                                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                            </div>

                            <div class="modal-body">
                                <div class="row">
                                    <div class="form-group col-sm-12 col-md-6">
                                        <label for="cedula"><b>Nombre del Rol</b></label>
                                        <input type="text" class="form-control" name="cedula" id="cedula">
                                        <span class="errorCedula" style="color:red"></span>
                                    </div>
                                    <div class="form-group col-sm-12 col-md-6">
                                        <label for="nombre"><b>Descripcion</b></label>
                                        <input type="text" class="form-control" name="nombre" id="nombre">
                                        <span class="errorNombre" style="color:red"></span>
                                    </div>
                                </div>
                                <div class="row">
                                    <table class="table table-striped datatable col-sm-12" id="">
                                    <thead>
                                        <tr>
                                            <th>Modulo</th>
                                            <th>Rol</th>
                                            <th>Permiso Total</th>
                                            <th>Restringido</th>
                                            <th>Solo lectura</th>
                                            <th></th>
                                            <th>
                                            
                                            </th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                     </table>
                            </div>


                            <div class="modal-footer">
                                <button class=" btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                                <a class="EnviarUsuariosRegistrar btn btn-primary" href="#">Agregar</a>
                            </div>
                        </form>
                        </div>
                    </div>
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