<?php

require_once "esteganografiaClass.php";

$esteganografia = new esteganografia();


//$direccion='C:/xampp/htdocs/dashboard/www/UT/public/img/securityEncripted/';
//$direccion='http://sistemaut.byethost10.com/htdocs/UT/public/img/securityEncripted/';
$direccion = __DIR__ . '/../../../public/img/securityEncripted/';

$usuario = $_POST['usuario'];
$palabra="";
$imagen="";

$array=scandir($direccion);

for ($i=0;$i<count($array);$i++){
    if($array[$i]!='.' && $array[$i]!='..'){
   $desencriptado=$esteganografia->desencriptar("../../../public/img/securityEncripted/".$array[$i]);
   $separado=explode("/",$desencriptado);
   if($separado[0]==$usuario){
       $palabra=$separado[1];
       $imagen=$array[$i];
   }
    }
}


echo $palabra."-".$imagen;



