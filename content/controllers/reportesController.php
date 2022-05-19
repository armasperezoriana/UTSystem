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
			
			$url = $this->url;
			require_once("view/reportesView.php");
		}

	}
		

?>