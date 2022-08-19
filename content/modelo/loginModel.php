<?php

	namespace content\modelo;

	use content\config\conection\database as database;


	class loginModel extends database{

		private $con;
		public $usuario;
		public $correo;
		private $pass;

		public function __construct(){
			$this->con = parent::__construct();
		}


			public function ConsultarIniciar(){
		try{
				$query = parent::prepare("SELECT * FROM usuarios WHERE status = 1 AND usuario = '{$this->username}' AND contrasena = '{$this->password}'");

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



		function usuarioExiste ( $usuario, $contrasena ) {

      try {
        $query = parent::prepare('SELECT * FROM usuarios WHERE usuario = :usuario AND contrasena = :contrasena AND status = 1');
        $query->execute(['username' => $usuario, 'password' => $contrasena]);

        return $query->rowCount();
      } catch(PDOException $e) {
        return false;
      }
    }




		function usuario_sesion($usuario){

			try{
				$query = parent::prepare("SELECT * FROM usuarios WHERE usuario = :usuario");
				 while($row = $query->fetch()){
         session_start();
          $_SESSION['id_usuario'] = ($row['id_usuario']);
          $_SESSION['cedula'] = ($row['cedula']);
          $_SESSION['usuario'] = ($row['usuario']);
          $_SESSION['nombre'] = ($row['nombre']);
          $_SESSION['apellido'] = ($row['apellido']);
          $_SESSION['cedula'] = ($row['cedula']);
          $_SESSION['correo'] = ($row['correo']);
           $_SESSION['nombre_rol'] = ($row['nombre_rol']);
          $_SESSION['rol'] = ($row['rol']);
 

        }
         return $query->rowCount();
			}catch(PDOException $e) {
				$errorReturn = ['ejecucion' => false];
				$errorReturn += ['info' => "error sql:{$e}"];
				return $errorReturn;
		}

	}

	public function CambiarPassword(){

		$method = $_SERVER['REQUEST_METHOD'];
		if ($method != 'POST') {
			http_response_code(404);
			return false;
		}
		if (!empty($_POST['correo'])) {
			$correo = $_POST['correo'];
			//$pass = $_POST['pass'];

			//$pass = password_hash($pass, PASSWORD_BCRYPT, ['cost' => 8]);
			
			//$this->usuario->setPassword($pass);
			$this->usuario->setCorreo($correo);		
	
			//$this->usuario->setUsername($username);

			$execute = $this->login->ModificarPassword();
			if ($execute['ejecucion'] == true) {
				$usu = $this->usuario->ObtenerUsuario($username);
						$id = $usu['resultado']['id_usuario'];
					//	$usu = $this->usuario->ObtenerUsuario($username);
					//	$id = $usu['resultado']['id_usuario'];
					//	$pass = $_POST['pass'];
						//$execute = $this->usuario->Modificar();
						echo '1';
			} else {
				echo "2";
			}
		}
	}

	}
?>