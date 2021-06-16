<?php 
include("conecta.php");
$usi = $_POST["usi1"];
$sql = "INSERT INTO tipo_usuario (cd_tipo_usuario,nm_tipo_usuario) VALUES (null,'".$usi."')";
$conn->query($sql);
$conn->close();
?>