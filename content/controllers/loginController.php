<?php

namespace content\controllers;

use config\settings\sysConfig as sysConfig;
use content\component\headElement as headElement;
use content\modelo\loginModel as loginModel;
use content\modelo\usuariosModel as usuariosModel;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\SMTP;

class loginController
{
	private $url;
	function __construct($url)
	{
		$this->url = $url;
		$this->usuario = new usuariosModel();
		$this->login = new loginModel();
	}

	public function Consultar()
	{

    
		if(!empty($_SESSION['ut_usuario'])) {
			header('Location: Home');
		}
		$objModel = new loginModel;
		$_css = new headElement;
		$_css->Heading();

		$url = $this->url;
		$usuarios = $this->usuario->Consultar();

		require_once("view/loginView.php");

	}


	public function OlvidoClave(){

		if(empty($_SESSION['ut_usuario'])){
			echo ("Vamos a recuperar el usuario");
		require_once("view/recuperarUsuarioView.php");

		}else{

		require_once("view/loginView.php");
	
		}

	}


	public function IniciarSesion()
	{
		if (!empty($_POST['username']) || !empty($_POST['pass'])) {
			$username = $_POST['username'];
			$pass= $_POST['pass'];
			// $pass = $this->usuario->encriptarS($_POST['pass']);
			//$pass = password_verify(PASSWORD_BCRYPT,$pass);


			 $this->usuario->setPassword($pass);
			//Agregar un Consultar para ver si existe el registro; 
			$result = $this->usuario->ObtenerUsuario($username);
			
			if ($result['ejecucion'] == true) {
				$res = $result['resultado'];
				if ($res) {
					if(password_verify($pass, $res['contrasena'])){
						$resultP = $this->usuario->ObtenerPermisos($res['rol']);
						$permisos = $resultP['resultado'];
						$_SESSION['ut_usuario'] = $res['usuario'];
						$_SESSION['ut_id'] = $res['id_usuario'];
						$_SESSION['ut_rol'] = $res['rol'];
						$_SESSION['ut_nombre'] = $res['nombre'];
						$_SESSION['ut_apellido'] = $res['apellido'];
						$_SESSION['ut_cedula'] = $res['cedula'];
						$_SESSION['ut_correo'] = $res['correo'];
						$_SESSION['ut_permisos'] = $permisos;
						echo json_encode([
							'tipo' => 'success', 'mensaje' => 'Sesión Iniciada'
						]); 
					}
					else{
						echo json_encode([
							'titulo' => '¡Contraseña incorrecta!',
							'mensaje' => 'La Contraseña ingresada es incorrecta',
							'tipo' => 'error',
						]);
					}
				} else {
					echo json_encode([
						'titulo' => '¡Usuario incorrecto!',
						'mensaje' => 'Por favor verifique el usuario',
						'tipo' => 'error',
					]);
				}
			} else {
				echo json_encode([
					'titulo' => '¡Error!',
					'mensaje' => 'Intente nuevamente',
					'tipo' => 'error',
				]);
			}
		}
	}

	
	public function recuperarClave()
	{
		if (!empty($_POST['username']) || !empty($_POST['correo'])) {
			$username = $_POST['username'];
			$correo= $_POST['correo'];
			
			 $this->usuario->setCorreoPassword($correo);
			$result = $this->usuario->ObtenerUsuario($username);
			
			if ($result['ejecucion'] == true) {
				$res = $result['resultado'];
				if ($res) {
					if($result==true){
					$correo = $this->usuario->buscarCorreo($correo);
					//$execute = $this->usuario->Recuperar();
						echo json_encode([
							'tipo' => 'success', 'mensaje' => 'Datos verficados'
						]); 

						$res = true;
					}
					else{
						echo json_encode([
							'titulo' => '¡Ha ocurrido un error!',
							'mensaje' => 'Los datos no existen en el resgistro',
							'tipo' => 'error',
						]);
						$res = true;
					}
				} else {
					echo json_encode([
						'titulo' => '¡Usuario incorrecto!',
						'mensaje' => 'Por favor verifique el usuario',
						'tipo' => 'error',
					]);
				}
			} else {
				echo json_encode([
					'titulo' => '¡Error! Usuario o correo invalidos',
					'mensaje' => 'Intente nuevamente',
					'tipo' => 'error',
				]);
			}
	}
}

public function mailReset(){
require 'PHPMailer/Exception.php';
require 'PHPMailer/PHPMailer.php';
require 'PHPMailer/SMTP.php';

require 'vendor/autoload.php';

//Create an instance; passing `true` enables exceptions
$mail = new PHPMailer(true);

try {
    //Server settings
    $mail->SMTPDebug = 0;                      //Enable verbose debug output
    $mail->isSMTP();                                            //Send using SMTP
    $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
    $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
    $mail->Username   = 'armasoriana98@gmail.com';                     //SMTP username
    $mail->Password   = 'santiagorafael01.';                               //SMTP password
    $mail->SMTPSecure = 'tls';            //Enable implicit TLS encryption
    $mail->Port       = 587;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

    //Recipients
    $mail->setFrom('armasoriana98@gmail.com', 'Mailer');
    $mail->addAddress('armasoriana98@gmail.com', 'Oriana');     //a quien se le va enviar
    
    //Content
    $mail->isHTML(true);                                  //Set email format to HTML
    $mail->Subject = 'Restablecer password SISTEMA UT';
    $mail->Body    = 'Correo de prueba <b>in bold!</b>';

    $mail->send();
    echo 'Mensaje enviado correctamente';
} catch (Exception $e) {
    echo "Message no pudo enviarse. Error: {$mail->ErrorInfo}";
}
}


	public function Iniciar($username, $pass)
	{

		if (isset($_POST['username']) && ($_POST['pass'] !== "")) {

			$username = ($_POST['username'] !== "") ? $_POST['username'] : NULL;

			$pass = ($_POST['pass'] !== "") ? $_POST['pass'] : NULL;

			//$pass = $this->desencriptarS($pass);
		} else {

			echo "Datos equivocados";
		}
	}

	public function logout(){
		session_destroy();
		header('Location: ../login');
	}
}
