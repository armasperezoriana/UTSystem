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
                        <p class="mb-4">Gestión de seguridad módulo de preguntas y respuestas adicionando la imagen de seguridad de cada usuario. Estas preguntas son secretas y necesarias para recuperar el usuario
                            </a></p>

                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <center>
                                    <div class="modal-header bg-primary" style="color:#FFF">
                                        <h5 id="exampleModalLabel">Preguntas de Seguridad</h5>

                                    </div>
                                </center>
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
            <div id="AgregarUsuarioModal" tabindex="-1" role="dialog" aria-hidden="true" style="padding:0;">
                <div class="container">
                    <div>
                        <div class="" role="document">
                            <div>


                                <div>
                                    <div class="row">
                                        <div class="form-group col-sm-12 col-md-6">
                                            <div class="form__pr">
                                            <!--- PREGUNTA 1 --->
                                                    <label for="pregunta"><b>Pregunta 1:</b></label>
                                                    <select class="form-control select2" name="pregunta" id="preguntauno">
                                                        <option value="">...</option>
                                                        <option value="¿Cuál era el nombre de tu mejor amigo?">¿Cuál era el nombre de tu mejor amigo?
                                                        </option>
                                                        <option value="¿Cuál es tu color favorito?">¿Cuál es tu color favorito?</option>
                                                        <option value="¿Cómo se llama tu perro?">¿Cómo se llama tu perro?</option>

                                                    </select>
                                                    <span class="errorPreguntauno" style="color:red"></span>
                                                </div>

                                                <label for="respuesta"><b>Respuesta</b></label>
                                                <input type="text" class="form-control" name="respuestauno" id="respuestauno">
                                                <span class="errorrespuesta" style="color:red"></span>
                                            </div>
                                            


                                            <!--- PREGUNTA 2 --->
                                            <br><br>
                                            <div class="form-group col-sm-12 col-md-6">
                                            <label for="pregunta2"><b>Pregunta 2:</b></label>
                                            <select class="form-control select2" name="preguntados" id="preguntados">
                                                <option value="">...</option>
                                                <option value="¿Donde estudiaste?">¿Donde estudiaste?</option>
                                                <option value="¿Donde naciste?">¿Donde naciste?</option>
                                                <option value="¿Cuál es tu apodo?">¿Cuál es tu apodo?</option>

                                            </select>
                                            <span class="errorPreguntados" style="color:red"></span>
                                            
                                        
                                            <label for="respuesta"><b>Respuesta</b></label>
                                            <input type="text" class="form-control" name="respuestados" id="respuestados">
                                            <span class="errorrespuesta" style="color:red"></span>
                                            </div>
                                    </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-sm-12 col-md-6">
                                            <div class="form__box">
                                            <!--- PREGUNTA 3 --->
                                                    <label for="pregunta"><b>Pregunta 3:</b></label>
                                                    <select class="form-control select2" name="preguntatres" id="preguntatres">
                                                        <option value="">...</option>
                                                        <option value="¿Pelicula favorita?">¿Pelicula favorita?
                                                        </option>
                                                        <option value="¿Comida que te recuerda a tu hogar?">¿Comida que te recuerda a tu hogar?</option>
                                                        <option value="¿Segundo nombre de tu padre?">¿Segundo nombre de tu padre?</option>

                                                    </select>
                                                    <span class="errorPreguntatres" style="color:red"></span>
                                                </div>

                                                <label for="respuesta"><b>Respuesta</b></label>
                                                <input type="text" class="form-control" name="respuestatres" id="respuestatres">
                                                <span class="errorRespuesta" style="color:red"></span>
                                            </div>
                                    </div>


                                    <div class="modal-footer">
                                
                                        <a class="EnviarPreguntasRegistrar btn btn-primary" href="#">Guardar respuestas</a>
                                        <button class=" btn btn-secondary" type="button"
                                            data-dismiss="modal">Cancelar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                           
            <!-- footer-->

                <?php require_once 'view/assets/footer.php'; ?>
            </div>

</body>
<script type="text/javascript" src="'../../assets/js/esteganografia/enviardatos.js"></script>


</html>