<?php

	include("conecta.php");
	$email = "welinton@email.com";
	$senha = md5("1234");
	$sql = "SELECT * FROM `id11294016_bd_tcc_fonodiologo`.`Usuario` WHERE nm_email = '{$email}' and nm_senha = '{$senha}'";
	$resultado = $conn->query($sql);
	if ($resultado->num_rows > 0) {
		while ($row = $resultado->fetch_assoc()) {
				echo 1;
		}
	}
	$conn->close();
?>