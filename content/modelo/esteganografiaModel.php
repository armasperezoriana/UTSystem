<?php

	namespace content\modelo;

	use content\config\conection\database as database;
  

	class esteganografiaModel extends database{

		private $con;
    private $id_usuario;
    private $preguntauno;
    private $preguntados;
    private $preguntatres;
    private $respuestauno;
    private $respuestados;
    private $respuestatres;

		public function __construct(){
			$this->con = parent::__construct();
		}

    public function ConsultarOne(){
			try {
				$query = parent::prepare("SELECT * FROM seguridad_preguntas WHERE id_usuario = '{$this->id_usuario}'");
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
    public function ObtenerOne($id_usuario){
			try {
				$query = parent::prepare("SELECT * FROM seguridad_preguntas WHERE id_usuario = $id_usuario");
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


    public function Agregar(){
      $id=0;
			try {
				$query = parent::prepare('SELECT MAX(id_s_pregunta) as max FROM seguridad_preguntas WHERE id_s_pregunta');
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

				$query = parent::prepare("INSERT INTO seguridad_preguntas (preguntauno, preguntados, preguntatres) VALUES ('{$this->preguntauno}', '{$this->preguntados}', '{$this->preguntatres}')");
       // $query = parent::prepare("INSERT INTO seguridad_respuestas (respuestauno, respuestados, respuestatres) VALUES ('{$this->respuestauno}', '{$this->respuestados}', '{$this->respuestatres}')");
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

    public function AgregarRespuestas(){
      $id=0;
			try {
				$query = parent::prepare('SELECT MAX(id_s_respuestas) as max FROM seguridad_respuestas WHERE id_s_respuestas');
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

				//$query = parent::prepare("INSERT INTO seguridad_preguntas (preguntauno, preguntados, preguntatres) VALUES ('{$this->preguntauno}', '{$this->preguntados}', '{$this->preguntatres}')");
        $query = parent::prepare("INSERT INTO seguridad_respuestas (respuestauno, respuestados, respuestatres) VALUES ('{$this->respuestauno}', '{$this->respuestados}', '{$this->respuestatres}')");
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

  public function encriptar($palabra,$dirImg,$name){
      $msg = $palabra; //To encrypt
      $src = $dirImg; //Start image

      $msg .='|'; //EOF sign, decided to use the pipe symbol to show our decrypter the end of the message
      $msgBin = $this->toBin($msg); //Convert our message to binary
      $msgLength = strlen($msgBin); //Get message length
      $img = imagecreatefromjpeg($src); //returns an image identifier
      list($width, $height, $type, $attr) = getimagesize($src); //get image size

      if($msgLength>($width*$height)){ //The image has more bits than there are pixels in our image
                echo('Message too long. This is not supported as of now.');
                die();
              }

      $pixelX=0; //Coordinates of our pixel that we want to edit
      $pixelY=0; //^

      for($x=0;$x<$msgLength;$x++){ //Encrypt message bit by bit (literally)

        if($pixelX === $width+1){ //If this is true, we've reached the end of the row of pixels, start on next row
        $pixelY++;
        $pixelX=0;
        }

          if($pixelY===$height && $pixelX===$width){ //Check if we reached the end of our file
            echo('Max Reached');
            die();
          }

                $rgb = imagecolorat($img,$pixelX,$pixelY); //Color of the pixel at the x and y positions
                $r = ($rgb >>16) & 0xFF; //returns red value for example int(119)
                $g = ($rgb >>8) & 0xFF; //^^ but green
                $b = $rgb & 0xFF;//^^ but blue

                $newR = $r; //we dont change the red or green color, only the lsb of blue
                $newG = $g; //^
                $newB = $this->toBin($b); //Convert our blue to binary
                $newB[strlen($newB)-1] = $msgBin[$x]; //Change least significant bit with the bit from out message
                $newB = $this->toString($newB); //Convert our blue back to an integer value (even though its called tostring its actually toHex)

                $new_color = imagecolorallocate($img,$newR,$newG,$newB); //swap pixel with new pixel that has its blue lsb changed (looks the same)
                imagesetpixel($img,$pixelX,$pixelY,$new_color); //Set the color at the x and y positions
                $pixelX++; //next pixel (horizontally)

      }

        if($name!=""){
          $randomDigit=$name."_result".rand(1,9999);
        }
        else{
            $randomDigit ="result".rand(1,9999); //Random digit for our filename
            }
            imagepng($img,'../../../public/img/securityEncripted/' . $randomDigit . '.png'); //Create image
            imagepng($img,'IMG_SEGURIDAD/securityEncripted/' . $randomDigit . '.png'); //Create image
            echo true; //Echo our image file name

            imagedestroy($img); //get rid of it

    }


public function toBin($str){
        $str = (string)$str;
        $l = strlen($str);
        $result = '';
        while($l--){
          $result = str_pad(decbin(ord($str[$l])),8,"0",STR_PAD_LEFT).$result;
        }
        return $result;
}

   //Convert binary to string
public function toString($str) {
          $text_array = explode("\r\n", chunk_split($str, 8));
          $newstring = '';
          for ($n = 0; $n < count($text_array) - 1; $n++) {
            $newstring .= chr(base_convert($text_array[$n], 2, 10));
          }
          return $newstring;
}


public function desencriptar($imgSrc){

        $src = $imgSrc; //Change this to the image to decrypt
        $img = imagecreatefrompng($src); //Returns image identifier
        $real_message = ''; //Empty variable to store our message

        $count = 0; //Wil be used to check our last char
        $pixelX = 0; //Start pixel x coordinates
        $pixelY = 0; //start pixel y coordinates

        list($width, $height, $type, $attr) = getimagesize($src); //get image size

        for ($x = 0; $x < ($width*$height); $x++){ //Loop through pixel by pixel
          if($pixelX === $width+1){ //If this is true, we've reached the end of the row of pixels, start on next row
          $pixelY++;
          $pixelX=0;
        }

        if($pixelY===$height && $pixelX===$width)
        { //Check if we reached the end of our file
          echo('Max Reached');
          die();
        }
        $rgb = imagecolorat($img,$pixelX,$pixelY); //Color of the pixel at the x and y positions
        $r = ($rgb >>16) & 0xFF; //returns red value for example int(119)
        $g = ($rgb >>8) & 0xFF; //^^ but green
        $b = $rgb & 0xFF;//^^ but blue

        $blue = $this->toBin($b); //Convert our blue to binary

        $real_message .= $blue[strlen($blue) - 1]; //Ad the lsb to our binary result

        $count++; //Coun that a digit was added

        if ($count == 8) { //Every time we hit 8 new digits, check the value
            if ($this->toString(substr($real_message, -8)) === '|'){ //Whats the value of the last 8 digits?
              //Yes we're done now
                $real_message = $this->toString(substr($real_message,0,-8)); //convert to string and remove /
          
                return $real_message; //Show
                die;
            }
            $count = 0; //Reset counter
          }
        $pixelX++; //Change x coordinates to next
        }
        
  }

  public function setPreguntaUno($preguntauno){
    $this->preguntauno = $preguntauno;
  }
  public function setPreguntaDos($preguntados){
    $this->preguntados = $preguntados;
  }
  public function setPreguntaTres($preguntatres){
    $this->preguntatres = $preguntatres;
  }

  public function setRespuestaUno($respuestauno){
    $this->respuestauno = $respuestauno;
  }
  public function setRespuestaDos($respuestados){
    $this->respuestados = $respuestados;
  }
  public function setRespuestaTres($respuestatres){
    $this->respuestatres = $respuestatres;
  }
}

?>