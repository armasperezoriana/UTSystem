

<!DOCTYPE html>
<html lang="en">

<head>
    <title><?php echo _NAMESYSTEM_; ?> | <?php if (!empty($action)) {
                                                echo $action;
                                            } ?> <?php if (!empty($url)) {
                                                        echo $url;
                                                    } ?></title>

<link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                        <p class="mb-4">En este módulo podrá visualizar los roles y permisologias de los usuarios <a target="_blank">
                            </a></p>

                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <center>
                                    <h6 class="m-0 font-weight-bold text-primary">Módulo de Gestión Roles</h6>
                                </center>
                            
                            <center> <img src="assets/img/usuario1.png" class="img-profile" width="20%"  right="400%" > </center> 
                        
                        <span class="icon text-white-50">
                            <i class="fas fa-check"></i>
                        </span>
                        <a href="#" class="btn btn-success btn-icon-split" data-target="#AgregarUsuarioModal" data-toggle="modal" data-target="#AgregarUsuarioModal">
                            <span class="icon text-white-50">
                                <i class="fas fa-plus"></i>
                            </span>
                            <span class="text">Rol</span>

                                                </a>
                                                         
                                    
            
                    </div>
                    <br>
                    <div class="table-responsive">
                        <div class="card-body" style='background:;'>
                            <div class="row" style='font-size:0.9em;'>
                                <table class="table table-striped datatable col-sm-12" id="">
                                    <thead>
                                        <tr>
                                            <th>Identificador</th>
                                            <th>Rol</th>
                                            <th>Descripción</th>
                                        
                                            <th></th>
                                            <th></th>
                                            <th>Acciones</th>
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
                                                   
                                                    <td>

                                                    
                                                    </td>
                                                    <td>
                                                          <div class="col-sm-7" style='text-align:right;'>

                                                            <a href="#" data-id="<?= $rols['id_rol'] ?>" class="btn btn-info btn-icon-split consultar" name="consultar" >

            
                                                                <span class="icon text-white-50">
                                                                    <i class="fas fa-search"></i>
                                                                </span>
                                                                <span class="text"></span>
                                                            </a>
                                                        </div>
                                                        


                                                    </td>
                                                      <td>

                                                          <div class="col-sm-7" style='text-align:right;'>

                                                            <a href="#" data-id="<?= $rols['id_rol'] ?>" class="btn btn-warning btn-icon-split editar" name="editar" >
                                                                <span class="icon text-white-50">
                                                                    <i class="fas fa-edit"></i>
                                                                </span>
                                                                <span class="text"></span>
                                                            </a>
                                                        </div>

                                                    </td>
                                                    <td>
                                                        <div class="col-sm-7" style='text-align:right;'>
                                                            <?php if ($rols['status'] == 1) { ?>
                                                                <a href="#" data-id="<?= $rols['id_rol'] ?>" class="btn btn-danger btn-icon-split inhabilitar" data-toggle="modal" data-target="">
                                                                    <span class="icon text-white-50">
                                                                        <i class="fas fa-trash"></i>
                                                                    </span>
                                                                    <span class="text"></span>
                                                                </a>
                                                            <?php } else { ?>
                                                                <a href="#" data-id="<?= $rols['id_rol'] ?>" class="btn btn-outline-info btn-icon-split habilitar
                                                                    " data-toggle="modal" data-target="">
                                                                    <span class="icon text-info-50">
                                                                        <i class="fas fa-trash-alt"></i>
                                                                    </span>
                                                                    <span class="text"></span>
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

                <div class="col-sm-7" style='text-align:right;'>
                <span class="btn btn-primary" href="#" data-toggle="modal" data-target="#AyudaModalddddddd">
                    Ayuda
                </span>
                        
            <!-- End of Content Wrapper -->
        </div>

       
        <?php require_once 'view/assets/footer.php'; ?>



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
                <input type="hidden" id="id_rol" name="id_rol">
                    <div class="" role="document">
                        <div class="modal-content">
                            <div class="modal-header bg-primary" style="color:#FFF">
                                <h5 class="modal-title" id="exampleModalLabel">Datos del Rol</h5>
                                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                     <div class="form-group col-sm-12 col-md-6">
                                        <label for="nombreRol"><b>Nombre del Rol</b></label>
                                        <input type="text" class="form-control" name="nombre_rol" id="nombre_rol" minlength="4" >
                                        <input type="hidden" class="form-control" id="id_rol" name="id_rol">
                                        <span class="errorNombre" style="color:red"></span>
                                    </div>
                                <div class="form-group col-sm-12 col-md-6">
                                        <label for="descripcion"><b>Descripcion</b></label>
                                        <input type="text" class="form-control" name="descripcion" id="descripcion">
                                        <span class="errorDescripcion" style="color:red"></span>
                                    </div>
                        
                                </div>
                            

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


          <!-- PERMISOS -->
       
        <div class="modal fade bd-example-modal-xl" id="PermisosRolModal" tabindex="-1" role="dialog" aria-hidden="true" style="padding:0;" data-targer=".bd-example-modal-xl">
            <div class="container">
                  <form action id="PermisosRolForm" method="POST">
                <input type="hidden" id="id_rol" name="id_rol">
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

                                     <div class="form-group col-sm-12 col-md-12">
                                  <div class="form-group col-sm-12 col-md-8">
                                        <label for="nombreRol"><b>Nombre del Rol</b></label>
                                        <input type="text" class="form-control" name="nombre_rol" id="nombre_rol" disabled>
                                    </div>
                                            <div class="form-group col-sm-12 col-md-10">
                                        <label for="descripcion"><b>Descripcion</b></label>
                                        <input type="text" class="form-control" name="descripcion" id="descripcion" disabled>
                                       
                                    </div>
                                </div>
                                    <table class="table table-responsive table-striped">
                                    <thead>
                                        <tr>
                                            <th>Modulo</th>
                                              <th>Consultar</th>
                                            <th>Registrar</th>
                                            <th>Modificar</th>
                                            <th>Eliminar</th>

                        
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Usuarios</td>
                                            <td><input type="checkbox" name="permisos[]" id="customCheck1" value="1"></td>
                                                  <td><input type="checkbox" name="permisos[]" id="customCheck1" value="2"></td>
                                                     <td><input type="checkbox" name="permisos[]" id="customCheck1" value="3"></td>

                                            <td><input type="checkbox" name="permisos[]" id="customCheck1" value="4"></td>
                                              <td></td>

                        
                                        </tr>
                                        <tr>
                                            <td>Vehiculos</td>
                                            <td><input type="checkbox" name="permisos[]" id="customCheck2" value="5"></td>
                                               <td><input type="checkbox" name="permisos[]" id="customCheck2" value="6"></td>
                                        
                                            <td><input type="checkbox" name="permisos[]" id="customCheck2" value="8"></td>
                                        

                                            <td><input type="checkbox" name="permisos[]" id="customCheck2" value="7"></td>
                                            
                                        </tr>
                                        <tr>
                                            <td>Chofer</td>
                                             <td><input type="checkbox" name="permisos[]" id="customCheck3" value="9"></td>
                                               <td><input type="checkbox" name="permisos[]" id="customCheck3" value="10"></td>
                                                  <td><input type="checkbox" name="permisos[]" id="customCheck3" value="11"></td>


                                            <td><input type="checkbox" name="permisos[]" id="customCheck3" value="12"></td>

                                        </tr>
                                          <tr>
                                            <td>Ruta</td>
                                            <td><input type="checkbox" name="permisos[]" id="customCheck4" value="13"></td>
                                              <td><input type="checkbox" name="permisos[]" id="customCheck4" value="14"></td>


                                            <td><input type="checkbox" name="permisos[]" id="customCheck4" value="15"></td>
                                              <td><input type="checkbox" name="permisos[]" id="customCheck4" value="16"></td>

                                        </tr>
                                          <tr>
                                            <td>Taller</td>
                                            <td><input type="checkbox" name="permisos[]" id="customCheck5" value="18"></td>
                                             <td><input type="checkbox" name="permisos[]" id="customCheck5" value="19"></td>
                                                  <td><input type="checkbox" name="permisos[]" id="customCheck5" value="21"></td>
                                              <td><input type="checkbox" name="permisos[]" id="customCheck5" value="20"></td>
                                        </tr>
                                        <tr>
                                            <td>Mantenimiento</td>
                                            <td><input type="checkbox" name="permisos[]" id="customCheck6" value="22"></td>
                                         <td><input type="checkbox" name="permisos[]" id="customCheck6" value="23"></td>
                                                  <td><input type="checkbox" name="permisos[]" id="customCheck6" value="24"></td>


                                            <td><input type="checkbox" name="permisos[]" id="customCheck6" value="25"></td>
                                        
                                        </tr>
                                         <tr>
                                            <td>Seguridad</td>
                                            <td><input type="checkbox" name="permisos[]" id="customCheck7" value="26"></td>
                                             <td><input type="checkbox" name="permisos[]" id="customCheck7" value="27"></td>


                                            <td><input type="checkbox" name="permisos[]" id="customCheck7" value="28"></td>
                                              <td><input type="checkbox" name="permisos[]" id="customCheck7" value="29"></td>

                                        </tr>
                                         <tr>
                                            <td>Reportes</td>
                                            <td><input type="checkbox" name="permisos[]" id="customCheck8" value="30"></td>
                                                  <td></td>


                                            <td></td>
                                              <td></td>

    
                                        </tr>
                                    </tbody>
                                </table>
                                                    <div class="modal-footer">
                                                        <button class=" btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                                                        <a class="ModificarPermiso btn btn-primary" href="#">Modificar Permisos</a>
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

                

            
  <!-- MODAL DE CONSULTAR-->
         
        <div class="modal fade" id="ConsultarRolModal" tabindex="-1" role="dialog" aria-hidden="true" value="<? const id = $rol->id;  ?>
" style="padding:0;">
            <form id="consultarRol" method="POST">
                <input type="hidden" id="id_rol" name="id_rol">
                <div class="container">
                    <div class="modal-dialog">
                        <div class="" role="document">
                            <div class="modal-content">
                                <div class="modal-header bg-primary" style="color:#FFF">
                                    <h5 class="modal-title">
                                        <center>Consultar Rol</center>
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

                                                            <label for="nombre"><b>Nombre Rol</b></label>
                                                            <input type="text" class="form-control-plaintext" disabled name="nombre_rol" id="nombre_rol">
                                                           
                                                        </div>
                                                        <div class="form-group col-sm-12 col-md-12">
                                                            <label for="descripcion"><b>Descripcion</b></label>
                                                            <input type="text" class="form-control-plaintext" disabled name="descripcion" id="descripcion">
                                                           
                                                        </div>
                                                    </div>
                                                  
                                                    <div>
                                                    <label for="descripcion"><b>Listado de permisos</b></label>
                                                        <ul id="listaPermisos" class="m-2 p-2">
                                                        </ul>
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


  <!-- MODAL DE MODIFICAR-->
          
        <div class="modal fade" id="ModificarRolModal" tabindex="-1" role="dialog" aria-hidden="true" style="padding:0;">
            <form id="modificarRol" method="POST">
                <input type="hidden" id="id_rol" name="id_rol">
                <div class="container">
                    <div class="modal-dialog">
                        <div class="" role="document">
                            <div class="modal-content">
                                <div class="modal-header bg-primary" style="color:#FFF">
                                    <h5 class="modal-title">
                                        <center>Modificar Rol</center>
                                         </div>
                                     <div class="form-group col-sm-12 col-md-12">
                                  <div class="form-group col-sm-12 col-md-8">
                                        <label for="nombre_rol"><b>Nombre del Rol</b></label>
                                        <input type="text" class="form-control" name="nombre_rol" id="nombre_rol">
                                        <span class="errorNombre" style="color:red"></span>
                                    </div>
                                            <div class="form-group col-sm-12 col-md-10">
                                        <label for="descripcion"><b>Descripcion</b></label>
                                        <input type="text" class="form-control" name="descripcion" id="descripcion">
                                        <span class="errorDescripcion" style="color:red"></span>
                                    </div>
                                </div>
                                    <table class="table table-responsive table-striped">
                                    <thead>
                                        <tr>
                                            <th>Modulo</th>
                                              <th>Consultar</th>
                                            <th>Registrar</th>
                                            <th>Modificar</th>
                                            <th>Eliminar</th>

                        
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Usuarios</td>
                                            <td><input type="checkbox" name="permisos[]" id="customCheck1" value="1"></td>
                                                  <td><input type="checkbox" name="permisos[]" id="customCheck1" value="2"></td>
                                                     <td><input type="checkbox" name="permisos[]" id="customCheck1" value="3"></td>

                                            <td><input type="checkbox" name="permisos[]" id="customCheck1" value="4"></td>
                                              <td></td>

                        
                                        </tr>
                                        <tr>
                                            <td>Vehiculos</td>
                                            <td><input type="checkbox" name="permisos[]" id="customCheck2" value="5"></td>
                                               <td><input type="checkbox" name="permisos[]" id="customCheck2" value="6"></td>
                                        
                                            <td><input type="checkbox" name="permisos[]" id="customCheck2" value="8"></td>
                                        

                                            <td><input type="checkbox" name="permisos[]" id="customCheck2" value="7"></td>
                                            
                                        </tr>
                                        <tr>
                                            <td>Chofer</td>
                                             <td><input type="checkbox" name="permisos[]" id="customCheck3" value="9"></td>
                                               <td><input type="checkbox" name="permisos[]" id="customCheck3" value="10"></td>
                                                  <td><input type="checkbox" name="permisos[]" id="customCheck3" value="11"></td>


                                            <td><input type="checkbox" name="permisos[]" id="customCheck3" value="12"></td>

                                        </tr>
                                          <tr>
                                            <td>Ruta</td>
                                            <td><input type="checkbox" name="permisos[]" id="customCheck4" value="13"></td>
                                              <td><input type="checkbox" name="permisos[]" id="customCheck4" value="14"></td>


                                            <td><input type="checkbox" name="permisos[]" id="customCheck4" value="15"></td>
                                              <td><input type="checkbox" name="permisos[]" id="customCheck4" value="16"></td>

                                        </tr>
                                          <tr>
                                            <td>Taller</td>
                                            <td><input type="checkbox" name="permisos[]" id="customCheck5" value="18"></td>
                                             <td><input type="checkbox" name="permisos[]" id="customCheck5" value="19"></td>
                                                  <td><input type="checkbox" name="permisos[]" id="customCheck5" value="21"></td>
                                              <td><input type="checkbox" name="permisos[]" id="customCheck5" value="20"></td>
                                        </tr>
                                        <tr>
                                            <td>Mantenimiento</td>
                                            <td><input type="checkbox" name="permisos[]" id="customCheck6" value="22"></td>
                                         <td><input type="checkbox" name="permisos[]" id="customCheck6" value="23"></td>
                                                  <td><input type="checkbox" name="permisos[]" id="customCheck6" value="24"></td>


                                            <td><input type="checkbox" name="permisos[]" id="customCheck6" value="25"></td>
                                        
                                        </tr>
                                         <tr>
                                            <td>Seguridad</td>
                                            <td><input type="checkbox" name="permisos[]" id="customCheck7" value="26"></td>
                                             <td><input type="checkbox" name="permisos[]" id="customCheck7" value="27"></td>


                                            <td><input type="checkbox" name="permisos[]" id="customCheck7" value="28"></td>
                                              <td><input type="checkbox" name="permisos[]" id="customCheck7" value="29"></td>

                                        </tr>
                                         <tr>
                                            <td>Reportes</td>
                                            <td><input type="checkbox" name="permisos[]" id="customCheck8" value="30"></td>
                                                  <td></td>


                                            <td></td>
                                              <td></td>

    
                                        </tr>
                                    </tbody>
                                </table>
                            
                                                             <div class="modal-footer">
                                                        <button class=" btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                                                        <button class="ModificarPermiso btn btn-primary" type="submit">Modificar Permisos</button>
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
                                      En este modulo podrá visualizar los roles registrados en el sistema y registrar, eliminar y modificar. Estos roles son permitirán al usuario tener acceso total, solo lectura o tener acceso denegado a un modulo o conjunto de modulos
                  <br><br>
                  1. Para eliminar un rol seleccione "eliminar" situada a la derecha del rol del lado derecho de "modificar"
                  <br> <br>
                  2. Para modificar nombre y descripción de un rol seleccione "modificar" 
                  <br><br>
                  3. Para modificar los permisos asociados a un rol seleccione "permisos" situada a izquierda del rol al lado derecho de "eliminar"
                  <br><br>
                  4. Para registrar un rol seleccione "registrar" una vez dentro deberá llenar las casillas de nombre de rol, descripcion y seleccionar los permisos asignados ese rol con respecto a cada modulo 
                  <br><br>
                  5. Para volver al menu principal presione "volver" situado en la parte inferior derecha
                  <br><br>
                  6. Para cerrar esta ventana emergente y seguir con el sistema presione e "cerrar"
                  <br><br>
                  7. Para hacer una busqueda dentro del modulo debe ingresar el nombre completo del dato que desea buscar

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
<script type="text/javascript" src="'../../assets/js/roles/validacion.js"></script>


</html>
