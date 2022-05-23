<?php

	namespace content\controllers;

	use config\settings\sysConfig as sysConfig;
	use content\component\headElement as headElement;
	use content\modelo\homeModel as homeModel;
	use content\modelo\esteganografiaModel as esteganografiaModel;

	class esteganografiaController{
		private $url;
		private $esteganografia;
		
		function __construct($url){
			$this->url = $url;
			$this->esteganografia = new esteganografiaModel();
		}

		public function Consultar(){
			$objModel = new homeModel;
			$_css = new headElement;
			$_css->Heading();
			
			$url = $this->url;
			require_once("view/esteganografiaView.php");
		}

	}
		

?>