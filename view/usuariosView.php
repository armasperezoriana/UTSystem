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
    <script type="text/javascript" src="'../../assets/js/esteganografia/enviardatos.js"></script>
    <script type="text/javascript" src="'../../assets/js/usuario/validacion.js"></script>
</head>

<body id="page-top">
    <style>
    .card-seguridad-img:hover,
    .card-seguridad-img-autenticar:hover {
        background: gray;
    }
    </style>
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
                        <h1 class="h3 mb-0 text-gray-800">Gestión de Usuarios</h1>
                        <!-- <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generar Reportes</a> -->
                    </div>

                    <div class="container-fluid">

                        <!-- LEYENDA DEL el MODULO -->
                        <p class="mb-4">En este módulo podrá visualizar los usuarios que están registrados en el
                            sistema a su vez registrar, eliminar y modificar <a target="_blank">
                            </a></p>

                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <center>
                                    <h6 class="m-0 font-weight-bold text-primary">Módulo de Usuarios</h6>
                                </center>
                                <center> <img src="assets/img/roles.jpg" class="img-profile" width="30%"  right="500%" > </center> 
                      
                            </div>

                        </div>
                        <span class="icon text-white-50">
                            <i class="fas fa-check"></i>
                        </span>
                        <?php
                            
                            if (in_array('registrar usuario', $_SESSION['ut_permisos']))
                            {
                               ?>
                        <a href="#" class="btn btn-success btn-icon-split" data-target="#AgregarUsuarioModal"
                            data-toggle="modal" data-target="#AgregarUsuarioModal">
                            <span class="icon text-white-50">
                                <i class="fas fa-check"></i>
                            </span>
                            <span class="text">Registrar</span>

                        </a>
                        <?php } ?>

                    </div>
                    <br>
                    <div class="table-responsive">
                        <div class="card-body" style='background:;'>
                            <div class="row" style='font-size:0.9em;'>
                                <table class="table table-striped datatable col-sm-200 " id="">
                                    <thead>
                                        <tr>
                                            <th>Cédula</th>
                                            <th>Usuario</th>
                                            <th>Nombres</th>
                                            <th>Correo</th>
                                            <th></th>
                                            <th></th>
                                            <th>
                                                <center> Acción<center>
                                            </th>
                                            <th></th>

                                            <th></th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <?php foreach ($usuarios as $value) : ?>
                                        <?php if (!empty($value['id_usuario'])) : ?>
                                        <tr>
                                            <td><?= $value['cedula'] ?></td>
                                            <td><?= $value['usuario'] ?></td>
                                            <td><?= $value['nombre'].' '.$value['apellido']?></td>
                                            <td><?= $value['correo'] ?></td>
                                            <td> </td>
                                            <td></td>
                                            <td>

                                                <div class="col-sm-7" style='text-align:right;'>

                                                    <a href="#" data-id="<?= $value['id_usuario'] ?>"
                                                        class="btn btn-info btn-icon-split consultar" name="consultar">


                                                        <span class="icon text-white-50">
                                                            <i class="fas fa-search"></i>
                                                        </span>
                                                        <span class="text"></span>
                                                    </a>
                                                </div>


                                            </td>
                                            <td>
                                                <?php
                                                         
                                                         if (in_array('editar usuario', $_SESSION['ut_permisos']))
                                                         {
                                                            ?>

                                                <div class="col-sm-7" style='text-align:right;'>

                                                    <a href="#" data-id="<?= $value['id_usuario'] ?>"  id="'$value['id_usuario']'" 
                                                        class="btn btn-warning btn-icon-split editar" name="editar">
                                                        <span class="icon text-white-50" >
                                                            <i class="fas fa-edit"></i>
                                                        </span>
                                                        <span class="text"></span>
                                                    </a>
                                                </div>
                                                <?php } ?>

                                            </td>
                                            <td>
                                                <?php
                                                       
                                                       if (in_array('eliminar usuario', $_SESSION['ut_permisos']))
                                                       {
                                                        ?>
                                                <div class="col-sm-7" style='text-align:right;'>
                                                    <?php if ($value['status'] == 1) { ?>
                                                    <a href="#" data-id="<?= $value['id_usuario'] ?>"
                                                        class="btn btn-danger btn-icon-split inhabilitar"
                                                        data-toggle="modal" data-target="">
                                                        <span class="icon text-white-50">
                                                            <i class="fas fa-trash"></i>
                                                        </span>
                                                        <span class="text"></span>
                                                    </a>
                                                    <?php } else { ?>
                                                    <a href="#" data-id="<?= $value['id_usuario'] ?>" class="btn btn-outline-info btn-icon-split habilitar
                                                                    " data-toggle="modal" data-target="">
                                                        <span class="icon text-info-50">
                                                            <i class="fas fa-trash-alt"></i>
                                                        </span>
                                                        <span class="text"></span>
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

            </div>

<!-- MODAL IMAGEN DE SEGURIDAD -->
 <div class="modal fade" id="modalSeguridad" role="dialog" data-controls-modal="your_div_id"
    data-backdrop="static" data-keyboard="false">>
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Modal Body -->
            <div class="modal-body">
                <p class="statusMsg"></p>
                <form id="modalSeguridad"">
                    <input type="hidden" id="id_usuario" name="id_usuario">
                    <div class="form-group">
                        <div class="modal-header bg-primary" style="color:#FFF">
                            <center>
                                <p>
                                <h4><b>Seleccione su imagen de seguridad</b></h4>
                                </p>
                            </center>
                        </div>
                    </div>
                    <div class="container">
                        <div>
                            <div class="" role="document"  id="modalSeguridad">
                                <TABLE>
                                    <TR>
                                        <TH>
                                            <center> IMAGEN 1</center>
                                        </TH>
                                        <TH>
                                            <center> IMAGEN 2</center>
                                        </TH>
                                        <TH>
                                            <center> IMAGEN 3</center>
                                        </TH>
                                        <TH>
                                            IMAGEN 4
                                        </TH>
                                    </TR>
                                    <TR >

                                        <TD><img src="assets/img/seguridad/QVZqY3ZuempkRjNka1Bjc0NrcDVNdz09.png"
                                                class="card p-2 card-seguridad-img" data-action="consultar"
                                                data-img='QVZqY3ZuempkRjNka1Bjc0NrcDVNdz09.png' id="img"
                                                style="width:100%; height:100%;">
                                        </td>
                                        </TD>
                                        <TD> <img
                                                src="assets/img/seguridad/ZHRlVlJGQloyZEZWVS9BY05LL0U5UT09.png"
                                                class="card p-2 card-seguridad-img" data-action="consultar"
                                                data-img='ZHRlVlJGQloyZEZWVS9BY05LL0U5UT09.png' id="img"
                                                style="width:100%; height:100%;">
                                        </TD>
                                        <TD> <img
                                                src="assets/img/seguridad/YXo0ZDdOM0lZZWhCaE8yczcvZDdFZz09.png"
                                                class="card p-2 card-seguridad-img" data-action="consultar"
                                                data-img='YXo0ZDdOM0lZZWhCaE8yczcvZDdFZz09.png' id="img"
                                                style="width:100%; height:100%;">
                                        </TD>
                                        <TD><img src="assets/img/seguridad/eXgxR2trVEtzeXVueU9zdXBSRjNKZz09.png"
                                                class="card p-2 card-seguridad-img" data-action="consultar"
                                                data-img="eXgxR2trVEtzeXVueU9zdXBSRjNKZz09.png" id="img"
                                                style="width:75%; height:100%;">

                                        </TD>
                                    </TR>
                                    <br><br>
                            </div>
                            </table>
                            <!--- PREGUNTA 1 --->
                            <label for="pregunta"><b>Pregunta
                                    1:</b></label>
                            <div class="form-group col-sm-12 col-md-12">
                                <select class="form-control select2" name="pregunta" id="preguntauno" style="width:100%;" required>

                                    <option value="">

                                    </option>
                                    <option value="¿Cuál era el nombre de tu mejor amigo?">
                                        ¿Cuál
                                        era el
                                        nombre
                                        de tu
                                        mejor
                                        amigo?
                                    </option>
                                    <option value="¿Cuál es tu color favorito?">
                                        ¿Cuál es
                                        tu
                                        color
                                        favorito?
                                    </option>
                                    <option value="¿Cómo se llama tu perro?">
                                        ¿Cómo se
                                        llama tu
                                        perro?
                                    </option>
                                    <option value="¿Donde estudiaste?">
                                        ¿Donde
                                        estudiaste?
                                    </option>
                                    <option value="¿Donde naciste?">
                                        ¿Donde
                                        naciste?
                                    </option>
                                    <option value="¿Cuál es tu apodo?">
                                        ¿Cuál es
                                        tu
                                        apodo?
                                    </option>
                                    <option value="¿Segundo nombre de tu padre?">
                                        ¿Segundo
                                        nombre
                                        de tu
                                        padre?
                                    </option>
                                    <option value="¿Dulce favorito?">
                                        ¿Dulce
                                        Favorito?
                                    </option>
                                    <option value="¿Donde estudiaste?">
                                        ¿Donde
                                        estudiaste?
                                    </option>
                                    <option value="¿Gatos o perros?">
                                        ¿Gatos o
                                        perros?
                                    </option>
                                </select>
                                <span style="color:red"></span>


                                <span class="errorPreguntaunoI" style="color:red"></span>
                            </div>

                            <label for="respuesta"><b>Respuesta</b></label>
                            <input type="text" class="form-control" name="respuestauno" id="respuestauno" required>
                            <span class="errorrespuestaI" style="color:red"></span>
                        </div>
                        <br>
                        <p>Nota: El sistema distingue entre mayúsculas y minúsculas, tome en cuenta como ingreso la información al registrarse</p>
                                </div>

                            </form>
                        </div>

                        <!-- Modal Footer -->
                        <div class="modal-footer">

                            <button class=" btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                            <a class="ConsultarSeguridad btn btn-primary" href="#">Verificar</a>
                          
                        </div>
                    </div>
                </div>
            </div> 



        </div>

        <!-- FOOTER-->

        <div class="col-sm-7" style='text-align:right;'>
            <span class="btn btn-primary" href="#" data-toggle="modal" data-target="#AyudaModal">
                Ayuda
            </span>
            

            <!-- <button class="btn btn-success btn-lg" data-toggle="modal" data-target="#modalSeguridad">
                Seguridad
            </button> -->
        </div>
     
        <?php require_once 'view/assets/footer.php'; ?>

        
       
    </div>

    <!-- MODALES -->
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
            <div class="modal-dialog">
                <div class="" role="document">
                    <div class="modal-content">
                        <div class="modal-header bg-primary" style="color:#FFF">
                            <h5 class="modal-title" id="exampleModalLabel">Datos de usuario</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div style="width:100%">

                            </div>
                            <br>
                            <div class="contenedor" id="pasouno">
                                <div class="row">
                                    <div class="form-group col-sm-12 col-md-6">
                                        <label for="cedula"><b>Cédula</b></label>
                                        <input type="text" class="form-control" name="cedula" id="cedula"
                                            placeholder="Ingrese su cedula"
                                            title="Solo puede ingresar de 7 a 10 numeros" maxlength="9" required>
                                        <span class="errorCedula" style="color:red"></span>
                                    </div>
                                    <div class="form-group col-sm-12 col-md-6">
                                        <label for="nombre"><b>Nombre</b></label>
                                        <input type="text" class="form-control" name="nombre" id="nombre"
                                            pattern="^[a-zA-Z]{3,20}$" placeholder="Ingrese su nombre" required>
                                        <span class="errorNombre" style="color:red"></span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-sm-12 col-md-6">
                                        <label for="apellido"><b>Apellido</b></label>
                                        <input type="text" class="form-control" name="apellido" id="apellido"
                                            placeholder="Ingrese su Apellido" required>
                                        <span class="errorApellido" style="color:red"></span>
                                    </div>
                                    <div class="form-group col-sm-12 col-md-6">
                                        <label for="username"><b>Usuario</b></label>
                                        <input type="text" class="form-control" name="username" id="username"
                                            placeholder="Nombre de usuario" required>
                                        <span class="errorUsername" style="color:red"></span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-sm-12 col-md-12">
                                        <label for="rol"><b>Rol</b></label>
                                        <select class="form-control select2" name="rol" id="rol"
                                            placeholder="Selecciona un rol">
                                            <option></option>
                                            <?php foreach ($roles as $rols) : ?>
                                            <?php if (!empty($rols['id_rol'])) : ?>
                                            <option value="<?= $rols['id_rol'] ?>"><?= $rols['nombre_rol'] ?>
                                            </option>
                                            <?php endif ?>
                                            <?php endforeach ?>
                                        </select>
                                        <span class="errorRol" style="color:red"></span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-sm-12 col-md-6">
                                        <label for="pass1"><b>Contraseña</b></label>
                                        <input type="password" class="form-control" name="pass1" id="pass1"
                                            placeholder="Ingrese su contraseña" required>
                                        <span class="errorPass1" style="color:red"></span>
                                        <div class="input-group-append">
                                            <center>
                                                <button id="show_password" class="btn btn-primary" type="button"
                                                    onclick="mostrarPassword()"> <span
                                                        class="fa fa-eye-slash icon password"></span> </button>
                                            </center>
                                        </div>
                                    </div>
                                    <div class="form-group col-sm-12 col-md-6">
                                        <label for="pass2"><b>Repite la Contraseña</b></label>
                                        <input type="password" class="form-control" name="pass2" id="pass2"
                                            placeholder="Repite tu clave" required>
                                        <span class="errorPass2" style="color:red"></span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-sm-12 col-md-12">
                                        <label for="correo"><b>Correo</b></label>
                                        <input style="width: 100%;" type="email" class="form-control" name="correo"
                                            id="correo" value="" placeholder="example@gmail.com">
                                        <span class="errorCorreo" style="color:red"></span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-sm-12 col-md-12">
                                        <label for="clave_especial"><b>Clave especial</b></label>
                                        <input style="width: 50%;" type="password" class="form-control"
                                            name="clave_especial" id="clave_especial"
                                            placeholder="Introduce una clave especial">
                                        <span class="errorClave" style="color:red"></span>
                                    </div>
                                </div>

                            </div>
                            <!-- MODAL DE PREGUNTAS DE SEGURIDAD-->
                            <div>

                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header bg-secondary" style="color:#FFF">
                                            <h5 id="exampleModalLabel">Preguntas de Seguridad</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <a class="scroll-to-top rounded" href="#page-top">
                                                <i class="fas fa-angle-up"></i>
                                            </a>
                                            <style type="text/css">
                                            .modal {
                                                font-size: 0.8em;
                                            }
                                            </style>
                                            <div id="AgregarUsuarioModal" tabindex="-1" role="dialog" aria-hidden="true"
                                                style="padding:0;">
                                                <div class="container">
                                                    <div>
                                                        <div class="" role="document">
                                                            <div>
                                                                <div>
                                                                    <div class="row">
                                                                        <div class="form-group col-sm-12 col-md-6">
                                                                            <div class="form__pr">
                                                                                <table class="table">
                                                                                    <tr>
                                                                                        <th>Imagen 1</th>
                                                                                        <th>Imagen 2</th>
                                                                                        <th>Imagen 3</th>
                                                                                        <th>Imagen 4</th>

                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>

                                                                                            <img src="assets/img/seguridad/eXgxR2trVEtzeXVueU9zdXBSRjNKZz09.png"
                                                                                                class="card p-2 card-seguridad-img"
                                                                                                data-action="registrar"
                                                                                                data-img="eXgxR2trVEtzeXVueU9zdXBSRjNKZz09.png"
                                                                                                style="width:100%; height:100%;">
                                                                                        </td>
                                                                                        <td><img src="assets/img/seguridad/QVZqY3ZuempkRjNka1Bjc0NrcDVNdz09.png"
                                                                                                class="card p-2 card-seguridad-img"
                                                                                                data-action="registrar"
                                                                                                data-img="QVZqY3ZuempkRjNka1Bjc0NrcDVNdz09.png"
                                                                                                style="width:100%; height:100%;">
                                                                                        </td>
                                                                                        <td><img src="assets/img/seguridad/ZHRlVlJGQloyZEZWVS9BY05LL0U5UT09.png"
                                                                                                class="card p-2 card-seguridad-img"
                                                                                                data-action="registrar"
                                                                                                data-img="ZHRlVlJGQloyZEZWVS9BY05LL0U5UT09.png"
                                                                                                style="width:100%; height:100%;">
                                                                                        </td>
                                                                                        <td><img src="assets/img/seguridad/YXo0ZDdOM0lZZWhCaE8yczcvZDdFZz09.png"
                                                                                                class="card p-2 card-seguridad-img"
                                                                                                data-action="registrar"
                                                                                                data-img="YXo0ZDdOM0lZZWhCaE8yczcvZDdFZz09.png"
                                                                                                style="width:100%; height:100%;">
                                                                                        </td>


                                                                                    </tr>

                                                                                </table>
                                                                                <!--- PREGUNTA 1 --->
                                                                                <label for="pregunta"><b>Pregunta
                                                                                        1:</b></label>
                                                                                <select class="form-control select2"
                                                                                    name="pregunta" id="preguntauno" style="width:200%;">
                                                                                    <option value="">...
                                                                                    </option>
                                                                                    <option
                                                                                        value="¿Cuál era el nombre de tu mejor amigo?">
                                                                                        ¿Cuál era el nombre
                                                                                        de tu mejor amigo?
                                                                                    </option>
                                                                                    <option
                                                                                        value="¿Cuál es tu color favorito?">
                                                                                        ¿Cuál es tu color
                                                                                        favorito?</option>
                                                                                    <option
                                                                                        value="¿Cómo se llama tu perro?">
                                                                                        ¿Cómo se llama tu
                                                                                        perro?</option>
                                                                                    <option value="¿Donde estudiaste?">
                                                                                        ¿Donde estudiaste?
                                                                                    </option>
                                                                                    <option value="¿Donde naciste?">
                                                                                        ¿Donde naciste?
                                                                                    </option>
                                                                                    <option value="¿Cuál es tu apodo?">
                                                                                        ¿Cuál es tu apodo?
                                                                                    </option>
                                                                                    <option
                                                                                        value="¿Segundo nombre de tu padre?">
                                                                                        ¿Segundo nombre de tu padre?
                                                                                    </option>
                                                                                    <option value="¿Dulce favorito?">
                                                                                        ¿Dulce Favorito?
                                                                                    </option>
                                                                                    <option value="¿Donde estudiaste?">
                                                                                        ¿Donde estudiaste?
                                                                                    </option>
                                                                                    <option value="¿Gatos o perros?">
                                                                                        ¿Gatos o perros?
                                                                                    </option>
                                                                                </select>
                                                                                <span class="errorPreguntauno"
                                                                                    style="color:red"></span>
                                                                            </div>

                                                                            <label
                                                                                for="respuesta"><b>Respuesta</b></label>
                                                                            <input type="text" class="form-control"
                                                                                name="respuestauno" id="respuestauno" style="width:200%;">
                                                                            <span class="errorrespuesta"
                                                                                style="color:red"></span>
                                                                        </div>

                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">

                                                            <!--ESTE BOTON ENVIA TODO!--->
                                                            <div class="modal-footer">
                                                                <button class=" btn btn-secondary" type="button"
                                                                    data-dismiss="modal">Cancelar</button>
                                                                <a class="EnviarUsuariosRegistrar btn btn-primary"
                                                                    href="#">Agregar</a>
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
    </div>


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
                                                        <input type="text" class="form-control-plaintext" disabled
                                                            name="nombre" id="nombre">

                                                    </div>
                                                    <div class="form-group col-sm-12 col-md-6">
                                                        <label for="apellido"><b>Apellido</b></label>
                                                        <input type="text" class="form-control-plaintext" disabled
                                                            name="apellido" id="apellido">

                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group col-sm-12 col-md-6">
                                                        <label for="cedula"><b>Cedula</b></label>
                                                        <input type="text" class="form-control-plaintext" disabled
                                                            name="cedula" id="cedula">

                                                    </div>
                                                    <div class="form-group col-sm-12 col-md-6">
                                                        <label for="username"><b>Usuario</b></label>
                                                        <input type="text" class="form-control-plaintext" disabled
                                                            name="username" id="username">

                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group col-sm-12 col-md-12">
                                                        <label for="rol"><b>Rol</b></label>
                                                        <select style="width: 100%;"
                                                            class="form-control-plaintext select2" disabled name="rol"
                                                            id="rol">
                                                            <option></option>
                                                            <?php foreach ($roles as $rols) : ?>
                                                            <?php if (!empty($rols['id_rol'])) : ?>
                                                            <option value="<?= $rols['id_rol'] ?>">
                                                                <?= $rols['nombre_rol'] ?></option>
                                                            <?php endif ?>
                                                            <?php endforeach ?>
                                                        </select>

                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="form-group col-sm-12 col-md-12">
                                                        <label for="correo"><b>Correo</b></label>
                                                        <input style="width: 100%;" type="email" class="form-control"
                                                            name="correo" id="correo" class="form-control-plaintext"
                                                            disabled placeholder="example@gmail.com">

                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button class=" btn btn-secondary" type="button"
                                                        data-dismiss="modal">Cerrar</button>
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
    <!-- MODULo de AYUDA -->

    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    <style type="text/css">
    .modal {
        font-size: 0.9em;
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
                                    En este modulo podrá visualizar los usuarios que están registrados en el sistema
                                    a su vez registrar, eliminar y modificar
                                    <br><br>
                                    1. Para eliminar un usuario seleccione "eliminar" situada a la derecha del
                                    usuario
                                    <br> <br>
                                    2. Para modificar un usuario seleccione "modificar" situada a izquierda del
                                    usuario
                                    <br><br>
                                    3. Para registrar un usuario seleccione "registrar" que se muestra en el lado
                                    inferior derecho de la tabla
                                    <br><br>
                                    4. Para volver al menu principal presione "volver" situado en la parte inferior
                                    derecha
                                    <br><br>
                                    5. Para cerrar esta ventana emergente y seguir con el sistema presione e
                                    "cerrar"
                                    <br><br>
                                    6. Para hacer una busqueda dentro del modulo debe ingresar el nombre completo
                                    del dato que desea Buscar.
                                </p>
                            </div>
                            <div class="modal-footer">
                                <button class=" btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- MODAL DE MODIFICAR-->
    <div class="modal fade" id="ModificarUsuarioModal" tabindex="-1" role="dialog" aria-hidden="true" value="<? const id = $usuario->id;  ?>
" style="padding:0;">
        <form id="modificarUsuario" method="POST">
            <input type="hidden" id="id_usuario" name="id_usuario">
            <div class="container">
                <div class="modal-dialog">
                    <div class="" role="document">
                        <div class="modal-content">
                            <div class="modal-header bg-primary" style="color:#FFF">
                                <h5 class="modal-title">
                                    <center>Modificar Usuario</center>
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
                                                        <input type="text" class="form-control" name="nombre"
                                                            id="nombre">
                                                        <span class="errorNombreM" style="color:red"></span>
                                                    </div>
                                                    <div class="form-group col-sm-12 col-md-6">
                                                        <label for="apellido"><b>Apellido</b></label>
                                                        <input type="text" class="form-control" name="apellido"
                                                            id="apellido">
                                                        <span class="errorApellidoM" style="color:red"></span>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group col-sm-12 col-md-6">
                                                        <label for="cedula"><b>Cedula</b></label>
                                                        <input type="text" class="form-control" name="cedula"
                                                            id="cedula">
                                                        <span class="errorCedulaM" style="color:red"></span>
                                                    </div>
                                                    <div class="form-group col-sm-12 col-md-6">
                                                        <label for="username"><b>Usuario</b></label>
                                                        <input type="text" class="form-control" name="username"
                                                            id="username">
                                                        <span class="errorUsernameM" style="color:red"></span>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group col-sm-12 col-md-12">
                                                        <label for="rol"><b>Rol</b></label>
                                                        <select style="width: 100%;" class="form-control select2"
                                                            disabled name="rol" id="rol">
                                                            <option></option>
                                                            <?php foreach ($roles as $rols) : ?>
                                                            <?php if (!empty($rols['id_rol'])) : ?>
                                                            <option value="<?= $rols['id_rol'] ?>">
                                                                <?= $rols['nombre_rol'] ?></option>
                                                            <?php endif ?>
                                                            <?php endforeach ?>
                                                        </select>
                                                     
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group col-sm-12 col-md-6">
                                                        <label for="Contraseña<"><b>Contraseña</b></label>
                                                        <input type="password" class="form-control" name="pass1"
                                                            id="pass1" value="<?= $value['pass1'] ?>"
                                                            placeholder="Ingrese su contraseña" required>
                                                        <span class="errorPassM" style="color:red"></span>
                                                    </div>
                                                    <br> <br>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group col-sm-12 col-md-12">
                                                        <label for="correo"><b>Correo</b></label>
                                                        <input style="width: 100%;" type="email" class="form-control"
                                                            name="correo" id="correo" value="<?= $value['correo'] ?>"
                                                            placeholder="example@gmail.com">
                                                        <span class="errorCorreoM" style="color:red"></span>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="form-group col-sm-12 col-md-12">
                                                        <label for="clave_especial"><b>Clave especial</b></label>
                                                        <input style="width: 50%;" type="password" class="form-control"
                                                            name="clave_especial" id="clave_especial"
                                                            placeholder="Introduce una clave especial"
                                                            value="<?= $value['clave_especial'] ?>">
                                                        <span class="errorClaveEM" style="color:red"></span>
                                                    </div>
                                                </div>
                                                <!-- MODAL DE PREGUNTAS DE SEGURIDAD-->
                                                <div id="pasodos">

                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header bg-secondary" style="color:#FFF">
                                                                <h5 id="exampleModalLabel">Preguntas de Seguridad</h5>
                                                                <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <a class="scroll-to-top rounded" href="#page-top">
                                                                    <i class="fas fa-angle-up"></i>
                                                                </a>
                                                                <style type="text/css">
                                                                .modal {
                                                                    font-size: 0.8em;
                                                                }
                                                                </style>
                                                                <div id="modificarUsuario" tabindex="-1" role="dialog"
                                                                    aria-hidden="true" style="padding:0;">
                                                                    <div class="container">
                                                                        <div>
                                                                            <div class="" role="document">
                                                                                <div>
                                                                                    <div>
                                                                                        <div class="row">
                                                                                            <div
                                                                                                class="form-group col-sm-12 col-md-6">
                                                                                                <div class="form__pr">
                                                                                                    <table
                                                                                                        class="table">
                                                                                                        <tr>
                                                                                                            <th>Imagen 1
                                                                                                            </th>
                                                                                                            <th>Imagen 2
                                                                                                            </th>
                                                                                                            <th>Imagen 3
                                                                                                            </th>
                                                                                                            <th>Imagen 4
                                                                                                            </th>

                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>

                                                                                                                <img src="assets/img/seguridad/eXgxR2trVEtzeXVueU9zdXBSRjNKZz09.png"
                                                                                                                    class="card p-2 card-seguridad-img"
                                                                                                                    data-action="modificar"  data-name="eXgxR2trVEtzeXVueU9zdXBSRjNKZz09.png"
                                                                                                                    data-img="eXgxR2trVEtzeXVueU9zdXBSRjNKZz09.png"
                                                                                                                    style="width:100%; height:100%;">
                                                                                                            </td>
                                                                                                            <td><img src="assets/img/seguridad/QVZqY3ZuempkRjNka1Bjc0NrcDVNdz09.png"
                                                                                                                    class="card p-2 card-seguridad-img"
                                                                                                                    data-action="modificar" data-name="QVZqY3ZuempkRjNka1Bjc0NrcDVNdz09.png"
                                                                                                                    data-img="QVZqY3ZuempkRjNka1Bjc0NrcDVNdz09.png"
                                                                                                                    style="width:100%; height:100%;">
                                                                                                            </td>
                                                                                                            <td><img src="assets/img/seguridad/ZHRlVlJGQloyZEZWVS9BY05LL0U5UT09.png"
                                                                                                                    class="card p-2 card-seguridad-img"
                                                                                                                    data-action="modificar" data-name="ZHRlVlJGQloyZEZWVS9BY05LL0U5UT09.png"
                                                                                                                    data-img="ZHRlVlJGQloyZEZWVS9BY05LL0U5UT09.png"
                                                                                                                    style="width:100%; height:100%;">
                                                                                                            </td>
                                                                                                            <td><img src="assets/img/seguridad/YXo0ZDdOM0lZZWhCaE8yczcvZDdFZz09.png"
                                                                                                                    class="card p-2 card-seguridad-img"
                                                                                                                    data-action="modificar" data-name="YXo0ZDdOM0lZZWhCaE8yczcvZDdFZz09.png"
                                                                                                                    data-img="YXo0ZDdOM0lZZWhCaE8yczcvZDdFZz09.png"
                                                                                                                    style="width:100%; height:100%;">
                                                                                                            </td>


                                                                                                        </tr>

                                                                                                    </table>

                                                                                                    <!--- PREGUNTA 1 --->
                                                                                                    <label
                                                                                                        for="pregunta"><b>Pregunta
                                                                                                            1:</b></label>
                                                                                                    <div
                                                                                                        class="form-group col-sm-12 col-md-12">

                                                                                                        <select
                                                                                                            class="form-control select2"
                                                                                                            name="pregunta"
                                                                                                            id="preguntauno" style="width:250%;">

                                                                                                            <option
                                                                                                                value="">
                                                                                                                ...
                                                                                                            </option>
                                                                                                            <option
                                                                                                                value="¿Cuál era el nombre de tu mejor amigo?">
                                                                                                                ¿Cuál
                                                                                                                era el
                                                                                                                nombre
                                                                                                                de tu
                                                                                                                mejor
                                                                                                                amigo?
                                                                                                            </option>
                                                                                                            <option
                                                                                                                value="¿Cuál es tu color favorito?">
                                                                                                                ¿Cuál es
                                                                                                                tu
                                                                                                                color
                                                                                                                favorito?
                                                                                                            </option>
                                                                                                            <option
                                                                                                                value="¿Cómo se llama tu perro?">
                                                                                                                ¿Cómo se
                                                                                                                llama tu
                                                                                                                perro?
                                                                                                            </option>
                                                                                                            <option
                                                                                                                value="¿Donde estudiaste?">
                                                                                                                ¿Donde
                                                                                                                estudiaste?
                                                                                                            </option>
                                                                                                            <option
                                                                                                                value="¿Donde naciste?">
                                                                                                                ¿Donde
                                                                                                                naciste?
                                                                                                            </option>
                                                                                                            <option
                                                                                                                value="¿Cuál es tu apodo?">
                                                                                                                ¿Cuál es
                                                                                                                tu
                                                                                                                apodo?
                                                                                                            </option>
                                                                                                            <option
                                                                                                                value="¿Segundo nombre de tu padre?">
                                                                                                                ¿Segundo
                                                                                                                nombre
                                                                                                                de tu
                                                                                                                padre?
                                                                                                            </option>
                                                                                                            <option
                                                                                                                value="¿Dulce favorito?">
                                                                                                                ¿Dulce
                                                                                                                Favorito?
                                                                                                            </option>
                                                                                                            <option
                                                                                                                value="¿Donde estudiaste?">
                                                                                                                ¿Donde
                                                                                                                estudiaste?
                                                                                                            </option>
                                                                                                            <option
                                                                                                                value="¿Gatos o perros?">
                                                                                                                ¿Gatos o
                                                                                                                perros?
                                                                                                            </option>
                                                                                                        </select>
                                                                                                        <span
                                                                                                            class="errorPreguntauno"
                                                                                                            style="color:red"></span>
                                                                                                    </div>

                                                                                                    <label
                                                                                                        for="respuesta"><b>Respuesta</b></label>
                                                                                                    <input type="text"
                                                                                                        class="form-control"
                                                                                                        name="respuestauno"
                                                                                                        id="respuestauno" style="width:200%;">
                                                                                                    <span
                                                                                                        class="errorrespuesta"
                                                                                                        style="color:red"></span>
                                                                                                </div>

                                                                                            </div>
                                                                                        </div>

                                                                                    </div>
                                                                                </div>
                                                                                <div class="modal-footer">

                                                                                    <!--ESTE BOTON ENVIA TODO!--->
                                                                                    <div class="modal-footer">
                                                                                        <button
                                                                                            class=" btn btn-secondary"
                                                                                            type="button"
                                                                                            data-dismiss="modal">Cancelar</button>
                                                                                        <a class="ModificarUsuarios btn btn-primary"
                                                                                            href="#">Agregar</a>
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
        </form>

        <script type="text/javascript" src="'../../assets/js/select2.min.js"></script>
</body>
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