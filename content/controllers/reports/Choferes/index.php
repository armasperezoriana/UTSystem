<?php

use config\settings\sysConfig as sysConfig;
	use content\component\headElement as headElement;
	use content\modelo\homeModel as homeModel;
	use content\modelo\choferesModel as choferesModel;
	use content\modelo\vehiculosModel as vehiculosModel;

require_once("../../../config/conection/database.php");
require_once("../../../config/settings/sysConfig.php");
require_once("../fpdf/fpdf.php");

class PDF extends FPDF
{
// Cabecera de página
	public function __construct(){
			// $this->con = parent::__construct();
			parent::__construct();
		}

function Header()
{
    // Logo
    $this->Image('../../../../assets/img/logo1.png',10,8,33);
    // Arial bold 15
    $this->SetFont('Arial','B',15);
    // Movernos a la derecha
    $this->Cell(80);
    $this->SetLeftMargin($this->GetPageWidth() / 2 - 63);
	$this->SetFont('Helvetica','B',15);//Tipo de letra, negrita, tamaño
	$this->Ln(10);//salto de linea
    // Título
    $this->Cell(130, 10,  'CHOFERES',2, 0,'C', 0);;


		 $this->Ln(10);
 	$this->SetFont('Arial','B',12);//Tipo de letra, negrita, tamaño

	
		$this->Ln(10);

		$this->SetFont('Arial','B',12);//Tipo de letra, negrita, tam$this
		$this->Cell(15, 10,  'N',1, 0,'C', 0);
		$this->Cell(30, 10, 'Vehiculo',1, 0,'C', 0);
		$this->Cell(30, 10, 'Nombre',1, 0,'C', 0);
		$this->Cell(30, 10, 'Apellido',1, 0,'C', 0);
		$this->Cell(25, 10, 'Cedula',1, 0,'C', 0);
		$this->Cell(30, 10, 'Telefono',1, 0,'C', 0);

		$this->Ln(10);
		$this->SetFont('Arial','',10);//Tipo de letra, negrita, tamaño
    // Salto de línea
    $this->Ln(20);

		require_once("../../../modelo/choferesModel.php");
	
	 
$this->choferes = $this->choferesModel();

foreach ($choferes as $value){
                                             		
		
	$this->Cell(10,10, $value->getNombre(), 1, 0,'C', 0);
		
	    $this->Ln(10);//salto de linea
		
$this->Output();
   }
 
	}
}


$pdf = new PDF();
$pdf->AddPage();
$pdf->SetFont('Arial','B',16);

?>