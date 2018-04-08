<?php
	require 'fpdf.php';

	$db = new PDO('mysql:host=localhost;dbname=mydata', 'root', '');


	class myPDF extends FPDF{

		function header(){
			$this->Image('logo.png',10,6);
			$this->SetFont('Arial','B',14);
			$this->Cell(276, 5, 'EMPLOYEE DOCUMENTS', 0, 0, 'C');
			$this->Ln();
			$this->SetFont('Times','',12);
			$this->Cell(276, 10, 'Street Address of Employee Office', 0, 0, 'C');
			$this->Ln(20);
		}

		function footer(){
			$this->SetY(-15);
			$this->SetFont('Arial', '', 8);
			$this->Cell(0,10,'Page'.$this->PageNo().'/{nb}',0,0,'C');
		}

		function headerTable(){
			$this->SetFont('Times','B', 12);
			$this->Cell(20,10,'ID',1,0,'C');
			$this->Cell(40,10,'Name',1,0,'C');
			$this->Cell(40,10,'Position',1,0,'C');
			$this->Cell(60,10,'Office',1,0,'C');
			$this->Cell(36,10,'Age',1,0,'C');
			$this->Cell(50,10,'Start Date',1,0,'C');
			$this->Cell(30,10,'Salary',1,0,'C');
			$this->Ln();

		}

		function viewTable($db){
			$this->SetFont('Times', '', 12);
			$stmt = $db->query("SELECT * FROM tablepaginate");
			while ($data = $stmt->fetch(PDO::FETCH_OBJ)) {
				$this->Cell(20,10,$data->ID,1,0,'C');
				$this->Cell(40,10,$data->Name,1,0,'L');
				$this->Cell(40,10,$data->Position,1,0,'C');
				$this->Cell(60,10,$data->Office,1,0,'C');
				$this->Cell(36,10,$data->Age,1,0,'C');
				$this->Cell(50,10,$data->StartDate,1,0,'C');
				$this->Cell(30,10,$data->Salary,1,0,'C');
				$this->Ln();
			}
		}


	}

	$pdf = new myPDF();
	$pdf->AliasNbPages();
	$pdf->AddPage('L', 'A4', 0);
	$pdf->headerTable();
	$pdf->viewTable($db);
	$pdf->Output();









?>