<?php

	namespace content\controllers;

	use config\settings\sysConfig as sysConfig;
	use content\component\headElement as headElement;
	use content\modelo\notificacionesModel as notificacionesModel;

	class notificacionesController{
		private $url;
		private $notificaciones;

		function __construct($url){
			$this->url = $url;
			$this->notificaciones= new notificacionesModel;
		}

		public function Consultar(){
			$objModel = new notificacionesModel;
			$_css = new headElement;
			$_css->Heading();
			$notificaciones=$this->notificaciones->Consultar();
			
			$url = $this->url;
			require_once("view/notificacionesView.php");
		}


	public function Mostrar($param)
    {
        $notificaciones = $this->notificaciones->ObtenerOne($param);
        http_response_code(200);
        echo json_encode([
            'data' => $notificaciones
        ]);
    }


		public function Inhabilitar($id)
	{
		$method = $_SERVER['REQUEST_METHOD'];
		if ($method != 'POST') {
			http_response_code(404);
			return false;
		}

		$result = $this->notificaciones->Inhabilitar($id);
		if ($result['ejecucion'] == true) {
			echo json_encode([
				'titulo' => 'Mantenimiento Cancelado!',
				'mensaje' => 'Eliminando notificacion',
				'tipo' => 'success'
			]);
		} else {
			echo json_encode([
				'titulo' => 'Ocurrió un error!',
				'mensaje' => 'No se pudo eliminar el registro',
				'tipo' => 'error'
			]);
		}
	}

	public function Habilitar($id)
	{
		$method = $_SERVER['REQUEST_METHOD'];
		if ($method != 'POST') {
			http_response_code(404);
			return false;
		}

		$result = $this->notificaciones->Habilitar($id);
		if ($result['ejecucion'] == true) {
			echo json_encode([
				'titulo' => 'Mantenimiento Generado!',
				'mensaje' => 'Alerta de mantenimiento con su estado en proceso pasa a Generado',
				'tipo' => 'success'
			]);
		} else {
			echo json_encode([
				'titulo' => 'Ocurrió un error!',
				'mensaje' => 'No se pudo habilitar el registro',
				'tipo' => 'error'
			]);
		}
	}
}
		

?>