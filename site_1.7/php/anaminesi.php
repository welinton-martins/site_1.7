<?php 
	include("conecta.php");

		$nome = $_POST["nome"];
		$alergia = $_POST["alergia"];
		$email = $_POST["email"];
		$telefone = $_POST["telefone"];
		$mae = $_POST["mae"];
		$pai = $_POST["pai"];
		$sexo = $_POST["sexo"];
		$nascimento = $_POST['nascimento'];
		$escolaridade = $_POST["escolaridade"];
		$periodo = $_POST["periodo"];
		$autorizacao = $_POST["autorizacao"];
		$relatorio = $_POST["relatorio"];
		$senha =rand(1000,9999);
		echo "A senha do  ".$nome."  é igual a  ".$senha."";
		$senha = md5($senha);
		$atividades = $_POST["atividades"];
		$logou = 0;

		$sql = "SELECT * FROM  tipo_usuario";

		$resultado = $conn->query($sql);		

		if ($resultado->num_rows > 0) 
		{
			while($row = $resultado->fetch_assoc()) 
	   	 	{
	   			$sql = "INSERT INTO Usuario (nm_email,nm_usuario,nm_senha,ds_medicamento,cd_telefone_usuario,nm_mae_paciente,nm_pai_paciente ,ic_sexo,dt_nascimento,ds_escolaridade_paciente,ds_outras_atv_esportivas,ds_periodo_estudo,tipo_usuario_cd_tipo_usuario,ic_autorizar_confirmacao,logou) 
				VALUES ('".$email."','".$nome."','".$senha."','".$alergia."','".$telefone."','".$mae."','".$pai."','".$sexo."','".$nascimento."','".$escolaridade."','".$atividades."','".$periodo."','".$row['cd_tipo_usuario']."','".$autorizacao."','".$logou."')";
			}
			
		}
	
$conn->query($sql);
$conn->close();
?>