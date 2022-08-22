<?php
use content\config\conection\database as database;

$mysqli = new mysqli("localhost", "root", "", "ut");

//$query = prepare("SELECT * FROM usuarios");
//$query->bindParam("correo",$correo, PDO::PARAM_STR);
//$query->bindParam("contrasena", $contrasena, PDO::PARAM_STR);
  //  $query->execute();
    //$registro = $query->fetch(FETCH_ASSOC);

//    print_r($registro);


?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SUT - Login</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<?php echo _ROUTE_ ?>/assets/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary"
    style="display:flex;background-image: url(<?php echo _ROUTE_ ?>/assets/img/fondoUT.jpg);background-size: cover;">
    <div class="container" style="margin-top:auto;margin-bottom:auto">
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div id="login" class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">

                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-"> <img src="assets/img/logo.png"
                                    style="width: 300px;display: flex;margin-top: 73px;margin-left: auto;margin-bottom: auto;margin-right: auto;"
                                    class="img"> </div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Bienvenido al sistema UT</h1>
                                    </div>
                                    <form class="user" id="formLogin" method="POST">
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="exampleInputEmail" name="username" aria-describedby="emailHelp"
                                                placeholder="Ingresa tu Usuario..." required>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user" id="pass"
                                                name="pass" placeholder="Contraseña" required>
                                            <center>
                                                <button id="show_password" class="btn btn-primary"
                                                    style="position: absolute;top: 40%; width:40px; height:40px; right:15%;"
                                                    type="button" onclick="mostrarPassword()"> <span
                                                        class="fa fa-eye-slash icon password"></span> </button>
                                                <div class="input-group-append">

                                                </div>
                                                <div class="form-group">

                                                </div>
                                                <button class="btn btn-primary btn-user btn-block">
                                                    Iniciar Sesión
                                                </button>
                                                <hr>

                                    </form>

                                    <hr>
                                    <div class="text-center">
                                        <input type="hidden" name="token-r" id="token-r">
                                        <input type="button" value="Recuperar" onclick="Mostrar()"
                                            class="btn btn-secondary" />

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
    <!-- MODAL DE RECUPERAR-->

    <div class="modal-dialog" style="display:none" id="recuperar" role="document"
        style="position: relative;top: 100%; width:400%; height:800%; right:8%;">
        <div class="modal-content">
            <div class="modal-header">
                <center>
                    <h5>Recuperar Cuenta</h5>
                </center>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="Ocultar()">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-2">
                        ¿Olvidaste tu clave?</h1>
                    <p class="mb-4">Restauremos tu cuenta!. Para eso necesitaremos ingreses el correo que registraste en
                        el sistema</p>
                </div>
                <form class="recuperar" id="recuperar">
                    <input type="hidden" id="id_usuario" name="id_usuario">
                    <div class="form-group">


                        <input type="email" class="form-control form-control-email" required id="correo"
                            aria-describedby="emailHelp" placeholder="Ingresa el correo asociado a tu cuenta..">
                        <br>
                        <button class="btn btn-secondary btn-user btn-block" type="submit">
                            Recuperar
                        </button>
                     
                    </div>

                </form>
                <hr>
                <br> <br>
                <div class="text-center">
                    <a class="small" onclick="Ocultar()">¿Ya tienes una? Inicia Sesion!</a>
                </div>

            </div>
        </div>
    </div>


    <!-- Modal content-->
    <div class="modal-content" style="display:none">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title"></h4>
        </div>
        <div class="modal-body">
            <center>
                <p>
                <h4><b>Seleccione su imagen de seguridad</b></h4>
                </p>
            </center>
        </div>
        <div class="container">
            <div>
                <div class="" role="document">
                    <TABLE >
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
                        <TR>
                           
                            <TD><img src="assets/img/seguridad/QVZqY3ZuempkRjNka1Bjc0NrcDVNdz09.png"
                                    class="card p-2 card-seguridad-img" data-action="modificar"
                                    data-img="QVZqY3ZuempkRjNka1Bjc0NrcDVNdz09.png" style="width:100%; height:100%;">
                            </TD>
                            <TD><img src="assets/img/seguridad/ZHRlVlJGQloyZEZWVS9BY05LL0U5UT09.png"
                                    class="card p-2 card-seguridad-img" data-action="modificar"
                                    data-img="ZHRlVlJGQloyZEZWVS9BY05LL0U5UT09.png" style="width:100%; height:100%;">
                            </td>
                            </TD>
                            <TD><img src="assets/img/seguridad/YXo0ZDdOM0lZZWhCaE8yczcvZDdFZz09.png"
                                    class="card p-2 card-seguridad-img" data-action="modificar"
                                    data-img="YXo0ZDdOM0lZZWhCaE8yczcvZDdFZz09.png" style="width:100%; height:100%;">
                            </TD>
                            <TD> <img src="assets/img/seguridad/eXgxR2trVEtzeXVueU9zdXBSRjNKZz09.png"
                                    class="card p-2 card-seguridad-img" data-action="modificar"
                                    data-img="eXgxR2trVEtzeXVueU9zdXBSRjNKZz09.png" style="width:60%; height:50%; position:;">
                            </TD>
                        </TR>
                    <br><br>
                    <!--- PREGUNTA 1 --->
            </div>
            </table>
            <label for="pregunta"><b>Pregunta
                            1:</b></label>
                    <div class="form-group col-sm-12 col-md-12">
                        <select class="form-control select2" name="pregunta" id="preguntauno">

                            <option value="">
                                ...
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
                        <span class="errorPreguntauno" style="color:red"></span>
                    </div>

                    <label for="respuesta"><b>Respuesta</b></label>
                    <input type="text" class="form-control" name="respuestauno" id="respuestauno">
                    <span class="errorrespuesta" style="color:red"></span>
                </div>
        </div>

    </div>
    <div class="modal-footer">

        <button class=" btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
        <a class="ModificarUsuarios btn btn-primary" href="#">Verificar</a>
    </div>
    </div>
    </div>
    </div>

    </div>
    </div>




    <!-- Bootstrap core JavaScript-->
    <script src="view/vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="https://www.google.com/recaptcha/api.js?render=6Lenol0aAAAAAL58P1eQFRe6yfLmR8EEDBnXe4P_"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
    <script src="view/vendor/plugins/sweetalert/sweet-alert.js"></script>
    <script type="text/javascript" src="'../../assets/js/login/login.js"></script>
    <script type="text/javascript" src="'../../assets/js/usuario/validacion.js"></script>

    <script type="text/javascript" src="'../../assets/js/login/recuperar.js"></script>
</body>



</html>