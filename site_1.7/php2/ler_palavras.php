<?php
	include("conecta.php");
	$email = $_POST['email'];
	$sql = "SELECT * FROM Licao_Casa as A INNER JOIN Tarefa as B INNER JOIN tipo_licao as C on A.cd_licao = B.cd_licao and B.cd_licao = C.cd_tipo_licao WHERE nm_email = '{$email}'";
	$resultado = $conn->query($sql);
	if ($resultado->num_rows > 0) 
	{
		while($row = $resultado->fetch_assoc()) 
 		{
 			if ($row['nm_tipo_licao'] == 'audio') {
 				echo $row["nm_licao"].$row["ds_licao"];	
 			}
		}
	} 
	$conn->query($sql);
	$conn->close();
?>