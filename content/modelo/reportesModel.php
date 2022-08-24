<?php

	namespace content\modelo;
	use content\config\conection\database as database;
	use config\settings\sysConfig as sysConfig;
	use content\component\headElement as headElement;
	use content\modelo\reportesModel as reportesModel;
	use content\modelo\vehiculosModel as vehiculosModel;
	use content\modelo\choferesModel as choferesModel;
	use content\modelo\mantenimientoModel as mantenimientoModel;
	use content\modelo\reparacionesModel as reparacionesModel;
use content\modelo\talleresModel as talleresModel;
use PDOException;

	use content\modelo\rutaModel as rutaModel;


	class reportesModel extends database{

		private $con;
		private $chofer;
		private $vehiculo;
		private $mantenimiento;
		private $reparaciones;
		private $taller;
		private $ruta;


		public function __construct(){
			$this->con = parent::__construct();

			 $this->chofer = new choferesModel();
			$this->vehiculo = new vehiculosModel();
			$this->mantenimento = new mantenimientoModel();
			$this->reparaciones = new reparacionesModel();
			$this->ruta = new rutaModel();
			$this->taller = new talleresModel();
			

		}

	}

?>