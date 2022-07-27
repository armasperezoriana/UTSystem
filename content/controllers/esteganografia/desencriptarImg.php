<?php

require_once "esteganografiaClass.php";

$esteganografia= new esteganografia();


if(strlen($_POST['nombre'])>1){
	$desencriptado=$esteganografia->desencriptar("<?=IMG_SEGURIDAD?>/securityEncripted/".$_POST['nombre']);


	if($desencriptado==$_POST['palabra']){
		echo true;
	}
	else{
		echo	$_POST['palabra']." - ".$desencriptado;
	}
}
else{

	//$direccion='C:/xampp/htdocs/dashboard/www/UT/public/img/securityEncripted/';
	//$direccion='http://sistemaut.byethost10.com/htdocs/UT/public/img/securityEncripted/';
   $direccion = '<?=IMG_SEGURIDAD?>/securityEncripted/';

	$text=[];

	$text2='';

	$array=scandir($direccion);

	foreach ($array as $a) {
		if($a!='.' && $a!='..'){

			$separado=explode("_",$a);


			if(strlen($separado[0])==1 && $separado[0]==$_POST['nombre']){
				$text[]=$a;

			}


		}
	}


	$contador=0;

	for($i=0;$i<count($text);$i++){

		$desencriptado=$esteganografia->desencriptar('<?=IMG_SEGURIDAD?>/securityEncripted/'.$text[$i]);

		if($desencriptado==$_POST['palabra']){
			$contador++;
		}

	}

	if($contador!=0){
		echo true;
	}
	else{
		echo 0;
	}


}

?>