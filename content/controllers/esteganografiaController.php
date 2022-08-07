<?php 

namespace content\controllers;

use config\settings\sysConfig as sysConfig;
use content\component\headElement as headElement;
use content\modelo\homeModel as homeModel;
use content\modelo\esteganografiaModel as esteganografiaModel;

require_once ('./vendor/autoload.php');

	class esteganografiaController{
		private $url;
		private $esteganografia;
		
		function __construct($url){
			$this->url = $url;
			$this->esteganografia = new esteganografiaModel();
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
		if (!empty($_POST['preguntauno']) && !empty($_POST['preguntados']) && !empty($_POST['preguntatres'])&&(!empty($_POST['respuestauno']) && !empty($_POST['respuestados']) && !empty($_POST['respuestatres'])))
		//if (!empty($_POST['respuestauno']) && !empty($_POST['respuestados']) && !empty($_POST['respuestatres'])) 
		{
			$preguntauno = $_POST['preguntauno'];
			$preguntados = $_POST['preguntados'];
			$preguntatres = $_POST['preguntatres']; 
			$respuestauno = $_POST['respuestauno'];
			$respuestados= $_POST['respuestados'];
      		$respuestatres= $_POST['respuestatres'];

			 //$pass_cifrado = password_hash("rasmuslerdorf", PASSWORD_BCRYPT,$pass);
			
			$this->esteganografia->setPreguntaUno($preguntauno);
			$this->esteganografia->setPreguntaDos($preguntados);
			$this->esteganografia->setPreguntaTres($preguntatres);
			$this->esteganografia->setRespuestaUno($respuestauno);
			$this->esteganografia->setRespuestaDos($respuestados);
			$this->esteganografia->setRespuestaTres($respuestatres);

			//Agregar un Consultar para ver si existe Antes de Guardar o Rechazar;
			$result = $this->esteganografia->ConsultarOne();
			if ($result['ejecucion'] == true) {
				if (count($result) > 1) {
					echo "3";
				} else {
					$execute = $this->esteganografia->AgregarRespuestas();
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


//Cambiar esta ruta al colocarlo en tu pc o en el host

 // $direccion = __DIR__.'/../../../public/img/securityEncripted/';

//$direccion = '<?=IMG_SEGURIDAD/';

$text=[];

$text2='';

$array=scandir($direccion);

foreach ($array as $a) {
if($a!='.' && $a!='..'){
   
   $separado=explode("_",$a);


   if(strlen($separado[0])>1){
   	$text2.="<td><img src='public/img/securityEncripted/".$separado[0]."' onclick='changeImg(this,`".$separado[0]."`)' class='imgSeguridad'></td><td></td>";
   }  


}
}

echo $text2."</tr></table>";

?>

	}
		

?>