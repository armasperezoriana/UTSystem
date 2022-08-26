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
                        <h1 class="h3 mb-0 text-gray-800"><center>NOTIFICACIONES</center></h1>
                        <!-- <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generar Reportes</a> -->
                    </div>

                    <div class="container-fluid">

                        <!-- LEYENDA DEL el MODULO -->
                        <p class="mb-4">Alertas registradas segun la fecha correspondiente y el kilometraje de cada vehiculo<a target="_blank">
                            </a></p>

                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <center>
                                    <h6 class="m-0 font-weight-bold text-primary"> NOTIFICACIONES DE MANTENIMIENTOS</h6>
                                </center>
                            </div>
                        </div>
             

         <!-- MODAL DE CONSULTAR-->

        
         <div class="table-responsive">
                        <div class="card-body" style='background:;'>
                            <div class="row" style='font-size:0.9em;'>
                                <table class="table table-striped datatable col-sm-12" id="" >
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Fecha</th>
                                            <th>Titulo</th>
                                            <th>Contenido</th>
                                             <th></th>
                                             <th><center>Estado</center></th>
                                            
                                              
                                        </tr>
                                    </thead>
                          
                                    <tbody>
                                        <?php foreach ($notificaciones as $value): ?>
                                            <?php if (!empty($value['id_notificacion'])): ?>
                                        <tr onclick='individualModal(`<?php echo json_encode($value) ?>`);'>
                                             <td><?=$value['id_notificacion']?></td>
                                            <td><?=$value['fecha']?></td>
                                            <td><?=$value['titulo']?></td>
                                            <td><?=$value['contenido']?></td>
                                            <td></td>
                                            <td>
 
                               <div class="col-sm-7" style='text-align:right;'>
                                                            <?php if ($value['estado'] == 1) { ?>
                                                                <a href="#" data-id="<?= $value['id_notificacion'] ?>" class="btn btn-success btn-icon-split inhabilitar" data-toggle="modal" data-target="">
                                                                    <span class="icon-check-white-50">
                                                                        <i class="fas fa-check "></i>
                                                                    </span>
                                                                    <span class="text">Generada</span>
                                                                </a>
                                                            <?php } else { ?>
                                                                <a href="#" data-id="<?= $value['id_notificacion'] ?>" class="btn btn-outline-info btn-icon-split habilitar
                                                                    " data-toggle="modal" data-target="">
                                                                    <span class="icon text-info-50">
                                                                        <i class="fas fa-sign-out-alt"></i>
                                                                    </span>
                                                                    <span class="text">En proceso</span>
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

                </div>  

            <?php require_once 'view/assets/footer.php'; ?>
                <!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="notificacion_individual" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header bg-primary" style="color:#FFF">
        <h5 class="modal-title" id="exampleModalLabel">Notificación</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="row">
      <div class="form-group col-sm-12">
                           <label><b>Fecha</b></label>
                           <input type="date"  class="form-control" id="fecha" placeholder="fecha" disabled/>
                        <span class="errorFecha" style="color:red"></span>

                           <label><b>Contenido<b></label>
                           <textarea  class="form-control" rows="4" id="contenido" placeholder="contenido" disabled></textarea>
                        <span class="errorFecha" style="color:red"></span>


                           <label>Estado</label>
                         
                        <span class="errorFecha" style="color:red"></span>
                        
                        <input type="text"  class="form-control" id="estado" placeholder="estado" disabled/>
                    
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary">Aceptar</button>
      </div>
    </div>
  </div>
</div>

</body>


</html>