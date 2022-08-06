<?php

	namespace content\modelo;

	use content\config\conection\database as database;

	class reparacionesModel extends database{

		private $id_reparaciones;
		private $nombre;
		private $id_vehiculo;
		private $costo;
		private $fecha;
		private $descripcion;
		private $id_taller;
		private $status;

		public function __construct(){
			// $this->con = parent::__construct();
			parent::__construct();
		}
		public function Consultar(){
			try {
				$query = parent::prepare('SELECT r.id_taller AS id_taller, r.status as status, taller.nombre AS nombre_t, vehiculos.modelo as modelo, taller.rif AS rif, r.nombre AS nombre, r.fecha as fecha,r.descripcion as descripcion, r.id_vehiculo = r.id_vehiculo, vehiculos.id_vehiculo AS id_vehiculo, vehiculos.modelo as modelo, vehiculos.placa AS placa, r.costo AS costo, vehiculos.placa as placa, r.id_reparaciones as id_reparaciones FROM reparaciones as r INNER JOIN vehiculos ON r.id_vehiculo = vehiculos.id_vehiculo INNER JOIN taller ON r.id_taller= taller.id_taller');
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
		public function ObtenerOne($id){
			try {
				$query = parent::prepare("SELECT * FROM reparaciones WHERE id_reparaciones = $id");
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

		public function ConsultarOne(){
			try {
				$query = parent::prepare("SELECT * FROM reparaciones WHERE nombre = '{$this->nombre}' and fecha = '{$this->fecha}' and id_taller = '{$this->id_taller}' and id_vehiculo = '{$this->id_vehiculo}'");
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
				$query = parent::prepare("INSERT INTO reparaciones (id_reparaciones, nombre, id_vehiculo, costo, fecha, descripcion, id_taller, status) VALUES ($id, '{$this->nombre}', '{$this->id_vehiculo}', '{$this->costo}', '{$this->fecha}', '{$this->descripcion}', '{$this->id_taller}', 1)");
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
				$query = parent::prepare("UPDATE reparaciones SET nombre = '{$this->nombre}', id_vehiculo='{$this->id_vehiculo}', costo='{$this->costo}', fecha='{$this->fecha}', descripcion='{$this->descripcion}', id_taller='{$this->id_taller}' WHERE id_reparaciones = {$this->id_reparaciones}");
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
		public function setIdVehiculo($id_vehiculo){
			$this->id_vehiculo = $id_vehiculo;
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
		public function setIdTaller($id_taller){
			$this->id_taller = $id_taller;
		}

		public function getIdReparaciones(){
			return $this->id_reparaciones;
		}
		public function getNombre(){
			return $this->nombre;
		}
		public function getIdVehiculo(){
			return $this->id_vehiculo;
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
		public function getIdTaller(){
			return $this->id_taller;
		}
	}
?>