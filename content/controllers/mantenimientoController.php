<?php

	namespace content\controllers;

	use config\settings\sysConfig as sysConfig;
	use content\component\headElement as headElement;
	use content\modelo\homeModel as homeModel;
	use content\modelo\mantenimientoModel as mantenimientoModel;
	use content\modelo\vehiculosModel as vehiculosModel;
		use content\modelo\talleresModel as talleresModel;
	use content\modelo\tiposModel as tiposModel;


	class mantenimientoController{
		private $url;
		private $mantenimento;
		private $vehiculo;
		private $taller;
		private $tipo;

		function __construct($url){
			$this->url = $url;
			$this->mantenimento = new mantenimientoModel();
			$this->vehiculo = new vehiculosModel();
			$this->taller = new talleresModel();
			$this->tipos = new tiposModel();
		}
		
		public function Consultar(){
			$objModel = new homeModel;
			$_css = new headElement;
			$_css->Heading();

			if (!in_array('mantenimimientos', $_SESSION['ut_permisos'])){
			$mantenimento = $this->mantenimento->Consultar();
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
			if (!empty($_POST['nombre']) && !empty($_POST['intervalo'])  && !empty($_POST['tipo'])) {
				$nombre = $_POST['nombre'];
				$fecha = $_POST['intervalo'];
				$tipo = $_POST['tipo'];
				$rif = $_POST['taller'];
				$placa = $_POST['placa'];
				$costo = $_POST['costo'];
				$tiempo = $_POST['tiempo'];
				$this->mantenimento->setNombre($nombre);
				$this->mantenimento->setFecha($fecha);
				$this->mantenimento->setNombreTipo($tipo);
				$this->mantenimento->setRif($rif);
				$this->mantenimento->setPlaca($placa);
				$this->mantenimento->setCosto($costo);
				$this->mantenimento->setTiempo($tiempo);

				$result = $this->mantenimento->ConsultarOne();
				if ($result['ejecucion'] == true) {
					if (count($result) > 1) {
						echo "3";
					} else {
						$execute = $this->mantenimento->Agregar();

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
			$id_mantenimiento = $_POST['id_mantenimiento'];
			if (!empty($_POST['nombre']) && !empty($_POST['intervalo'])  && !empty($_POST['tipo'])) {
				$nombre = $_POST['nombre'];
				$fecha = $_POST['intervalo'];
				$tipo = $_POST['tipo'];
				$rif = $_POST['taller'];
				$placa = $_POST['placa'];
				$costo = $_POST['costo'];
				$tiempo = $_POST['tiempo'];

				$this->mantenimento->setIdMantenimiento($id_mantenimiento);
				$this->mantenimento->setNombre($nombre);
				$this->mantenimento->setFecha($fecha);
				$this->mantenimento->setNombreTipo($tipo);
				$this->mantenimento->setRif($rif);
				$this->mantenimento->setPlaca($placa);
				$this->mantenimento->setCosto($costo);
				$this->mantenimento->setTiempo($tiempo);
				
				//Agregar un Consultar para ver si existe Antes de Guardar o Rechazar;
				
				$execute = $this->mantenimento->Modificar();
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

			$result = $this->mantenimento->Inhabilitar($id);
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

			$result = $this->mantenimento->Habilitar($id);
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