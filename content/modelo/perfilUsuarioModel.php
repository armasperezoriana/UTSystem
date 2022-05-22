<?php

	namespace content\modelo;

	use content\config\conection\database as database;

	class perfilUsuarioModel extends database{

		private $con;
		private $id_usuario;
		private $cedula;
	    private $nombre; 
	    private $apellido;
	    private $username;
	    private $rol;
	    private $password;
	    private $correo;
	    private $fechaRecuperacion;

		public function __construct(){
			$this->con = parent::__construct();
		}

		public function Consultar(){
			try {
				$query = parent::prepare('SELECT * FROM usuarios');
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

		public function ConsultarOne(){
			try {
				$query = parent::prepare("SELECT * FROM usuarios WHERE status = 1 and cedula = '{$this->cedula}'");
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
				$query = parent::prepare("SELECT * FROM usuarios WHERE id_usuario = $id");
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
		public function ObtenerUsuario($usuario){
			try {
				$query = parent::prepare("SELECT * FROM usuarios WHERE usuario = '$usuario' LIMIT 1");
				$respuestaArreglo = '';
				$query->execute();
				$query->setFetchMode(parent::FETCH_ASSOC);
				$respuestaArreglo = ['resultado' => $query->fetch(parent::FETCH_ASSOC)];
				$respuestaArreglo += ['ejecucion' => true];
				return $respuestaArreglo;
			} catch (PDOException $e) {
				$errorReturn = ['ejecucion' => false];
				$errorReturn += ['info' => "error sql:{$e}"];
				return $errorReturn;
			}
		}
		

	}



?>