<?php

	namespace content\modelo;

	use content\config\conection\database as database;

	class bitacoraModel extends database{

		private $con;

		public function __construct(){
			$this->con = parent::__construct();
		}
		public function Consultar(){
			try {
				$query = parent::prepare('SELECT * FROM bitacora ORDER BY fecha DESC LIMIT 200');
				$respuestaArreglo = '';
				$query->execute();
				$query->setFetchMode(parent::FETCH_ASSOC);
				$respuestaArreglo = $query->fetchAll(parent::FETCH_ASSOC); 
				$respuestaArreglo += ['ejecucion' => true];
				return $respuestaArreglo;
			} catch (PDOException $e) {
				$errorReturn = ['ejecucion' => false];
				$errorReturn += ['info' => "error sql:{$e}"];
				return $errorReturn;
			}
		}

		
    // RESPALDO DE LA BASE DE DATOS
   // public function index(){
     
  //      if ($_SESSION['rol']!=1) {
  //          header("Location: ".ROOT);
  //          return false;
  //      }
    //    return View::getView('Respaldo.index');
   // }

	}

?>