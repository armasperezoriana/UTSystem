<?php

use content\config\conection\database as database;
use content\modelo\vehiculosModel as vehiculosModel;


require_once("fpdf/fpdf.php");

class PDF extends FPDF
{
// Cabecera de página
function Header()
{
    // Logo
    $this->Image('../img/logo1.png',10,8,33);
    // Arial bold 15
    $this->SetFont('Arial','B',15);
    // Movernos a la derecha
    $this->Cell(80);
    $this->SetLeftMargin($this->GetPageWidth() / 2 - 63);
	$this->SetFont('Helvetica','B',15);//Tipo de letra, negrita, tamaño
	$this->Ln(10);//salto de linea
    // Título
    $this->Cell(130, 10,  'VEHICULOS REGISTRADOS',2, 0,'C', 0);;


		 $this->Ln(10);
 	$this->SetFont('Arial','B',12);//Tipo de letra, negrita, tamaño

		$this->Cell(10, 10,  'ID',1, 0,'C', 0);
		$this->Cell(25, 10, 'Placa',1, 0,'C', 0);
		$this->Cell(40, 10, 'Modelo',1, 0,'C', 0);
		$this->Cell(50, 10, 'Funcionamiento',1, 0,'C', 0);
		$this->Ln(10);

		$this->SetFont('Arial','',10);//Tipo de letra, negrita, tamaño
    // Salto de línea
    $this->Ln(20);
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

$pdf = new PDF();
$pdf->AddPage();
$pdf->SetFont('Arial','B',16);


$pdf = $this->vehiculosModel();
				$query = 'SELECT * FROM vehiculos';
				$row = $query;
			

		$pdf->Cell(10,10, $row->getId(), 1, 0,'C', 0);
			$pdf->Cell(25,10, $row->getPlaca(), 1, 0,'C', 0);
			$pdf->Cell(40,10, $row->getModelo(), 1, 0,'C', 0);
			$pdf->Cell(50,10, $row->getFuncionamiento(), 1, 0,'C', 0);
		    $pdf->Ln(10);//salto de linea
		


//$pdf->Cell(40,10,'¡Hola, Mundo!');
$pdf->Output();

?>