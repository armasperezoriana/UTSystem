<?php

	namespace content\controllers;

	use config\settings\sysConfig as sysConfig;
	use content\modelo\homeModel as homeModel;
	use content\component\headElement as headElement;
	use content\modelo\perfilUsuarioModel as perfilUsuarioModel;
	use content\modelo\usuariosModel as usuariosModel;
use content\modelo\rolesModel as rolesModel;


	class perfilUsuarioController{
		private $url;
		private $usuario;
	private $rol;


		function __construct($url){
			$this->url = $url;
		$this->usuario = new usuariosModel();
		$this->rol = new rolesModel();
		}

		public function Consultar(){
			$objModel = new homeModel;
			$_css = new headElement;
			$_css->Heading();
			
				$usuarios = $this->usuario->Consultar();
		$roles = $this->rol->Consultar();
			$url = $this->url;
			require_once("view/perfilUsuario.php");
		}

		public function Mostrar($param)
    {
        $usuario = $this->usuario->ObtenerOne($param);
        http_response_code(200);
        echo json_encode([
            'data' => $usuario
        ]);
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


	}
		

?>