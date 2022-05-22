<?php

	namespace content\modelo;

	use content\config\conection\database as database;

	class reparacionesModel extends database{

		private $id_reparaciones;
		private $nombre;
		private $placa;
		private $costo;
		private $fecha;
		private $descripcion;
		private $rif;
		private $status;

		public function __construct(){
			// $this->con = parent::__construct();
			parent::__construct();
		}
		public function Consultar(){
			try {
				$query = parent::prepare('SELECT * FROM reparaciones');
				$respuestaArreglo = '';
				$query->execute();
				$query->setFetchMode(parent::FETCH_ASSOC);
				$respuestaArreglo = $query->fetchAll(parent::FETCH_ASSOC); 
				return $respuestaArreglo;
			} catch (PDOException $e) {
				$errorReturn = ['status' => false];
				$errorReturn += ['info' => "error sql:{$e}"];
				return $errorReturn;
			}
		}

		public function ConsultarOne(){
			try {
				$query = parent::prepare("SELECT * FROM reparaciones WHERE nombre = '{$this->nombre}' and fecha = '{$this->fecha}' and rif = '{$this->rif}' and placa = '{$this->placa}'");
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

		public function Agregar(){
			$id= 0;
			try {
				$query = parent::prepare('SELECT MAX(id_reparaciones) as max FROM reparaciones');
				$query->execute();
				$query->setFetchMode(parent::FETCH_ASSOC);
				$result = $query->fetchAll(parent::FETCH_ASSOC); 
				foreach($result as $row){
					if(!empty($row['max'])){
						$id = $row['max']+1;
					}else{
						$id++;
					}
				}
				$query = parent::prepare("INSERT INTO reparaciones (id_reparaciones, nombre, placa, costo, fecha, descripcion, rif, status) VALUES ($id, '{$this->nombre}', '{$this->placa}', '{$this->costo}', '{$this->fecha}', '{$this->descripcion}', '{$this->rif}', 1)");
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
				$query = parent::prepare("UPDATE reparaciones SET nombre = '{$this->nombre}', placa='$this->placa', costo='$this->costo', fecha='$this->fecha', descripcion='$this->descripcion', rif='$this->rif' WHERE id_reparaciones = $this->id_reparaciones");
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

		public function Inhabilitar($id){    //Método que elimina logicamente un registro
			try{
				$consulta = parent::prepare("UPDATE reparaciones SET status=0 WHERE id_reparaciones=$id");
				$consulta->execute();
				$respuestaArreglo = ['ejecucion' => true];
				return $respuestaArreglo;
	
			} catch (PDOException $e) {
				$errorReturn = ['ejecucion' => false];
				$errorReturn += ['info' => "error sql:{$e}"];
				return $errorReturn;
			}
		}

		public function Habilitar($id){    //Método que habilita logicamente un registro
			try{
				$consulta = parent::prepare("UPDATE reparaciones SET status=1 WHERE id_reparaciones=$id");
				$consulta->execute();
				$respuestaArreglo = ['ejecucion' => true];
				return $respuestaArreglo;
	
			} catch (PDOException $e) {
				$errorReturn = ['ejecucion' => false];
				$errorReturn += ['info' => "error sql:{$e}"];
				return $errorReturn;
			}
		}
		public function setIdReparaciones($id_reparaciones){
			$this->id_reparaciones = $id_reparaciones;
		}
		public function setNombre($nombre){
			$this->nombre = $nombre;
		}
		public function setPlaca($placa){
			$this->placa = $placa;
		}
		public function setCosto($costo){
			$this->costo = $costo;
		}
		public function setFecha($fecha){
			$this->fecha = $fecha;
		}
		public function setDescripcion($descripcion){
			$this->descripcion = $descripcion;
		}
		public function setRif($rif){
			$this->rif = $rif;
		}

		public function getIdReparaciones(){
			return $this->id_reparaciones;
		}
		public function getNombre(){
			return $this->nombre;
		}
		public function getPlaca(){
			return $this->placa;
		}
		public function getCosto(){
			return $this->costo;
		}
		public function getFecha(){
			return $this->fecha;
		}
		public function getDescripcion(){
			return $this->descripcionpcion;
		}
		public function getRif(){
			return $this->rif;
		}
	}
?>