<?php  
	include("conecta.php");
 	date_default_timezone_set('America/Sao_Paulo');
 	$data = date('y/m/d  H:i');
	$exercicio = $_POST["exercicio"];
	$nota = $_POST["nota"];
	$obs = $_POST["obs"];
	$email = $_POST["email"];

if ($exercicio == 1) {
	$exercicio = "Treino de Dicção (Fonemas \"u\" e \"i\")";
}
elseif ($exercicio == 2) {
	$exercicio = "Treino de Dicção (hummmm)";
}
elseif ($exercicio == 3) {
	$exercicio = "Treino de Dicção (Trava Língua)";
}


	$sql = "INSERT INTO Consulta (dt_consulta,nm_email,ds_anotacao_consulta,qt_nota_consulta,nm_exercicio) 
	VALUES ('".$data."','".$email."','".$obs."','".$nota."','".$exercicio."')";

	$conn->query($sql);
	$conn->close();
?>