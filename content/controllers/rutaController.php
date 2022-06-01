<?php

	namespace content\controllers;

	use config\settings\sysConfig as sysConfig;
	use content\component\headElement as headElement;
	use content\modelo\homeModel as homeModel;
	use content\modelo\rutaModel as rutaModel;
		use content\modelo\vehiculosModel as vehiculosModel;

	class rutaController{
		private $url;
		private $ruta;
		private $vehiculo;

		function __construct($url){
			$this->url = $url;
			$this->ruta = new rutaModel();
			$this->vehiculo = new vehiculosModel();
		}

		public function Consultar(){
			$objModel = new homeModel;
			$_css = new headElement;
			$_css->Heading();
			$ruta = $this->ruta->Consultar();
			$vehiculo = $this->vehiculo->Consultar();
			
			$url = $this->url;
			require_once("view/rutasView.php");
		}
		
		public function Registrar(){

			if (!empty($_POST['placa']) && !empty($_POST['nombre_ruta'])) {
			
				$nombre_ruta = $_POST['nombre_ruta'];
				$direccion = $_POST['direccion_ruta'];
				$unidad = $_POST['placa'];
				$hora_salida = $_POST['hora_salida'];
				$kilometraje = $_POST['kilometraje'];

				$this->ruta->setNombre_ruta($nombre_ruta);
				$this->ruta->setPlaca($unidad);
				$this->ruta->setDireccion($direccion);
				$this->ruta->setHoraSalida($hora_salida);
				$this->ruta->setKilometraje($kilometraje);

				$result = $this->ruta->ConsultarOne();
				// print_r($result);
				if ($result['ejecucion'] == true) {
					
					if (count($result) > 1) {
						echo "3";
					} else {
						$execute = $this->ruta->Agregar();
						//Codigo de bitacora sobre Agregar Usuario
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
			if (!empty($_POST['placa']) && !empty($_POST['nombre_ruta'])) {
				$id_ruta = $_POST['id_ruta'];
				$nombre_ruta = $_POST['nombre_ruta'];
				$direccion = $_POST['direccion_ruta'];
				$unidad = $_POST['placa'];
				$hora_salida = $_POST['hora_salida'];
				$kilometraje = $_POST['kilometraje'];

				$this->ruta->setId_ruta($id_ruta);
				$this->ruta->setNombre_ruta($nombre_ruta);
				$this->ruta->setPlaca($unidad);
				$this->ruta->setDireccion($direccion);
				$this->ruta->setHoraSalida($hora_salida);
				$this->ruta->setKilometraje($kilometraje);

				$execute = $this->ruta->Modificar();
				// print_r($result);
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

		$result = $this->ruta->Inhabilitar($id);
		if ($result['ejecucion'] == true) {
			echo json_encode([
				'titulo' => 'Registro de la ruta eliminado!',
				'mensaje' => 'Registro eliminado en nuestro sistema',
				'tipo' => 'success'
			]);
		} else {
			echo json_encode([
				'titulo' => 'Ocurrió un error!',
				'mensaje' => 'No se pudo eliminar el registro de la ruta',
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

		$result = $this->ruta->Habilitar($id);
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

		public function Eliminar(){
		}

	}
		

?>