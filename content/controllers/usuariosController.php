<?php

namespace content\controllers;

use config\settings\sysConfig as sysConfig;
use content\component\headElement as headElement;
use content\modelo\homeModel as homeModel;
use content\modelo\usuariosModel as usuariosModel;
use content\modelo\rolesModel as rolesModel;

class usuariosController
{
	private $url;
	private $usuario;
	private $rol;

	function __construct($url)
	{

		$this->url = $url;
		$this->usuario = new usuariosModel();
		$this->rol = new rolesModel();
	}

	public function Consultar()
	{
		$objModel = new homeModel;
		$_css = new headElement;
		$_css->Heading();
		
		 if (in_array('usuarios', $_SESSION['ut_permisos']))
            {
	$usuarios = $this->usuario->Consultar();
		$roles = $this->rol->Consultar();
		$url = $this->url;
		require_once("view/usuariosView.php");
		
		return false;
	}else{
			
			require_once("view/errorPermisoView.php");
		return true;
		}
	}
	

	public function Mostrar($param)
    {
        $usuario = $this->usuario->ObtenerOne($param);
        http_response_code(200);
        echo json_encode([
            'data' => $usuario
        ]);
    }



	public function Seguridad($param)
    {
        $usuario = $this->usuario->ObtenerOne($param);
        http_response_code(200);
        echo json_encode([
            'data' => $usuario
        ]);
    }




    public function encriptarS($palabra){
    $valor=unpack('H*',$palabra);
    $nivel1=base_convert($valor[1],16,2);
    $parte1="";
    $parte2="";

    for($n=0;$n<strlen($nivel1);$n++){
      if($n<(strlen($nivel1)/2)){
        $parte1.=$nivel1[$n];
      }
      else{
        $parte2.=$nivel1[$n];
      }
    }

    $parte1Encriptada="";
    for($n=0;$n<strlen($parte1);$n++){
      if($parte1[$n]==1){
        $parte1Encriptada.="%";
      }
      else{
        $parte1Encriptada.="$";
      }
    }

    $parte2Encriptada="";
    for($n=0;$n<strlen($parte2);$n++){
      if($parte2[$n]==1){
        $parte2Encriptada.="%";
      }
      else{
        $parte2Encriptada.="$";
      }
    }

    $nivel2=$parte2Encriptada."/".$parte1Encriptada;

    return $nivel2;


  }

  public function desencriptarS($palabra){

    $parte1="";
    $parte2="";
    $part2Decode="";

    for($n=0;$n<strlen($palabra);$n++){

      if($palabra[$n]!="/"){

        $palabra[$n]=="$"?$palabra[$n]=0:$palabra[$n]=1;

      }
    }

    $palabraDesencriptada=explode("/",$palabra);

    $part2=$palabraDesencriptada[0];

    $part1=$palabraDesencriptada[1];

    $completado= pack('H*', base_convert($part1.$part2, 2, 16));

    return $completado;
  }

  public function encriptar($cadena)
  {
	  $salida = FALSE;
	  $password = hash('sha256', CODIGO_PASSWORD); //Genera Valor Cifrado en base a un string
	  $vectorInicializacion = substr(hash('sha256', CODIGO_VECTOR), 0, 16);
	  $salida = openssl_encrypt($cadena, METODO, $password, 0, $vectorInicializacion);
	  $salida = base64_encode($salida);
	  return $salida;
  }

  public function desencriptar($cadena)
  {
	  $password = hash('sha256', CODIGO_PASSWORD);
	  $vectorInicializacion = substr(hash('sha256', CODIGO_VECTOR), 0, 16);
	  $salida = openssl_decrypt(base64_decode($cadena), METODO, $password, 0, $vectorInicializacion);
	  return $salida;
  }
  public function encriptarContrasena($password)
  {
	  $salida = password_hash($password, PASSWORD_DEFAULT, ['cost' => 8]);
	  return $salida;
  }
  public function verificarContrasena($password_verificar, $password)
  {
	  $salida = password_verify($password_verificar, $password);
	  return $salida;
  }

	public function Registrar()
	{
		if (!empty($_POST['nombre']) && !empty($_POST['apellido'])) {
			$nombre = $_POST['nombre'];
			$apellido = $_POST['apellido'];
			$cedula = $_POST['cedula']; 
			$username = $_POST['username'];
			$id_rol = $_POST['rol'];
			$pass = $_POST['pass'];
			$correo = $_POST['correo'];
			//$correo = $this->encriptarS($_POST['correo']);

			$pass = password_hash($pass, PASSWORD_BCRYPT, ['cost' => 8]);
			//echo $pass;
			//cadena que encripta
			
			$this->usuario->setNombre($nombre);
			$this->usuario->setApellido($apellido);
			$this->usuario->setCedula($cedula);
			$this->usuario->setUsername($username);
			$this->usuario->setRol($id_rol);
			$this->usuario->setPassword($pass);
			$this->usuario->setCorreo($correo);
			//Agregar un Consultar para ver si existe Antes de Guardar o Rechazar;
			$result = $this->usuario->ConsultarOne();
			if ($result['ejecucion'] == true) {
				if (count($result) > 1) {
					echo "3";
				} else {
					$execute = $this->usuario->Agregar();
					//Codigo de bitacora sobre Agregar Usuario
					if ($execute['ejecucion'] == true) {
						echo '1';
					} else {
						echo "2";
					}
				}
			} else {
				echo "2";
			}
		}
	}

	public function Modificar()
	{
		$method = $_SERVER['REQUEST_METHOD'];
		if ($method != 'POST') {
			http_response_code(404);
			return false;
		}

		if (!empty($_POST['nombre']) && !empty($_POST['apellido'])) {
			$id_usuario = $_POST['id_usuario'];
			$nombre = $_POST['nombre'];
			$apellido = $_POST['apellido'];
			$cedula = $_POST['cedula'];
			$username = $_POST['username'];
			$id_rol = $_POST['rol'];
			$pass = $_POST['pass'];
			$correo = $_POST['correo'];
		
			$pass = password_hash($pass, PASSWORD_BCRYPT, ['cost' => 8]);
			
			$this->usuario->setId($id_usuario);
			$this->usuario->setNombre($nombre);
			$this->usuario->setApellido($apellido);
			$this->usuario->setCedula($cedula);
			$this->usuario->setUsername($username);
			$this->usuario->setRol($id_rol);
			$this->usuario->setPassword($pass);
			$this->usuario->setCorreo($correo);
			
			//Agregar un Consultar para ver si existe Antes de Guardar o Rechazar;
			// $result = $this->usuario->ConsultarOne();
			$execute = $this->usuario->Modificar();
			//Codigo de bitacora sobre Agregar Usuario
			if ($execute['ejecucion'] == true) {
				echo '1';
			} else {
				echo "2";
			}
		}
	}


	public function Inhabilitar($id)
	{
		$method = $_SERVER['REQUEST_METHOD'];
		if ($method != 'POST') {
			http_response_code(404);
			return false;
		}

		$result = $this->usuario->Inhabilitar($id);
		if ($result['ejecucion'] == true) {
			echo json_encode([
				'titulo' => 'Registro eliminado!',
				'mensaje' => 'Registro eliminado en nuestro sistema',
				'tipo' => 'success'
			]);
		} else {
			echo json_encode([
				'titulo' => 'Ocurrió un error!',
				'mensaje' => 'No se pudo eliminar el registro',
				'tipo' => 'error'
			]);
		}
	}
	public function Habilitar($id)
	{
		$method = $_SERVER['REQUEST_METHOD'];
		if ($method != 'POST') {
			http_response_code(404);
			return false;
		}

		$result = $this->usuario->Habilitar($id);
		if ($result['ejecucion'] == true) {
			echo json_encode([
				'titulo' => 'Registro habilitado!',
				'mensaje' => 'Registro habilitado en nuestro sistema',
				'tipo' => 'success'
			]);
		} else {
			echo json_encode([
				'titulo' => 'Ocurrió un error!',
				'mensaje' => 'No se pudo habilitar el registro',
				'tipo' => 'error'
			]);
		}
	}
}


?>