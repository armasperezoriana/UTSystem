<?php 

use content\config\conection\database as database;
   function Conectarse()
   {
    $link=mysql_connect("localhost", "root","");
    if(!$link)
    exit();
    $con = mysql_select_db("ut",$link);
    exit();
    return $link;
   }



?>
