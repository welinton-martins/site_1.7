<?php 

	include("conecta.php");

if ($conn->connect_error) 
{
    die("Falha de conexão: " . $conn->connect_error);
} 

$email = $_POST['email'];

$sql = "SELECT * FROM Licao_Casa
 as A INNER JOIN Tarefa as B INNER JOIN tipo_licao as C on A.cd_licao = B.cd_licao and B.cd_licao = C.cd_tipo_licao WHERE nm_email = '{$email}'";

$resultado = $conn->query($sql);

	if ($resultado->num_rows > 0) 
	{
		while($row = $resultado->fetch_assoc()) 
	    {
            switch ($row['nm_tipo_licao']) {
                case 'video':
                    $b = strstr($row['ds_licao'],'=');
                    $id = explode('=', $b);
                    
                    if (strstr($id[1],'&') == true) 
                    {
                        $idnovo = explode('&', $id[1]);
                        echo $idnovo;
                    }
                    else
                    {
                        $idnovo[0] = $id[1];
                        echo "<iframe width='100%' height='200' src='https://www.youtube.com/embed/".$idnovo[0]."' frameborder='0' allow='accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture' allowfullscreen></iframe>";
                    }
                    break;
                case 'audio':
                    echo "<a href='audio.html' class='collection-item avatar'><i class='material-icons circle deep-purple'>mic</i><span>".$row['nm_licao']."</span><p>Prazo: ".$row['dt_entraga_licao']."</p></a>";
                    break;
                default:
                    alert('Sem atividades no momento.');
            }  
	    }
	} 
    $conn->query($sql);
    $conn->close();
 ?>
 