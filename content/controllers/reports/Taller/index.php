<?php

use content\config\conection\database as database;
use content\modelo\vehiculosModel as vehiculosModel;


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
	$this->Cell(160, 10,  'SISTEMA UT',2, 0,'C', 0);
	$this->Ln(10);//salto de linea
    // Título
    $this->Cell(130, 10,  'REGISTRO DE TALLERES',2, 0,'C', 0);;


		 $this->Ln(10);
 	$this->SetFont('Arial','B',12);//Tipo de letra, negrita, tamaño

	//MODELOS
		//$this->Cell(200, 10,  'TALLERES',2, 0,'C', 0);
		$this->Ln(10);

		$this->SetFont('Arial','B',12);//Tipo de letra, negrita, tamaño

		$this->Cell(10, 10,  'No',1, 0,'C', 0);
		$this->Cell(30, 10, 'RIF',1, 0,'C', 0);
		$this->Cell(30, 10, 'Nombre',1, 0,'C', 0);
		$this->Cell(35, 10, 'Contactos',1, 0,'C', 0);
		$this->Cell(50, 10, 'Direccion',1, 0,'C', 0);
		$this->Ln(10);

		$this->SetFont('Arial','',10);
		//$this->Ln(10);

		$this->SetFont('Arial','',10);//Tipo de letra, negrita, tamaño
    // Salto de línea
}

// Pie de página
function Footer()
{
    // Posición: a 1,5 cm del final
    $this->SetY(-15);
    // Arial italic 8
    $this->SetFont('Arial','I',8);
    // Número de página
    $this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
}

}

$mysqli = new mysqli("localhost", "root", "", "ut");
		$resultado = $mysqli->query('SELECT * FROM taller');


$pdf = new PDF();
$pdf->AddPage();
$pdf->SetFont('Arial','B',12);
	while ($row = $resultado->fetch_assoc()) {
	
		$pdf->Cell(10,10, $row['id_taller'], 1, 0,'C', 0);
		$pdf->Cell(30,10, $row['rif'], 1, 0,'C', 0);
			$pdf->Cell(30,10, $row['nombre'], 1, 0,'C', 0);
	
			$pdf->Cell(35,10, $row['informacion_contacto'], 1, 0,'C', 0);
		$pdf->Cell(50,10, $row['direccion'], 1, 0,'C', 0);
		   $pdf->Ln(10);//salto de linea
		}
$pdf->Output();

?>