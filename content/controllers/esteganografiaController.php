<?php 

namespace content\controllers;

use config\settings\sysConfig as sysConfig;
use content\component\headElement as headElement;
use content\modelo\homeModel as homeModel;
use content\modelo\esteganografiaModel as esteganografiaModel;
use content\modelo\usuariosModel as usuariosModel;

require_once ('./vendor/autoload.php');

	class esteganografiaController{
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

		if (!empty($_POST['preguntauno'])&&(!empty($_POST['respuestauno']) ))
		//if (!empty($_POST['respuestauno']) && !empty($_POST['respuestados']) && !empty($_POST['respuestatres'])) 
		{ 
			$preguntauno = $_POST['preguntauno'];
			//$preguntados = $_POST['preguntados'];
			//$preguntatres = $_POST['preguntatres']; 
			$respuestauno = $_POST['respuestauno'];
			//$respuestados= $_POST['respuestados'];
      		//$respuestatres= $_POST['respuestatres'];

			 //$pass_cifrado = password_hash("rasmuslerdorf", PASSWORD_BCRYPT,$pass);
			
			$this->esteganografia->setPreguntaUno($preguntauno);
			//$this->esteganografia->setPreguntaDos($preguntados);
			//$this->esteganografia->setPreguntaTres($preguntatres);
			$this->esteganografia->setRespuestaUno($respuestauno);
			$this->esteganografia->setIdUsuario($this->usuario->ConsultarUsuarioId());
			//$this->esteganografia->setRespuestaDos($respuestados);
			//$this->esteganografia->setRespuestaTres($respuestatres);

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

	public function cifrarEnImagen($message, $img, $id){//Grabar mensaje en imagen
        $id = $this->encriptar("_$id");
        $src = "public/assets/img/seguridad/".$img;
        $src_result = "public/assets/img/seguridad/".$id.".png";

        $binary_message = $this->imgBinaria($message);
        $message_length = strlen($binary_message);
        
        $im = imagecreatefrompng($src);//Obtener imagen a partir de fichero
        $p = 0;

        for($x = 0; $x < $message_length/3; $x++){
            $y = $x;
            $rgb = imagecolorat($im, $x, $y);//Obtener índice del color de un pixel
            $r = ($rgb >> 16) & 0xFF;//Obtener colores RGB
            $g = ($rgb >> 8) & 0xFF;
            $b = $rgb & 0xFF;
            $newR = $this->imgBinaria($r);
            $newG = $this->imgBinaria($g);
            $newB = $this->imgBinaria($b);
            if(isset($binary_message[$p])){//Si no existe algunas de las posiciones del mensaje se no se modifica el color
                $newR[strlen($newR) - 1] = $binary_message[$p];
                $newR = $this->imgString($newR);
            }
            else{
                $newR = $r;
            }
            if(isset($binary_message[$p+1])){
                $newG[strlen($newG) - 1] = $binary_message[$p+1];
                $newG = $this->imgString($newG);
            }
            else{
                $newG = $g;
            }
            if(isset($binary_message[$p+2])){
                $newB[strlen($newB) - 1] = $binary_message[$p+2];
                $newB = $this->imgString($newB);
            }
            else{
                $newB = $b;
            }
            $p += 3;
            $new_color = imagecolorallocate($im, $newR, $newG, $newB);//Asignar el nuevo color con el mensaje dentro
            imagesetpixel($im, $x, $y, $new_color);//Establecer el pixel en la imagen
            
        }
        imagepng($im, $src_result);//Crear la imagen
        imagedestroy($im);
        return $id;
    }
    public function descifrarImagen($img){//Extraer mensaje desde imagen
        $message = '';
        $src = "public/assets/img/seguridad/".$img;
        $im = imagecreatefrompng($src);//Obtener imagen a partir de un fichero
        for($x = 0; $x < 125; $x++){
            $y = $x;
            if(!(imagecolorat($im, $x, $y))){//Si no se obtiene un color se detiene el For
                break;
            }
            $rgb = imagecolorat($im, $x, $y);  
            $r = ($rgb >> 16) & 0xFF;
            $g = ($rgb >> 8) & 0xFF;
            $b = $rgb & 0xFF;

            $red = $this->imgBinaria($r);
            $green = $this->imgBinaria($g);
            $blue = $this->imgBinaria($b);
            $message .= $red[strlen($red) - 1];
            $message .= $green[strlen($green) - 1];
            $message .= $blue[strlen($blue) - 1];//Obtener parte del mensaje desde la última posición del valor del color azul
        }
        $message = $this->imgString($message);
        return $message;
    }

    private function imgBinaria($str){//De decimal pasa a binario
        $str = (string)$str;//Asignar el tipo de variable como string
        $l = strlen($str);
        $result = '';
        while($l--){
            //Pasar el código ASCII a decimal, luego a binario
            $result = str_pad(decbin(ord($str[$l])), 8, "0", STR_PAD_LEFT).$result;
        }
        return $result;
    }
    private function imgString($str){//De binario a string
        //Dividir cadena en trozos pequeños y convertir en array
        $text_array = explode("\r\n", chunk_split($str, 8));
        $newstring = '';
        $response = '';
        $isUTF8 = true;
        for($n= 0; $n < count($text_array) - 1; $n++){
            //Convertir un número y devolver el caracter específico
            $newstring .= chr(base_convert($text_array[$n], 2, 10));
        }
        for ($i=0; $i < strlen($newstring); $i++) { //Extraer de la cadena solo caracteres UTF8
           $isUTF8 = preg_match('/^[\w\$\&]+$/', $newstring[$i]);
           if(!$isUTF8){
               break;
           }
           $response .= $newstring[$i];
        }
        return $response;
    }
}



?>