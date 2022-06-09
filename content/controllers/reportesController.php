<?php

	namespace content\controllers;

	use config\settings\sysConfig as sysConfig;
	use content\component\headElement as headElement;
	use content\modelo\reportesModel as reportesModel;
	use content\modelo\vehiculosModel as vehiculosModel;
	use content\modelo\choferesModel as choferesModel;
		use content\modelo\mantenimientoModel as mantenimientoModel;
	use content\modelo\reparacionesModel as reparacionesModel;
use content\modelo\talleresModel as talleresModel;

	use content\modelo\rutaModel as rutaModel;


	class reportesController{
		private $url;
	

		function __construct($url){
			$this->url = $url;
			
		}

		public function Consultar(){
			$objModel = new reportesModel;
			$_css = new headElement;
			$_css->Heading();
				if (in_array('reportes', $_SESSION['ut_permisos'])){
			$url = $this->url;
			require_once("view/reportesView.php");
		
		return false;
	}else{
			
			require_once("view/errorPermisoView.php");
		return true;
		}
	}


		public function vehiculosConsulta(){
			
			try {
				$query = parent::prepare('SELECT * FROM vehiculos ');
				$respuestaArreglo = '';
				$query->execute();
				$query->setFetchMode(parent::FETCH_ASSOC);
				$respuestaArreglo = $query->fetchAll(parent::FETCH_ASSOC); 
				return $respuestaArreglo;
			} catch (PDOException $e) {
				$errorReturn = ['estatus' => false];
				$errorReturn += ['info' => "error sql:{$e}"];
				return $errorReturn;
			}
		}

	}
		

?>