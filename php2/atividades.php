<?php 

		include("conecta.php");

if ($conn->connect_error) 
{
    die("Falha de conexão: " . $conn->connect_error);
} 

$produto = $_POST['produto'];
$email = $_POST['email'];

if ($produto == 1) {
	$produto = "Treino de Dicção (Fonemas \"u\" e \"i\")";
}
elseif ($produto == 2) {
	$produto = "Treino de Dicção (hummmm)";
}
elseif ($produto == 3) {
	$produto = "Treino de Dicção (Trava Língua)";
}

$sql = "SELECT * FROM consulta WHERE nm_exercicio = '{$produto}' and nm_email = '{$email}' order by dt_consulta ASC ";

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