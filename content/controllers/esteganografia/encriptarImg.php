<?php
require_once "esteganografiaClass.php";

$esteganografia= new esteganografia();


//echo $_POST['datos']['num'];

$esteganografia->encriptar($_POST['datos']["user"]."/".$_POST['datos']['palabra'],$_POST['datos']['imagen'],$_POST['datos']['num']);


?>