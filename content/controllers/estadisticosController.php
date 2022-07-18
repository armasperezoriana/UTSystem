<?php

	namespace content\controllers;

	use config\settings\sysConfig as sysConfig;
	use content\component\headElement as headElement;
	use content\modelo\estadisticosModel as estadisticosModel;

	class estadisticosController{
		private $url;
		function __construct($url){
			$this->url = $url;
		}

		public function Consultar(){
			//var_dump($_SESSION);
			//return 0;
			$objModel = new estadisticosModel;
			$_css = new headElement;
			$_css->Heading();
			
			$url = $this->url;
			require_once("view/reportesView.php");
		}



	}
		

?>