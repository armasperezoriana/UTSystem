<?php

	namespace content\controllers;

	use config\settings\sysConfig as sysConfig;
	use content\component\headElement as headElement;
	use content\modelo\homeModel as homeModel;
	use content\modelo\mantenimientoModel as mantenimientoModel;
	use content\modelo\vehiculosModel as vehiculosModel;
	use content\modelo\talleresModel as talleresModel;
	use content\modelo\tiposModel as tiposModel;
	use content\modelo\rutaModel as rutaModel;


	class mantenimientoController{
		private $url;
		private $mantenimiento;
		private $vehiculo;
		private $taller;
		private $tipo;

		function __construct($url){
			$this->url = $url;
			$this->mantenimiento = new mantenimientoModel();
			$this->vehiculo = new vehiculosModel();
			$this->taller = new talleresModel();
			$this->tipos = new tiposModel();
			$this->rutas= new rutaModel();
		}
		
		public function Consultar(){
			$objModel = new homeModel;
			$_css = new headElement;
			$_css->Heading();

			if (in_array('mantenimiento', $_SESSION['ut_permisos'])){
			$mantenimiento = $this->mantenimiento->Consultar();
			$vehiculo = $this->vehiculo->Consultar();
			$taller = $this->taller->Consultar();
			$tipos = $this->tipos->Consultar();
			
			$url = $this->url;
			require_once("view/PreventivoView.php");
		}else{
				require_once("view/errorPermisoView.php");
		return true;
		}
	}
		
		
		public function Registrar(){
			if (!empty($_POST['nombre']) && !empty($_POST['intervalo'])  && !empty($_POST['kilometraje'])) {
				$nombre = $_POST['nombre'];
				$fecha = $_POST['intervalo'];
				$taller = $_POST['id_taller'];
				$vehiculo = $_POST['id_vehiculo'];
				$costo = $_POST['costo'];
				$kilometraje  = $_POST['kilometraje'];
				$estado = $_POST['estado'];
				$this->mantenimiento->setNombre($nombre);
				$this->mantenimiento->setFecha($fecha);
				$this->mantenimiento->setKilometraje($kilometraje);
				$this->mantenimiento->setIdTaller($taller);
				$this->mantenimiento->setIdVehiculo($vehiculo);
				$this->mantenimiento->setCosto($costo);
				$this->mantenimiento->setEstado($estado);

				$result = $this->mantenimiento->ConsultarOne();
				if ($result['ejecucion'] == true) {
					if (count($result) > 1) {
						echo "3";
					} else {
						$execute = $this->mantenimiento->Agregar();

				// 		//Codigo de bitacora sobre Agregar Usuario
						if ($execute['ejecucion'] == true) {
							echo '1';
						} else {
							echo "2";
						}
					}
				} else {
					echo "2";
				}
			}
		}

		public function notificaciones(){
			$tiempo_aceite_filtro=4500; //Km
			$tiempo_frenos_refri_electro=9500; //Km
			$tiempo_suspension=19500; //Km
			$tiempo_llantas=29500; //Km
			$vehiculos=$this->vehiculo->Consultar();
			$rutas=$this->rutas->Consultar();
			$notificaciones=$this->mantenimiento->Consultar_notificaciones();
            $vehiculos_sin_mantenimiento=[];
			$vehiculos_mantenimiento=[];	
			$vehiculos_notificacion=[];
			foreach ($vehiculos as $v){
            $ultimo_mantenimiento=$this->mantenimiento->ConsultarVehiculo($v['id_vehiculo']);
			if(count($ultimo_mantenimiento)==0){
				$vehiculos_sin_mantenimiento[]=$v;
			}
			else{
				$v['fecha_mantenimiento']=$ultimo_mantenimiento[0]['fecha'];
				$v['kilometraje_mantenimiento']=$ultimo_mantenimiento[0]['kilometraje'];
				$vehiculos_mantenimiento[]=$v;
			}
			}
             
			foreach($rutas as $r){
                for($i=0;$i<count($vehiculos_sin_mantenimiento);$i++){
                     if($vehiculos_sin_mantenimiento[$i]['placa']==$r['placa']){
						$vehiculos_sin_mantenimiento[$i]['kilometraje_notificacion']=floatval($vehiculos_sin_mantenimiento[$i]['kilometraje']) + floatval($r['kilometraje']);
					 }
					 else{
						$vehiculos_sin_mantenimiento[$i]['kilometraje_notificacion']=$vehiculos_sin_mantenimiento[$i]['kilometraje'];
					 }
				}
			}


			foreach($rutas as $r){
                for($i=0;$i<count($vehiculos_mantenimiento);$i++){
                     if($vehiculos_mantenimiento[$i]['placa']==$r['placa']){
						$vehiculos_mantenimiento[$i]['kilometraje_notificacion']=( floatval($vehiculos_mantenimiento[$i]['kilometraje'])-floatval($vehiculos_mantenimiento[$i]['kilometraje_mantenimiento']) ) + floatval($r['kilometraje']);
					 }
					 else{
					 	$vehiculos_mantenimiento[$i]['kilometraje_notificacion']=floatval($vehiculos_mantenimiento[$i]['kilometraje'])-floatval($vehiculos_mantenimiento[$i]['kilometraje_mantenimiento']);
					  }
				}
			}

			foreach($vehiculos_mantenimiento as $vm){
				$vehiculos_notificacion[]=$vm;
			}
			foreach($vehiculos_sin_mantenimiento as $vsm){
				$vehiculos_notificacion[]=$vsm;
			}

           for($i=0;$i<count($vehiculos_notificacion);$i++){
			$texto="El vehículo ".$vehiculos_notificacion[$i]['placa']." necesita mantenimiento de: ";
			if(floatval($vehiculos_notificacion[$i]['kilometraje_notificacion'])>=45){
				$texto.="filtro de aceite, ";
			}
			if(floatval($vehiculos_notificacion[$i]['kilometraje_notificacion'])>=$tiempo_frenos_refri_electro){
				$texto.="frenos, refrigeración, electroventilador, ";
			}

			if(floatval($vehiculos_notificacion[$i]['kilometraje_notificacion'])>=$tiempo_suspension){
				$texto.="suspensión, ";
			}

			if(floatval($vehiculos_notificacion[$i]['kilometraje_notificacion'])>=$tiempo_llantas){
				$texto.="cauchos, ";
			}

			$texto.="y chequeo general.";

			if(floatval($vehiculos_notificacion[$i]['kilometraje_notificacion'])<45){
				$texto="";
			}

			$vehiculos_notificacion[$i]['texto_notificacion']=$texto;
		   }

		   if(count($notificaciones)==0){
                     foreach($vehiculos_notificacion as $vn){
						if($vn['texto_notificacion']!=""){
							$hoy = getdate();
                            $hoy=$hoy['year']."-".$hoy['mon']."-".$hoy['mday'];
						    $this->mantenimiento->Agregar_notificacion([
								"fecha"=>$hoy,
								"titulo"=>"Mantenimiento preventivo ".$vn['placa'],
								"contenido"=>$vn['texto_notificacion'],
								"id_vehiculo"=>$vn['id_vehiculo']
							]);
						}
					 }
		   }
		   else{
			foreach($vehiculos_notificacion as $vn){
				if($vn['texto_notificacion']!=""){
					$hoy = getdate();
					$cont=0;
					foreach($notificaciones as $n){
						if($n['id_vehiculo']==$vn['id_vehiculo']){

							$fecha_notificacion=explode("-",$n['fecha']);
							if($fecha_notificacion[1]==$hoy['mon'] && $fecha_notificacion[0]==$hoy['year']){
                               $cont++;
							}

						}
					}
					if($cont==0){
						$this->mantenimiento->Agregar_notificacion([
						"fecha"=>$hoy['year']."-".$hoy['mon']."-".$hoy['mday'],
						"titulo"=>"Mantenimiento preventivo requerido para ".$vn['placa'],
						"contenido"=>$vn['texto_notificacion'],
						"id_vehiculo"=>$vn['id_vehiculo']
					]);
					}
					
				}
			 }
		   }

		   $notificaciones=$this->mantenimiento->Consultar_notificaciones();
		   echo json_encode($notificaciones);

		}


		
		public function InhabilitarOrden($id)
	{
		$method = $_SERVER['REQUEST_METHOD'];
		if ($method != 'POST') {
			http_response_code(404);
			return false;
		}

		$result = $this->notificaciones->InhabilitarOrden($id);
		if ($result['ejecucion'] == true) {
			echo json_encode([
				'titulo' => 'Mantenimiento Cancelado!',
				'mensaje' => 'Eliminando notificacion',
				'tipo' => 'success'
			]);
		} else {
			echo json_encode([
				'titulo' => 'Ocurrió un error!',
				'mensaje' => 'No se pudo eliminar el registro',
				'tipo' => 'error'
			]);
		}
	}

	public function HabilitarOrden($id)
	{
		$method = $_SERVER['REQUEST_METHOD'];
		if ($method != 'POST') {
			http_response_code(404);
			return false;
		}

		$result = $this->notificaciones->HabilitarOrden($id);
		if ($result['ejecucion'] == true) {
			echo json_encode([
				'titulo' => 'Mantenimiento Generado!',
				'mensaje' => 'Alerta de mantenimiento con su estado en proceso pasa a Generado',
				'tipo' => 'success'
			]);
		} else {
			echo json_encode([
				'titulo' => 'Ocurrió un error!',
				'mensaje' => 'No se pudo habilitar el registro',
				'tipo' => 'error'
			]);
		}
	}

		public function Modificar(){
			$method = $_SERVER['REQUEST_METHOD'];
			if ($method != 'POST') {
				http_response_code(404);
				return false;
			}
			$id_mantenimiento = $_POST['id_mantenimiento'];
			if (!empty($_POST['nombre']) && !empty($_POST['intervalo'])  && !empty($_POST['kilometraje'])) {
				$nombre = $_POST['nombre'];
				$fecha = $_POST['intervalo'];
				$kilometraje = $_POST['kilometraje'];
				$taller = $_POST['id_taller'];
				$vehiculo= $_POST['id_vehiculo'];
				$costo = $_POST['costo'];
				//$estado = $_POST['estado'];

				$this->mantenimiento->setIdMantenimiento($id_mantenimiento);
				$this->mantenimiento->setNombre($nombre);
				$this->mantenimiento->setFecha($fecha);
				$this->mantenimiento->setKilometraje($kilometraje);
				$this->mantenimiento->setIdTaller($taller);
				$this->mantenimiento->setIdVehiculo($vehiculo);
				$this->mantenimiento->setCosto($costo);
				//$this->mantenimiento->setEstado($estado);
				//Agregar un Consultar para ver si existe Antes de Guardar o Rechazar;
				
				$execute = $this->mantenimiento->Modificar();
				//Codigo de bitacora sobre Agregar Usuario
				if ($execute['ejecucion'] == true) {
					echo '1';
				} else {
					echo "2";
				}
			}
		}

		public function Inhabilitar($id){
			$method = $_SERVER['REQUEST_METHOD'];
			if ($method != 'POST') {
				http_response_code(404);
				return false;
			}

			$result = $this->mantenimiento->Inhabilitar($id);
			if ($result['ejecucion'] == true) {
				echo json_encode([
					'titulo' => 'Registro del mantenimiento eliminado!',
					'mensaje' => 'Registro eliminado en nuestro sistema',
					'tipo' => 'success'
				]);
			} else {
				echo json_encode([
					'titulo' => 'Ocurrió un error!',
					'mensaje' => 'No se pudo eliminar el registro del mantenimiento',
					'tipo' => 'error'
				]);
			}
		}

		public function Habilitar($id){
			$method = $_SERVER['REQUEST_METHOD'];
			if ($method != 'POST') {
				http_response_code(404);
				return false;
			}

			$result = $this->mantenimiento->Habilitar($id);
			if ($result['ejecucion'] == true) {
				echo json_encode([
					'titulo' => 'Registro habilitado!',
					'mensaje' => 'Registro habilitado en nuestro sistema',
					'tipo' => 'success'
				]);
			} else {
				echo json_encode([
					'titulo' => 'Ocurrió un error!',
					'mensaje' => 'No se pudo habilitar el registro',
					'tipo' => 'error'
				]);
			}
		}

	}
