
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
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<?php echo _ROUTE_ ?>/assets/css/sb-admin-2.min.css" rel="stylesheet">

</head>
<body class="bg-gradient-primary" style="display:flex;background-image: url(<?php echo _ROUTE_ ?>/assets/img/fondoUT.jpg);background-size: cover;">
   <div class="container" style="margin-top:auto;margin-bottom:auto">

        
        <div class="row justify-content-center" >

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div id="login" class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                       
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-"> <img src="assets/img/logo.png" style="width: 300px;display: flex;margin-top: 73px;margin-left: auto;margin-bottom: auto;margin-right: auto;" class="img"> </div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Bienvenido al sistema UT</h1>
                                    </div>
                                    <form class="user" id="formLogin" method="POST">
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user" id="exampleInputEmail" name="username" aria-describedby="emailHelp" placeholder="Ingresa tu Usuario..." required>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user" id="pass" name="pass" placeholder="Contraseña" required>
                                            <center>
                                                <button id="show_password" class="btn btn-primary" style="position: absolute;top: 40%; width:40px; height:40px; right:15%;" type="button"  onclick="mostrarPassword()"> <span class="fa fa-eye-slash icon password"></span> </button>
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
                                            <input type="button" value="Recuperar" onclick="Mostrar()" class="btn btn-secondary"/>

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

<div class="modal-dialog" style="display:none" id="recuperar" role="document" style="position: relative;top: 100%; width:400%; height:800%; right:8%;"> 
    <div class="modal-content">
      <div class="modal-header">
        <center><h5>Recuperar Cuenta</h5></center>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="Ocultar()">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-2">
                                        ¿Olvidaste tu clave?</h1>
                                          <p class="mb-4">Restauremos tu cuenta!. Para eso necesitaremos algunos datos</p>
                                    </div>
                                    <form class="recuperar" id="recuperar">
                                        <div class="form-group">
                                            <label>Ingresa tu usuario</label>
                                          <input type="text" class="form-control form-control-user" required
                                                id="username" aria-describedby="emailHelp"
                                                placeholder="Ingresa tu usuario asociado a tu cuenta..">
                                                <br>
                                                <br>
                                                <input type="text" class="form-control form-control-email" required
                                                id="correo" aria-describedby="emailHelp"
                                                placeholder="Ingresa el correo asociado a tu cuenta..">
                                                <br>
                                                <button class="btn btn-secondary btn-user btn-block">
                                            Recuperar
                                        </button>

                                            </div>
                                         
                                    </form>
                                    <hr>
                                    <br>  <br> 
                                    <div class="text-center">
                                        <a class="small" onclick="Ocultar()">¿Ya tienes una? Inicia Sesion!</a>
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

 <script type="text/javascript" src="'../../assets/js/login/olvido.js"></script>

</body>



</html>


