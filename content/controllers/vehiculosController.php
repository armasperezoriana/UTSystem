<?php

namespace content\controllers;

use config\settings\sysConfig as sysConfig;
use content\component\headElement as headElement;
use content\modelo\homeModel as homeModel;
use content\modelo\vehiculosModel as vehiculosModel;

class vehiculosController
{
	private $url;
	private $vehiculo;

	function __construct($url)
	{

		$this->url = $url;
		$this->vehiculo = new vehiculosModel();
	}

	public function Consultar()
	{
		$objModel = new homeModel;
		$_css = new headElement;
		$_css->Heading();
if (in_array('vehiculos', $_SESSION['ut_permisos']))
            {
		$vehiculo = $this->vehiculo->Consultar();
		$url = $this->url;
		require_once("view/vehiculosView.php");
		return false;
	}else{
		require_once("view/errorPermisoView.php");
		return true;
		}
	}


public function Mostrar($param)
    {
        $vehiculo = $this->vehiculo->ObtenerOne($param);
        http_response_code(200);
        echo json_encode([
            'data' => $vehiculo
        ]);
    }


	public function Registrar()
	{
		if (!empty($_POST['placa']) && !empty($_POST['modelo'])) {
			$placa = $_POST['placa'];
			$modelo = $_POST['modelo'];
			$funcionamiento = $_POST['funcionamiento'];
			$kilometraje = $_POST['kilometraje'];

			$this->vehiculo->setPlaca($placa);
			$this->vehiculo->setModelo($modelo);
			$this->vehiculo->setFuncionamiento($funcionamiento);
			$this->vehiculo->setKilometraje($kilometraje);
			
					$execute = $this->vehiculo->Agregar();
					//Codigo de bitacora sobre Agregar Usuario
					if ($execute['ejecucion'] == true) {
						echo '1';
					} else {
						echo "2";
					}
				
		}
	}


	public function Modificar()
	{

		$method = $_SERVER['REQUEST_METHOD'];
		if ($method != 'POST') {
			http_response_code(404);
			return false;
		}
		$id_vehiculo = $_POST['id_vehiculo'];
		
		if (!empty($_POST['placa']) && !empty($_POST['modelo'])) {
			$id_vehiculo = $_POST['id_vehiculo'];
			$placa = $_POST['placa'];
			$modelo = $_POST['modelo'];
			$funcionamiento = $_POST['funcionamiento'];
			$kilometraje = $_POST['kilometraje'];

			$this->vehiculo->setId($id_vehiculo);
			$this->vehiculo->setPlaca($placa);
			$this->vehiculo->setModelo($modelo);
			$this->vehiculo->setFuncionamiento($funcionamiento);
			$this->vehiculo->setKilometraje($kilometraje);
			//Agregar un Consultar para ver si existe Antes de Guardar o Rechazar;
			
			$execute = $this->vehiculo->Modificar();
			//Codigo de bitacora sobre Agregar Usuario
			if ($execute['ejecucion'] == true) {
				echo '1';
			} else {
				echo "2";
			}
		}
	}

	public function Inhabilitar($id)
	{
		$method = $_SERVER['REQUEST_METHOD'];
		if ($method != 'POST') {
			http_response_code(404);
			return false;
		}

		$result = $this->vehiculo->Inhabilitar($id);
		if ($result['ejecucion'] == true) {
			echo json_encode([
				'titulo' => 'Registro del vehiculo eliminado!',
				'mensaje' => 'Registro eliminado en nuestro sistema',
				'tipo' => 'success'
			]);
		} else {
			echo json_encode([
				'titulo' => 'Ocurrió un error!',
				'mensaje' => 'No se pudo eliminar el registro del vehiculo',
				'tipo' => 'error'
			]);
		}
	}

	public function Habilitar($id)
	{
		$method = $_SERVER['REQUEST_METHOD'];
		if ($method != 'POST') {
			http_response_code(404);
			return false;
		}

		$result = $this->vehiculo->Habilitar($id);
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

	public function setId($id){
			$this->id_vehiculo = $id;
		}
		public function setPlaca($placa){
			$this->placa = $placa;
		}
		public function setModelo($modelo){
			$this->modelo = $modelo;
		}
		public function setFuncionamiento($funcionamiento){
			$this->funcionamiento = $funcionamiento;
		}

		public function setKilometraje($kilometraje){
			$this->kilometraje = $kilometraje;
		}

		public function getId(){
			return $this->id_vehiculo;
		}
		public function getPlaca(){
			return $this->placa;
		}
		public function getModelo(){
			return $this->modelo;
		}
		public function getFuncionamiento(){
			return $this->funcionamiento;
		}
		public function getKilometraje(){
			return $this->kilometraje;
		}
		
}

