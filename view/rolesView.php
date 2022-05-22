<!DOCTYPE html>
<html lang="en">

<head>
    <title><?php echo _NAMESYSTEM_; ?> | <?php if (!empty($action)) {
                                                echo $action;
                                            } ?> <?php if (!empty($url)) {
                                                        echo $url;
                                                    } ?></title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <?php require_once 'view/assets/menu.php'; ?>
        <!-- End of Sidebar -->


        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <?php require_once 'view/assets/top_menu.php'; ?>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Gestión de Roles</h1>
                        <!-- <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generar Reportes</a> -->
                    </div>

                    <div class="container-fluid">

                        <!-- LEYENDA DEL el MODULO -->
                        <p class="mb-4">En este módulo podrá visualizar los usuarios que están registrados en el sistema a su vez registrar, eliminar y modificar <a target="_blank">
                            </a></p>

                        <!-- DataTales Example -->
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
                            <span class="text">Nuevo Rol</span>

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
                                                     <td></td>
                                                
                                                      <td>    <div class="col-sm-7" style='text-align:right;'>

                                                            <a  data-id="<?= $value['id_rol']?>" class="btn btn-info btn-icon-split permisos" name="permisos" id="$value['id_rol']" data-toggle="modal" data-target="#PermisosRolModal">
                                                                <span class="icon text-white-50">
                                                                <i class="fas fa-fw fa-wrench"></i>
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
                    
            </div> <!-- MODAL DE ayuda-->


                                                       





            <div class="col-sm-7" style='text-align:right;'>
                <span class="btn btn-primary" href="#" data-toggle="modal" data-target="#AyudaModal">
                    Ayuda
                </span>

            </div>


            <?php require_once 'view/assets/footer.php'; ?>
            <!-- End of Content Wrapper -->
        </div>
        <!-- End of Page Wrapper -->

       
      <!-- PERMISOS -->
       
        <div class="modal fade" id="PermisosRolModal" tabindex="-1" role="dialog" aria-hidden="true" style="padding:0;">
            <div class="container">
                  <form action id="PermisosRolModal">
                <div class="modal-dialog">
                    <div class="" role="document">
                        <div class="modal-content">
                            <div class="modal-header bg-primary" style="color:#FFF">
                                <h5 class="modal-title" id="exampleModalLabel">Gestionar Permisos</h5>
                                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                            </div>

                            <div class="modal-body">
                                <div class="row">
                                  
                        </form>
                        </div>
                    </div>
               </div>
                  </div>

                    <!-- End of Content Wrapper -->
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
    <div class="modal fade" id="AyudaModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="padding:0;">
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
                                    En este modulo podrá visualizar los usuarios que están registrados en el sistema a su vez registrar, eliminar y modificar
                                    <br><br>
                                    1. Para eliminar un usuario seleccione "eliminar" situada a la derecha del usuario
                                    <br> <br>
                                    2. Para modificar un usuario seleccione "modificar" situada a izquierda del usuario
                                    <br><br>
                                    3. Para registrar un usuario seleccione "registrar" que se muestra en el lado inferior derecho de la tabla
                                    <br><br>
                                    4. Para volver al menu principal presione "volver" situado en la parte inferior derecha
                                    <br><br>
                                    5. Para cerrar esta ventana emergente y seguir con el sistema presione e "cerrar"
                                    <br><br>
                                    6. Para hacer una busqueda dentro del modulo debe ingresar el nombre completo del dato que desea Buscar.
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
<script type="text/javascript" src="'../../assets/js/usuario/validacion.js"></script>

<script type="text/javascript">
    function mostrarPassword() {
        var cambio = document.getElementById("pass1");

        if (cambio.type == "password") {
            cambio.type = "text";
            $('.password').removeClass('fa fa-eye-slash').addClass('fa fa-eye');
        } else {
            cambio.type = "password";
            $('.password').removeClass('fa fa-eye').addClass('fa fa-eye-slash');
        }
    }

    function mostrarPassword2() {
        var cambio2 = document.getElementById("pass2");
        if (cambio2.type == "password") {
            cambio2.type = "text";
            $('.password').removeClass('fa fa-eye-slash').addClass('fa fa-eye');
        } else {
            cambio.type = "password";
            $('.password').removeClass('fa fa-eye').addClass('fa fa-eye-slash');
        }
    }
</script>


</html>