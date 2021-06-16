<?php 

	include("conecta.php");
	$licao = $_POST["licao"];
	$sql = "INSERT INTO tipo_licao (cd_tipo_licao,nm_tipo_licao) VALUES (null,'".$licao."')";
	$conn->query($sql);
	$conn->close();


 ?>