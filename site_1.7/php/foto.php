<?php 

		include("conecta.php");

if ($conn->connect_error) 
{
    die("Falha de conexão: " . $conn->connect_error);
} 



$sql = "SELECT * FROM usuario where nm_email = \"$_SESSION[login]\"";

$resultado = $conn->query($sql);

	if ($resultado->num_rows > 0) 
	{
		while($row = $resultado->fetch_assoc()) 
	    {
	   		$img = "<img src=\"upload/$row['imagem']\" style='margin-top: -20%;margin-left: 33%;width: 125px;height: 125px'/>";
	   		echo $img;
	    }
	} 	
$conn->close();

 ?>