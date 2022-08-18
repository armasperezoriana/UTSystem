<?php

namespace content\controllers;

use config\settings\sysConfig as sysConfig;
use content\component\headElement as headElement;
use content\modelo\homeModel as homeModel;
use content\modelo\usuariosModel as usuariosModel;
use content\modelo\rolesModel as rolesModel;
use content\modelo\esteganografiaModel as esteganografiaModel;
use content\traits\Utility;

class usuariosController
{
	use Utility;

	private $url;
	private $usuario;
	private $rol;
	private $esteganografia;

	function __construct($url)
	{

		$this->url = $url;
		$this->usuario = new usuariosModel();
		$this->esteganografia = new esteganografiaModel();
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
						$usu = $this->usuario->ObtenerUsuario($username);
						$id = $usu['resultado']['id_usuario'];
						$respuestauno = $_POST['respuestauno'];
						$preguntauno = $_POST['preguntauno'];
						$img = $_POST['img'];
						$img_encriptada = $this->cifrarEnImagen($respuestauno, $img, $id);
						$this->esteganografia->setPreguntaUno($preguntauno);
						$this->esteganografia->setRespuestaUno($respuestauno);
						$this->esteganografia->setImg($img);
						$this->esteganografia->setImg_encriptada($img_encriptada.".png");
						//$this->esteganografia->setImgEncriptada($ImgEncriptada);
						$this->esteganografia->setIdUsuario($id);
						$execute = $this->esteganografia->Agregar();
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
			$execute = $this->usuario->Modificar();
			if ($execute['ejecucion'] == true) {
				$usu = $this->usuario->ObtenerUsuario($username);
						$id = $usu['resultado']['id_usuario'];
						$usu = $this->usuario->ObtenerUsuario($username);
						$id = $usu['resultado']['id_usuario'];
						$respuestauno = $_POST['respuestauno'];
						$preguntauno = $_POST['preguntauno'];
						$img = $_POST['img'];
						$img_encriptada = $this->cifrarEnImagen($respuestauno, $img, $id);
						$this->esteganografia->setPreguntaUno($preguntauno);
						$this->esteganografia->setRespuestaUno($respuestauno);
						$this->esteganografia->setImg($img);
						$this->esteganografia->setImg_encriptada($img_encriptada.".png");
						//$this->esteganografia->setImgEncriptada($ImgEncriptada);
						$this->esteganografia->setIdUsuario($id);
						//$execute = $this->esteganografia->Agregar();
						$execute = $this->esteganografia->Modificar();
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