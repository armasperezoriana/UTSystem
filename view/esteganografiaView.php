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
                        <h1 class="h3 mb-0 text-gray-800">Gestión de Seguridad de Usuarios</h1>
                        <!-- <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generar Reportes</a> -->
                    </div>

                    <div class="container-fluid">

                        <!-- LEYENDA DEL el MODULO -->
                        <p class="mb-4">Gestión de seguridad <a target="_blank">
                            </a></p>

                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <center>
                                 <div class="modal-header bg-primary" style="color:#FFF">
                                <h5  id="exampleModalLabel">Pregunta de Seguridad</h5>
                            
                            </div>
                                </center>
                            </div>
                         
                        </div>
                        <span class="icon text-white-50">
                            <i class="fas fa-check"></i>
                        </span>
                       

                        </a>
                    </div>
                    <br>
                   
            </div> 

            <!-- End of Content Wrapper -->
        </div>
        <!-- End of Page Wrapper -->

        <!-- MODAL DE REGISTRARSE-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>
        <style type="text/css">
            .modal {
                font-size: 0.8em;
            }
        </style>
        <div id="AgregarUsuarioModal" tabindex="-1" role="dialog" aria-hidden="true" style="padding:0;">
            <div class="container">
                <div >
                    <div class="" role="document">
                        <div >
                          

                            <div >
                                <div class="row">
                                    <div class="form-group col-sm-12 col-md-6">
                            <div class="form__box">  

          <div class="tabla">  
           <div>
            <br>
            <label id='imgSelecciona'>Seleccione o suba una imagen</label>
            <br>

            <table border="2px black" div="imagenes" style="width:100%" >
              <tbody id='tbody1'>
               <tr>
                <th style="width:50%" ><img src="assets/img/seguridad/1.png" class="img-profile" width="100%" ></th>
                <th style="width:50%" ><img  onclick="change(this,'2')" class="imageStyle" src="assets/img/seguridad/2.png" width="100%" id='img3'></th>
                 <th style="width:50%" ><img  onclick="change(this,'2')" class="imageStyle" src="assets/img/seguridad/3.png" width="100%" id='img4'></th>
              <th style="width:50%" ><img  onclick="change(this,'2')" class="imageStyle" src="assets/img/seguridad/4.png" width="100%" id='img4'></th>
              </tr>
            </tbody>
            <tbody id='tbody2' style='display:none'>
              <tr>
                <th>
                  <center>
                    <input type="file" onchange="loadImg(event)" class='form-control' id='imagen' name="imagen">
                  </center>
                </th>
                <th>
                  <div style="width:70vh;height:200px;background: gray;border-radius: 8px;" id="displayedImg"><br>Imagen</div>
                </th>
              </tr>
            </tbody>

          </table>

          <br>
          <center>   <button type='button' id='subirImg'  class='btnSubir'>Subir imagen</button></center>
          <br>
          <center><button type='button' class='btnEnviar' id='enviar' >Enviar</button></center>
          <br>
        </div>
        
                                        <label for="modelo"><b>Pregunta de Seguridad</b></label>
                                        <select class="form-control select2" name="modelo" id="modelo">
                                                  <option value="">...</option>
                <option value="1">¿Cuál era el nombre de tu mejor amigo?</option>
                <option value="2">¿Cuál es tu color favorito?</option>
                <option value="3">¿Cómo se llama tu perro?</option>
                <option value="4">¿Cuál fue tu primer empleo?</option>
                <option value="5">¿En qué ciudad naciste?</option>
                <option value="6">¿Cuál es tu trabajo ideal?</option>
            </select>
                                            </select>
                                         <span class="errorModelo" style="color:red"></span>
                                    </div>
                             
                                        <label for="respuesta"><b>Respuesta</b></label>
                                        <input type="text" class="form-control" name="placa" id="respuesta">
                                        <span class="errorrespuesta" style="color:red"></span>
                                    </div>

                            <div class="modal-footer">
                                <button class=" btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                                <a class="EnviarUsuariosRegistrar btn btn-primary" href="#">Agregar</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>





       <!-- MODAL DE MODIFICAR-->


  <!-- MODAL DE CONSULTAR-->
         
        <div class="modal fade" id="ConsultarUsuarioModal" tabindex="-1" role="dialog" aria-hidden="true" value="<? const id = $usuario->id;  ?>
" style="padding:0;">
            <form id="consultarUsuario" method="POST">
                <input type="hidden" id="id_usuario" name="id_usuario">
                <div class="container">
                    <div class="modal-dialog">
                        <div class="" role="document">
                            <div class="modal-content">
                                <div class="modal-header bg-primary" style="color:#FFF">
                                    <h5 class="modal-title">
                                        <center>Consultar Usuario</center>
                                    </h5>
                                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                </div>

                                <div class="col-sm-7" style='text-align:right;'>
                                    <span href="#" data-toggle="modal" data-target="ModificarUsuarioModal">

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
                                                            <input type="text" class="form-control-plaintext" disabled name="nombre" id="nombre">
                                                            <span class="errorNombre" style="color:red"></span>
                                                        </div>
                                                        <div class="form-group col-sm-12 col-md-6">
                                                            <label for="apellido"><b>Apellido</b></label>
                                                            <input type="text" class="form-control-plaintext" disabled name="apellido" id="apellido">
                                                            <span class="errorApellido" style="color:red"></span>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="form-group col-sm-12 col-md-6">
                                                            <label for="cedula"><b>Cedula</b></label>
                                                            <input type="text" class="form-control-plaintext" disabled name="cedula" id="cedula">
                                                            <span class="errorCedula" style="color:red"></span>
                                                        </div>
                                                        <div class="form-group col-sm-12 col-md-6">
                                                            <label for="username"><b>Usuario</b></label>
                                                            <input type="text" class="form-control-plaintext" disabled name="username" id="username">
                                                            <span class="errorUsername" style="color:red"></span>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="form-group col-sm-12 col-md-12">
                                                            <label for="rol"><b>Roles</b></label>
                                                            <select style="width: 100%;" class="form-control-plaintext  disabled select2" name="rol" id="rol">
                                                                <option></option>
                                                                <?php foreach ($roles as $rols) : ?>
                                                                    <?php if (!empty($rols['id_rol'])) : ?>
                                                                        <option><?= $rols['nombre_rol'] ?></option>
                                                                    <?php endif ?>
                                                                <?php endforeach ?>
                                                            </select>
                                                            <span class="errorRol" style="color:red"></span>
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="row">
                                                        <div class="form-group col-sm-12 col-md-12">
                                                            <label for="correo"><b>Correo</b></label> 
                                                            <input style="width: 100%;" type="email" class="form-control" name="correo" id="correo"  class="form-control-plaintext" disabled  placeholder="example@gmail.com">
                                                            <span class="correo" style="color:red"></span>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button class=" btn btn-secondary" type="button" data-dismiss="modal">Cerrar</button>
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
                                <p>La imagen de seguridad es para cada usuario, es necesario para realizar algun cambio que seleccione un diseño o subir uno
                                    <br><br>
                                    1. Para subir una imagen seleccione "agregar imagen" situada a la derecha solo acepta formatos png y jpg de 1 GB.
                                    <br> <br>
                                    2. Para modificar un usuario seleccione "elegir" alguna de las imagenes prediseñadas conjunto a su palabra de seguridad para poder guardar los cambios
                                    <br><br>
                                    
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
            <!-- MODAL DE ayuda-->

   
            <div class="col-sm-7" style='text-align:right;'>
                <span class="btn btn-primary" href="#" data-toggle="modal" data-target="#AyudaModal">
                    Ayuda
                </span>

            <?php require_once 'view/assets/footer.php'; ?>
            </div>

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