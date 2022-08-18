<?php
// Varios destinatarios
$para  = 'armasoriana98@example.com' . ', '; // atención a la coma
$para .= 'wez@example.com';

// título
$título = 'Restablecer password SISTEMA UT';
$codigo =rand(1000,9999);
// mensaje
$mensaje = '
<html>
<head>
  <title>SISTEMA UT</title>
</head>
<body>
  <p>Esta es tu contraseña</p>
  <h2><style="align-center; background:#ccc;">Puede reestablecer su cuenta con estos datos</h2>
  <h2><style="align-center; background:#ccc;">'.$codigo.'</h2>
<p> <small> Si usted no envio este código porfavor omitalo</small></p>
</body>
</html>
';

/*/ Para enviar un correo HTML, debe establecerse la cabecera Content-type
$cabeceras  = 'MIME-Version: 1.0' . "\r\n";
$cabeceras .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

// Cabeceras adicionales
$cabeceras .= 'To: Mary <mary@example.com>, Kelly <kelly@example.com>' . "\r\n";
$cabeceras .= 'From: Recordatorio <cumples@example.com>' . "\r\n";
$cabeceras .= 'Cc: birthdayarchive@example.com' . "\r\n";
$cabeceras .= 'Bcc: birthdaycheck@example.com' . "\r\n";
*/
// Enviarlo
mail($para, $título, $mensaje, $cabeceras);

?>