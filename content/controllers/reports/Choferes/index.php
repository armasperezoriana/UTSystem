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
    $this->SetFont('Arial','B',13);
    // Movernos a la derecha
    $this->Cell(80);
    $this->SetLeftMargin($this->GetPageWidth() / 2 - 80);
	$this->SetFont('Helvetica','B',15);//Tipo de letra, negrita, tamaño
	$this->Cell(160, 10,  'SISTEMA UT',2, 0,'C', 0);
	$this->Ln(20);//salto de linea
    // Título
    $this->Cell(160, 10,  'REGISTRO DE CHOFERES',2, 0,'C', 0);
	 $this->Ln(15);
 	$this->SetFont('Helvetica','B',12);//Tipo de letra, negrita, tamaño

 		$this->Cell(15, 10,  'ID',1, 0,'C', 0);
		$this->Cell(30, 10, 'Placa',1, 0,'C', 0);
		$this->Cell(40, 10, 'Nombre',1, 0,'C', 0);
		$this->Cell(40, 10, 'Apellido',1, 0,'C', 0);
		$this->Cell(25, 10, 'Cedula',1, 0,'C', 0);
		$this->Cell(30, 10, 'Telefono',1, 0,'C', 0);

		$this->Ln(10);
		$this->SetFont('Arial','',10);
	}


		// Pie de página
function Footer()
{
    // Posición: a 1,5 cm del final
    $this->SetY(-15);
    // Arial italic 8
    $this->SetFont('Arial','I',8);
    // Número de página
    $this->Cell(0,10,'Page '.$this->PageNo(),0,0,'C');

}


}
	
		$mysqli = new mysqli("localhost", "root", "", "ut");
		$resultado = $mysqli->query('SELECT * FROM choferes');

		$pdf = new PDF();
		$pdf->AddPage();
		$pdf->SetFont('Arial','B',12);

		while ($row = $resultado->fetch_assoc()) {
		$pdf->Cell(15,10, $row['id_choferes'], 1, 0,'C', 0);
		$pdf->Cell(30,10, $row['placa'], 1, 0,'C', 0);
		$pdf->Cell(40,10, $row['nombre'], 1, 0,'C', 0);
		$pdf->Cell(40,10, $row['apellido'], 1, 0,'C', 0);
		$pdf->Cell(25,10, $row['cedula'], 1, 0,'C', 0);
		$pdf->Cell(30,10, $row['telefono'], 1, 0,'C', 0);
		$pdf->Ln(10);
	}

$pdf->Output();

?>