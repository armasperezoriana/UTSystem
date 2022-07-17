<?php

	namespace content\modelo;

	use content\config\conection\database as database;

	class esteganografiaModel extends database{

		private $con;

		public function __construct(){
			$this->con = parent::__construct();
		}

	}

?>