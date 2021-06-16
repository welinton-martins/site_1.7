<?php
include("conecta.php");
if ($conn->connect_error) 
{
	die("Falha de conexão: " . $conn->connect_error);
} 
include("conecta.php");
$entrega =  date("Y-m-d H:i:s",strtotime($_POST['entrega']));
$nota = 1;
$email = $_POST['email'];
$sql = "SELECT * FROM  Licao_Casa";
$resultado = $conn->query($sql);		
if ($resultado->num_rows > 0) 
{
	while($row = $resultado->fetch_assoc()) 
 		{
			$sql = "INSERT INTO Tarefa (nm_email,cd_licao,dt_entraga_licao,qt_pontuacao_licao) 
		VALUES ('".$email."','".$row['cd_licao']."','".$entrega."','".$nota."')";
	}
} 
$conn->query($sql);
$conn->close();
?>