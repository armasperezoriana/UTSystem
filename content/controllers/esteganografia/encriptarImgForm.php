<?php
require_once "esteganografiaClass.php";

$esteganografia= new esteganografia();

 $nombre_tmp = $_FILES['imagen']['tmp_name'];
 $extension=explode('.',$_FILES['imagen']['name']);
 $nombre='temporalReference.'.end($extension);
move_uploaded_file($nombre_tmp, $nombre);

$esteganografia->encriptar($_POST["user"]."/".$_POST['respuesta'],$nombre,"");

unlink($nombre);


?>