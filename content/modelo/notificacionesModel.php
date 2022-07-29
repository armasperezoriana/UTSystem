<?php

	namespace content\modelo;

	use content\config\conection\database as database;

	class notificacionesModel extends database{

		private $con;
		private $id_notificacion;
		private $estado;

		public function __construct(){
			$this->con = parent::__construct();
		}
		public function Consultar(){
			try {
				$query = parent::prepare('SELECT * FROM notificaciones ORDER BY fecha');
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

public function ObtenerOne($id){
			try {
				$query = parent::prepare("SELECT * FROM notificaciones WHERE id_notificacion = $id");
				$respuestaArreglo = '';
				$query->execute();
				$query->setFetchMode(parent::FETCH_ASSOC);
				$respuesta = $query->fetch(parent::FETCH_ASSOC); 
				return $respuesta;
			} catch (PDOException $e) {
				$errorReturn = ['ejecucion' => false];
				$errorReturn += ['info' => "error sql:{$e}"];
				return $errorReturn;
			}
		}
		

		public function Borrar(int $id){
			try {

				$query = parent::prepare("DELETE notificaciones WHERE id = :id_notificacion VALUES ($id, '{$this->estado}', '{$this->fecha}', '{$this->titulo}', '{$this->contenido}','{$this->id_vehiculo}', 1)");
				
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


		public function Modificar(){
			try{
				$query = parent::prepare("UPDATE * notificaciones 
					WHERE id_notificacion = '$this->id_notificacion'");
				$respuestaArreglo = '';
				$query->execute();
				$query->setFetchMode(parent::FETCH_ASSOC);
				$respuestaArreglo = $query->fetchAll(parent::FETCH_ASSOC); 
				$respuestaArreglo += ['ejecucion' => true];
				return $respuestaArreglo;
			} 
			 catch (PDOException $e) {
				$errorReturn = ['ejecucion' => false];
				$errorReturn += ['info' => "error sql:{$e}"];
				return $errorReturn;
			}
		}

			public function Inhabilitar($id){    //Método que cambia el estado de una notificacion viene en proceso 0
			try{
				$consulta = parent::prepare("UPDATE notificaciones SET estatus=0 WHERE id_notificacion=$id");
				$consulta->execute();
				$respuestaArreglo = ['ejecucion' => true];
				return $respuestaArreglo;
	
			} catch (PDOException $e) {
				$errorReturn = ['ejecucion' => false];
				$errorReturn += ['info' => "error sql:{$e}"];
				return $errorReturn;
			}
		}
		public function Habilitar($id){    //Método que  cambia el estado de una notificacion a generada
			try{
				$consulta = parent::prepare("UPDATE notificaciones SET estatus=1 WHERE id_notificacion=$id");
				$consulta->execute();
				$respuestaArreglo = ['ejecucion' => true];
				return $respuestaArreglo;
	
			} catch (PDOException $e) {
				$errorReturn = ['ejecucion' => false];
				$errorReturn += ['info' => "error sql:{$e}"];
				return $errorReturn;
			}
		}

		


	}

?>