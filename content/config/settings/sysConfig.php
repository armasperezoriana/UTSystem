<?php

	/* utilizaremos namespace en la primera línea de código */
	namespace config\settings;

	/* Definimos las constantes que usaremos */
	
	define("_ROUTE_" , "");					/* direccion del proyecto */
	define("_THEME_" , "/assets");			/* Direccion de recursos y estilos */
	define("_INDEX_FILE_" , "/index.php");	/* direccion del archivo index */

	define('_DIRECTORY_', 'content/controllers/'); 					/* Direccion de controladores */
	define("_MODEL_" , "content/modelo/");							/* direccion de los modelos */
	define("_CONTROLLER_" , "Controller.php");						/* complemento para la llamada de controladores */
	
	define("_DB_SERVER_" , "http://localhost/");					/* nombre del servidor */

	define('_DB_MANAGER_', 	'mysql');						        /* manejador de base de datos */
	define("_DB_WEB_" , "ut");								/* nombre de la base de datos */
	define('_HOST_', 		'localhost');							/* nombre del host */
	define("_DB_USER_", "root");									/* nombre del usuario de la BD */
	define("_DB_PASS_", "");										/* contraseña de la base de datos  */
	define("_COMPLEMENT_" , "/view/assets/");					/* direccion del proyecto */
	define("_JS_" , "/content/assets/js/");		/* direccion de js*/
	define("_REPORTS_" , "/content/controllers/reports/");					/* reportes pdf del proyecto */
	define("_IMG_SEGURIDAD_" , "/content/controllers/esteganografia/");					/* ESTEGANOGRAFIA O IMAGEN DE SEGURIDAD */
		define("_ESTADISTICOS_" , "/content/modelo/estadisticos/");					/* reportes estadisticos del proyecto */
		define("_DIR_" , "/content/controller/vendor/");					/* VENDOR IMAGEN DE SEGURIDAD */
	define("_NAMESYSTEM_" , "UT");					/* direccion del proyecto */
   
	/* Imagenes de seguridad */		
	const SECURITY_IMGS =  [
		'eXgxR2trVEtzeXVueU9zdXBSRjNKZz09.png', 'YXo0ZDdOM0lZZWhCaE8yczcvZDdFZz09.png', 
		'QVZqY3ZuempkRjNka1Bjc0NrcDVNdz09.png', 'ZHRlVlJGQloyZEZWVS9BY05LL0U5UT09.png'
	];
	
	/* clase con el nombre config  */
	class sysConfig{

		/* método publico llamado _init()   */
		public function _int(){
			/* verifica si existe dentro de la carpeta Controllers el archivo frontcontroller.php */
			if (file_exists("content/controllers/frontcontroller.php")){
				require_once('content/controllers/frontcontroller.php');
			}
			else{
				die("<script>location='?url=error'</script>");
			}
		}
		/* métodos protegidos los cuales retornan los define que se definieron en la parte superior del código */
		protected function _ROUTE_()		{return _ROUTE_;}
		protected function _THEME_()		{return _THEME_;}
		protected function _INDEX_FILE_()	{return _INDEX_FILE_;}
		protected function _DIRECTORY_()	{return _DIRECTORY_;}
		protected function _MODEL_()		{return _MODEL_;}
		protected function _CONTROLLER_()	{return _CONTROLLER_;}
		protected function _JS_()	        {return _JS_;}
		protected function _DB_SERVER_()	{return _DB_SERVER_;}
		protected function _DB_MANAGER_()	{return _DB_MANAGER_;}
		protected function _DB_WEB_()		{return _DB_WEB_;}
		protected function _HOST_()			{return _DB_WEB_;}
		protected function _DB_USER_()		{return _DB_USER_;}

		protected function _REPORTS_()		{return _REPORTS_;}
		protected function _ESTADISTICOS_()		{return _ESTADISTICOS_;}
		protected function _DB_PASS_()		{return _DB_PASS_;}

	}


?>