<?php 

include("conecta.php");

if ($conn->connect_error) 
{
    die("Falha de conexão: " . $conn->connect_error);
} 

$email = $_POST["email"];
$senha = md5($_POST["senha"]);

$sql = "SELECT * FROM Usuario";

$resultado = $conn->query($sql);

	if ($resultado->num_rows > 0) 
	{
		while($row = $resultado->fetch_assoc()) 
	    {
	    	 if(($email == $row["nm_email"]) && ( $senha == $row["nm_senha"]))
	        {
	        	if ($row["logou"] == 0) 
	        	{
	        		$nome = $row["nm_usuario"];
	        		session_start();
	        		$_SESSION["ss_nome"] = $nome;
	        		echo 1;
	        	}
	        	else
	        	{
	        		echo 2;
	        	}
	        	
	        }
	    
	    }
	} 
$conn->close();
 ?>


