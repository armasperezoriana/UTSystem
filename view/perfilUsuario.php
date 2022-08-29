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
                        <h1 class="h3 mb-0 text-gray-800">Perfil Usuario</h1>
                        <!-- <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generar Reportes</a> -->
                    </div>

                    <div class="container-fluid">

                        <!-- LEYENDA DEL el MODULO -->
                        <p class="mb-4">Gestión Usuario<a target="_blank">
                            </a></p>

                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <center>
                                    <h6 class="m-0 font-weight-bold text-primary"> Usuario Actual</h6>
                                </center>
                            </div>
                        </div>


                        <!-- MODAL DE CONSULTAR-->


                        <div id="ConsultarUsuarioModal" tabindex="-1" role="dialog" aria-hidden="true" value="<? const id = $usuario->id;  ?>
" style="padding:0;">
                            <form id="consultarUsuario" method="POST">
                                <input type="hidden" id="id_usuario" name="id_usuario">
                                <div class="container">
                                    <div class="modal-dialog">
                                        <div class="" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header bg-primary" style="color:#FFF">
                                                    <h5 class="modal-title">
                                                        <center>Consultar Usuario Actual</center>
                                                    </h5>
                                                    <button class="close" type="button" data-dismiss="modal"
                                                        aria-label="Close">
                                                        <span aria-hidden="true">×</span>
                                                    </button>
                                                </div>

                                                <div class="col-sm-7" style='text-align:right;'>
                                                    <span href="#" data-toggle="modal"
                                                        data-target="ModificarUsuarioModal">

                                                    </span>
                                                </div>

                                                <div class="modal-body">
                                                    <div class="table-responsive">
                                                        <div class="card-body">
                                                            <div class="row" style='font-size:0.9em;'>
                                                                <div class="modal-body">
                                                                    <div class="row">
                                                                        <div class="form-group col-sm-12 col-md-6">

                                                                            <label for="nombre"><b>Nombre</b></label>
                                                                            <input type="text"
                                                                                class="form-control-plaintext" disabled
                                                                                name="nombre" id="nombre" value="<?php 

                    echo ucwords($_SESSION['ut_nombre']);


                    ?>
                   ">
                                                                            <span class="errorNombre"
                                                                                style="color:red"></span>
                                                                        </div>
                                                                        <div class="form-group col-sm-12 col-md-6">
                                                                            <label
                                                                                for="apellido"><b>Apellido</b></label>
                                                                            <input type="text"
                                                                                class="form-control-plaintext" disabled
                                                                                name="apellido" id="apellido" value="<?php 

                    echo ucwords($_SESSION['ut_apellido']);


                    ?>
                   ">
                                                                            <span class="errorApellido"
                                                                                style="color:red"></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="form-group col-sm-12 col-md-6">
                                                                            <label for="cedula"><b>Cedula</b></label>
                                                                            <input type="text"
                                                                                class="form-control-plaintext" disabled
                                                                                name="cedula" id="cedula" value="<?php 

                    echo ucwords($_SESSION['ut_cedula']);


                    ?>
                   ">
                                                                            <span class="errorCedula"
                                                                                style="color:red"></span>
                                                                        </div>
                                                                        <div class="form-group col-sm-12 col-md-6">
                                                                            <label for="username"><b>Usuario</b></label>
                                                                            <input type="text"
                                                                                class="form-control-plaintext" disabled
                                                                                name="username" id="username" value="<?php 

                    echo ucwords($_SESSION['ut_usuario']);


                    ?>
                   ">
                                                                            <span class="errorUsername"
                                                                                style="color:red"></span>
                                                                        </div>
                                                                    </div>




                                                                    <div class="row">
                                                                        <div class="form-group col-sm-12 col-md-12">
                                                                            <label for="correo"><b>Correo</b></label>
                                                                            <input style="width: 100%;" type="email"
                                                                                class="form-control" name="correo"
                                                                                id="correo" value="<?php 

                    echo ucwords($_SESSION['ut_correo']);
?>" class="form-control-plaintext" disabled placeholder="example@gmail.com">
                                                                            <span class="correo"
                                                                                style="color:red"></span>
                                                                        </div>
                                                                    </div>
                                                                    <div>
                                                                        <button type="button" class="btn btn-warning"
                                                                            data-toggle="modal"
                                                                            data-target="#modalForm"><a href="#"
                                                                                data-id="<?=$_SESSION['ut_id'] ?>"
                                                                                class="btn btn-warning btn-icon-split editar"
                                                                                name="editar" <span
                                                                                class="icon text-white-50">
                                                                                <i class="fas fa-edit"></i></a></button>
                                                                        </span>
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
                            </form>
                        </div>
                    </div>
                </div>

                


                <div id="modificarPerfil" tabindex="-1" role="dialog" aria-hidden="true"  style="padding:0;" class="modal fade"> 
                            <form id="consultarUsuario" method="POST">
                                <input type="hidden" id="id_usuario" name="id_usuario">
                                <div class="container">
                                    <div class="modal-dialog">
                                        <div class="" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header bg-primary" style="color:#FFF">
                                                    <h5 class="modal-title">
                                                        <center> Modificar Perfil Actual</center>
                                                    </h5>
                                                    <button class="close" type="button" data-dismiss="modal"
                                                        aria-label="Close">
                                                        <span aria-hidden="true">×</span>
                                                    </button>
                                                </div>

                                                <div class="col-sm-7" style='text-align:right;'>
                                                    <span href="#" data-toggle="modal"
                                                        data-target="ModificarUsuarioModal">

                                                    </span>
                                                </div>

                                                <div class="modal-body">
                                                    <div class="table-responsive">
                                                        <div class="card-body">
                                                            <div class="row" style='font-size:0.9em;'>
                                                                <div class="modal-body">
                                                                    <div class="row">
                                                                        <div class="form-group col-sm-12 col-md-6">

                                                                            <label for="nombre"><b>Nombre</b></label>
                                                                            <input type="text"
                                                                                class="form-control-plaintext" 
                                                                                name="nombre" id="nombre" value="<?php 

                    echo ucwords($_SESSION['ut_nombre']);


                    ?>
                   ">
                                                                            <span class="errorNombre"
                                                                                style="color:red"></span>
                                                                        </div>
                                                                        <div class="form-group col-sm-12 col-md-6">
                                                                            <label
                                                                                for="apellido"><b>Apellido</b></label>
                                                                            <input type="text"
                                                                                class="form-control-plaintext" 
                                                                                name="apellido" id="apellido" value="<?php 

                    echo ucwords($_SESSION['ut_apellido']);


                    ?>
                   ">
                                                                            <span class="errorApellido"
                                                                                style="color:red"></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="form-group col-sm-12 col-md-6">
                                                                            <label for="cedula"><b>Cedula</b></label>
                                                                            <input type="text"
                                                                                class="form-control-plaintext" 
                                                                                name="cedula" id="cedula" value="<?php 

                    echo ucwords($_SESSION['ut_cedula']);


                    ?>
                   ">
                                                                            <span class="errorCedula"
                                                                                style="color:red"></span>
                                                                        </div>
                                                                        <div class="form-group col-sm-12 col-md-6">
                                                                            <label for="username"><b>Usuario</b></label>
                                                                            <input type="text"
                                                                                class="form-control-plaintext" 
                                                                                name="username" id="username" value="<?php 

                    echo ucwords($_SESSION['ut_usuario']);


                    ?>
                   ">
                                                                            <span class="errorUsername"
                                                                                style="color:red"></span>
                                                                        </div>
                                                                    </div>




                                                                    <div class="row">
                                                                        <div class="form-group col-sm-12 col-md-12">
                                                                            <label for="correo"><b>Correo</b></label>
                                                                            <input style="width: 100%;" type="email"
                                                                                class="form-control" name="correo"
                                                                                id="correo" value="<?php 

                    echo ucwords($_SESSION['ut_correo']);
?>" class="form-control-plaintext"  placeholder="example@gmail.com">
                                                                            <span class="correo"
                                                                                style="color:red"></span>
                                                                        </div>
                                                                    </div>
                                                                    <div>
                                                                    <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                            <button type="button" class="GuardarPerfil btn btn-primary ">Guardar Cambios</button>
                        </div>
                                                                        </span>
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
                            </form>
                        </div>
                    </div>
            




            <!-- Modal -->
            <div class="modal fade" id="modalForm" role="dialog" data-controls-modal="your_div_id"
                data-backdrop="static" data-keyboard="false">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">
                                <span aria-hidden="true">×</span>
                                <span class="sr-only">Cerrar</span>
                            </button>
                            <h4 class="modal-title" id="myModalLabel"></h4>
                        </div>

                        <!-- Modal Body -->
                        <div class="modal-body">
                            <p class="statusMsg"></p>
                            <form role="form">
                                <div class="form-group">
                                    <label for="confirmar">
                                        <center>
                                            <h3>Confirme la acción
                                        </center>
                                        </h3>
                                    </label>
                                    <br>
                                    <p>Verifica tus datos</p>
                                    <br>
                                    <input type="text" class="form-control" id="usuario" placeholder="Usuario"
                                        required />
                                    <span class="errorUsername" style="color:red"></span>

                                    <br>
                                    <input type="password" class="form-control" id="clave_especial"
                                        placeholder="Contraseña" />
                                    <span class="erroClaveEspecial" style="color:red"></span>
                                    <br>
                                    <p>Nota: Debe ingresar clave especial para modificar tu perfil</p>
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

      


        <?php require_once 'view/assets/footer.php'; ?>
</body>
<script type="text/javascript" src="'../../assets/js/usuario/validacion.js"></script>
<script type="text/javascript" src="'../../assets/js/perfil/verificar_clave_perfil.js"></script>

</html>