<?php 

	include("conecta.php");

if ($conn->connect_error) 
{
    die("Falha de conexão: " . $conn->connect_error);
} 

$email = $_POST['email'];

$sql = "SELECT * FROM  Consulta WHERE nm_email = '{$email}' ORDER BY nm_exercicio , qt_nota_consulta ASC";

$resultado = $conn->query($sql);

	if ($resultado->num_rows > 0) 
	{
		while($row = $resultado->fetch_assoc()) 
	    {
	    	if ($row['qt_nota_consulta'] < 5) {
	    		$img = "<img src='img/vermelho.png' style='widht: 50px;height: 50px' />";
	    	}
	    	elseif ($row['qt_nota_consulta'] < 7) {
	    		$img = "<img src='img/amarelo.png'style='widht: 50px;height: 50px' />";
	    	}
	    	elseif ($row['qt_nota_consulta'] < 10) {
	    		$img = "<img src='img/verde.png'style='widht: 50px;height: 50px'/>";
	    	}

	    	echo "<tr>
	 				<td>".$row['dt_consulta']."</td>
	    	        <td>".$row['nm_exercicio']."</td>
	    	        <td>".$img."</td>
	    	     </tr>";
	     	}
	} 
$conn->close();


 ?>