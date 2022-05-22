<?php

	namespace content\controllers;

	use config\settings\sysConfig as sysConfig;
	use content\component\headElement as headElement;
	use content\modelo\homeModel as homeModel;
	use content\modelo\reparacionesModel as reparacionesModel;
		use content\modelo\vehiculosModel as vehiculosModel;
		use content\modelo\talleresModel as talleresModel;
	use content\modelo\tiposModel as tiposModel;

	class reparacionesController{
		private $url;
		private $reparaciones;
		private $vehiculo;
		private $taller;
		private $tipo;

		function __construct($url){
			$this->url = $url;
			$this->reparaciones = new reparacionesModel();
			$this->vehiculo = new vehiculosModel();
			$this->taller = new talleresModel();
			$this->tipos = new tiposModel();

		}

		public function Consultar(){
			$objModel = new homeModel;
			$_css = new headElement;
			$_css->Heading();
			$reparaciones = $this->reparaciones->Consultar();
			$vehiculo = $this->vehiculo->Consultar();
			$taller = $this->taller->Consultar();
			$tipos = $this->tipos->Consultar();
			
			
			$url = $this->url;
			require_once("view/reparacionesView.php");
		}
		
		public function Registrar(){
			if (!empty($_POST['nombre']) && !empty($_POST['intervalo'])  && !empty($_POST['descripcion'])) {
				$nombre = $_POST['nombre'];
				$fecha = $_POST['intervalo'];
				$placa = $_POST['placa'];
				$costo = $_POST['costo'];
				$descripcion = $_POST['descripcion'];
				$rif = $_POST['taller'];
				$this->reparaciones->setNombre($nombre);
				$this->reparaciones->setFecha($fecha);
				$this->reparaciones->setPlaca($placa);
				$this->reparaciones->setCosto($costo);
				$this->reparaciones->setDescripcion($descripcion);
				$this->reparaciones->setRif($rif);

				$result = $this->reparaciones->ConsultarOne();
				if ($result['ejecucion'] == true) {
					if (count($result) > 1) {
						echo "3";
					} else {
						$execute = $this->reparaciones->Agregar();

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

		public function Modificar(){
			$method = $_SERVER['REQUEST_METHOD'];
			if ($method != 'POST') {
				http_response_code(404);
				return false;
			}
			$id_reparaciones = $_POST['id_reparaciones'];
			if (!empty($_POST['nombre']) && !empty($_POST['placa'])  && !empty($_POST['descripcion'])) {
				$nombre = $_POST['nombre'];
				$placa = $_POST['placa'];
				$costo = $_POST['costo'];
				$fecha = $_POST['intervalo'];
				$descripcion = $_POST['descripcion'];
				$rif = $_POST['taller'];

				$this->reparaciones->setIdReparaciones($id_reparaciones);
				$this->reparaciones->setNombre($nombre);
				$this->reparaciones->setPlaca($placa);
				$this->reparaciones->setCosto($costo);
				$this->reparaciones->setFecha($fecha);
				$this->reparaciones->setDescripcion($descripcion);
				$this->reparaciones->setRif($rif);
				
				//Agregar un Consultar para ver si existe Antes de Guardar o Rechazar;
				
				$execute = $this->reparaciones->Modificar();
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

			$result = $this->reparaciones->Inhabilitar($id);
			if ($result['ejecucion'] == true) {
				echo json_encode([
					'titulo' => 'Registro del mantenimento eliminado!',
					'mensaje' => 'Registro eliminado en nuestro sistema',
					'tipo' => 'success'
				]);
			} else {
				echo json_encode([
					'titulo' => 'Ocurrió un error!',
					'mensaje' => 'No se pudo eliminar el registro del mantenimento',
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

			$result = $this->reparaciones->Habilitar($id);
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
		

?>