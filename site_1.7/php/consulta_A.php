<?php 

	include("conecta.php");

if ($conn->connect_error) 
{
    die("Falha de conexão: " . $conn->connect_error);
} 

$email = $_POST['email'];

$sql = "SELECT * FROM  Consulta WHERE nm_email = '{$email}' ORDER BY qt_nota_consulta ASC";

$resultado = $conn->query($sql);

	if ($resultado->num_rows > 0) 
	{
		while($row = $resultado->fetch_assoc()) 
	    {
	    	echo "<tr>
	 				<td>".$row['dt_consulta']."</td>
	    	        <td>".$row['nm_exercicio']."</td>
	    	        <td>".$row['qt_nota_consulta']."</td>
	    	     </tr>";
	     	}
	} 
$conn->close();


 ?>