<?php 

namespace content\controllers;

use config\settings\sysConfig as sysConfig;
use content\component\headElement as headElement;
use content\modelo\homeModel as homeModel;
use content\modelo\esteganografiaModel as esteganografiaModel;
use content\modelo\usuariosModel as usuariosModel;
use content\traits\Utility;

require_once ('./vendor/autoload.php');

	class esteganografiaController{
		use Utility;
        
        private $url;
		private $esteganografia;
		private $usuario;
		
		function __construct($url){
			$this->url = $url;
			$this->esteganografia = new esteganografiaModel();
			$this->usuario = new usuariosModel();

		}

		public function Consultar(){
			$objModel = new homeModel;
			$_css = new headElement;
			$_css->Heading();
			
			$url = $this->url;
			require_once("view/esteganografiaView.php");
		}

    public function RegistrarPregunta()
	{

		if(!empty($_POST['preguntauno'])&&(!empty($_POST['respuestauno'])&&(!empty($_POST['img']))))	
		{ 
            $id = $this->usuario->ConsultarUsuarioId();
            $respuestauno = $_POST['respuestauno'];
			$preguntauno = $_POST['preguntauno'];
			$img = $_POST['img'];
            $img_encriptada = $this->cifrarEnImagen($respuestauno, $img, $id);
			//$img_encriptada = $_POST['img_encriptada'];

			
			$this->esteganografia->setPreguntaUno($preguntauno);
            $this->esteganografia->setRespuestaUno($respuestauno);
			$this->esteganografia->setImg($img);
			$this->esteganografia->setImg_encriptada($img_encriptada.".png");
			//$this->esteganografia->setImgEncriptada($ImgEncriptada);
			$this->esteganografia->setIdUsuario($id);
			
			//Agregar un Consultar para ver si existe Antes de Guardar o Rechazar;
			$result = $this->esteganografia->ConsultarOne();
			if ($result['ejecucion'] == true) {
				if (count($result) > 1) {
					echo "3";
				} else {
					//$execute = $this->esteganografia->AgregarRespuestas();
					$execute = $this->esteganografia->Agregar();
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

    public function pr($param){
        $palabra = $this->encriptar($param);
        $nombre_img = $this->cifrarEnImagen($palabra, 'ZHRlVlJGQloyZEZWVS9BY05LL0U5UT09.png', 2);
        echo $nombre_img;
    }
    public function dr($i)
    {
        $m = $this->descifrarImagen($i);
        echo $m ."<br/>";
        $m = $this->desencriptar($m);
        echo $m;
    }
}



?>