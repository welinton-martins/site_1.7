<?php 

include("conecta.php");
	
		$nome = $_POST['nome'];
		$desc = $_POST['desc'];
		
		$sql = "SELECT * FROM  tipo_licao";

		$resultado = $conn->query($sql);		

			if ($resultado->num_rows > 0) 
			{
				while($row = $resultado->fetch_assoc()) 
	   	 		{
	   				$sql = "INSERT INTO Licao_Casa (cd_licao,nm_licao,ds_licao,cd_tipo_licao) 
					VALUES (null,'".$nome."','".$desc."','".$row['cd_tipo_licao']."')";
	    		}
			} 
$conn->query($sql);
$conn->close();

 ?>