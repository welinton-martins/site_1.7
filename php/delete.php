<?php 
include("conecta.php");
$email = $_POST['emal'];
$id;


$sql = "SELECT * FROM Usuario where nm_email = '{$email}'";

$resultado = $conn->query($sql);

	if ($resultado->num_rows > 0) 
	{
		while($row = $resultado->fetch_assoc()) 
	    {
	    	$id = $row['tipo_usuario_cd_tipo_usuario'];

	    	$sql = "DELETE FROM Usuario WHERE `nm_email`='{$email}' and `tipo_usuario_cd_tipo_usuario`='{$id}'";
			
	    }
	}

if ($conn->query($sql) === TRUE) 
			{
   				 echo "Apagado com Sucesso";
			} 
			else 
			{
    			echo "Error deleting record: " . $conn->error;
			}




$conn->close();

 ?>