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
    $this->SetLeftMargin($this->GetPageWidth() / 2 - 90);
	$this->SetFont('Helvetica','B',15);//Tipo de letra, negrita, tamaño
	$this->Ln(10);//salto de linea
	$this->Cell(160, 10,  'SISTEMA UT',2, 0,'C', 0);
	$this->Ln(10);//salto de linea
    // Título
    // Título
    $this->Cell(160, 10,  'REGISTRO DE RUTAS',2, 0,'C', 0);
		$this->Ln(10);

		$this->SetFont('Arial','B',12);//Tipo de letra, negrita, tamaño

		$this->Cell(8, 10,  'ID',1, 0,'C', 0);
		$this->Cell(25, 10, 'Placa',1, 0,'C', 0);
		$this->Cell(40, 10, 'Nombre',1, 0,'C', 0);
		$this->Cell(70, 10, 'Direccion',1, 0,'C', 0);
		$this->Cell(25, 10, 'Hora Salida',1, 0,'C', 0);
		$this->Cell(20, 10, 'Km',1, 0,'C', 0);
		$this->Ln(10);

		$this->SetFont('Arial','',10);//Tipo de letra, negrita, tamaño
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
		$resultado = $mysqli->query('SELECT * FROM rutas');

		$pdf = new PDF();
		$pdf->AddPage();
		$pdf->SetFont('Arial','B',10);

		while ($row = $resultado->fetch_assoc()) {

			$pdf->Cell(8,10, $row['id_ruta'], 1, 0,'C', 0);
			$pdf->Cell(25,10, $row['placa'], 1, 0,'C', 0);
			$pdf->Cell(40,10, $row['nombre_ruta'], 1, 0,'C', 0);
			$pdf->Cell(70,10, $row['direccion_ruta'], 1, 0,'C', 0);
			$pdf->Cell(25,10, $row['hora_salida'], 1, 0,'C', 0);
			$pdf->Cell(20,10, $row['kilometraje'], 1, 0,'C', 0);
		   $pdf->Ln(10);//salto de linea
		}
$pdf->Output();

?>