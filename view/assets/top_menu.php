
<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

    <!-- Sidebar Toggle (Topbar) -->
    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
        <i class="fa fa-bars"></i>
    </button>


    <!-- Topbar Navbar -->
    <ul class="navbar-nav ml-auto">

        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
        <li class="nav-item dropdown no-arrow d-sm-none">
            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
            </a>
            <!-- Dropdown - Messages -->
            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                    <div class="input-group">
                        <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button">
                                <i class="fas fa-search fa-sm"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </li>

        <!-- Nav Item - Alerts -->
        <li class="nav-item dropdown no-arrow mx-1">
            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-bell fa-fw"></i>
                <!-- Counter - Alerts -->
                <span class="badge badge-danger badge-counter" id="num-notificaciones">3</span>
            </a>
            <!-- Dropdown - Alerts -->
            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                <h6 class="dropdown-header">
                    Notificaciones
                </h6>
                <div id="contenido-notificaciones" style="overflow-y:auto;">
                    <a class="dropdown-item d-flex align-items-center" href="#">
                        <div class="mr-3">
                            <div class="icon-circle bg-primary">
                                <i class="fas fa-file-alt text-white"></i>
                            </div>
                        </div>
                        <div>
                            <div class="small text-gray-500">Fecha</div>
                            <span class="font-weight-bold">Sin notificaciones</span>
                        </div>
                    </a>

                </div>

                <a class="dropdown-item text-center small text-gray-500" href="<?= _ROUTE_ ?>notificaciones">Ver todas las notificaciones</a>
            </div>
        </li>



        <!-- Nav Item - User Information -->
        <li class="nav-item dropdown no-arrow">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><?php

                                                                            echo ucwords($_SESSION['ut_nombre']) . " " . ucwords($_SESSION['ut_apellido']);

                                                                            ?></span>
                <img class="img-profile rounded-circle" src="assets/img/undraw_profile.svg">
            </a>
            <!-- Dropdown - User Information -->
            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="<?= _ROUTE_ ?>PerfilUsuario">
                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                    Perfil Usuario
                </a>


                <?php

                if (in_array('seguridad', $_SESSION['ut_permisos'])) {
                ?>
                    <a class="dropdown-item" href="<?= _ROUTE_ ?>Roles">
                        <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                        Seguridad
                    </a>
                    <a class="dropdown-item" href="<?= _ROUTE_ ?>Bitacora">
                        <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                        Registro de Actividad
                    </a>

                <?php } ?>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                    Cerrar Sesión
                </a>
            </div>
        </li>

    </ul>


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

                           <label><b>Contenido</b></label>
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

    <script src="assets/js/notificaciones/verificar-notificaciones.js"></script>
    <script type="text/javascript" src="assets/js/notificaciones/notificacion_individual.js"></script>


</nav>