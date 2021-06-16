<?php 
include("conecta.php");
if ($conn->connect_error) 
{
    die("Falha de conexão: " . $conn->connect_error);
} 

$email = $_POST['email'];
$nota = 0;


$sql = "SELECT * FROM  Consulta WHERE nm_email = '{$email}'";
$resultado = $conn->query($sql);

$array =  array();
$array[] = array("Meses","Evolução");

if ($resultado->num_rows > 0) 
{

	while($row = $resultado->fetch_assoc())
    {

        
    	$quebraData = explode(" ",$row['dt_consulta']);
    	$pegaMes = explode("-", $quebraData[0]);
        $nota = $row['qt_nota_consulta'];
        $mes2;
        switch($pegaMes[1]){
            case 1:
                $mes2 = "Janeiro";
                break;
            case 2:
                $mes2 = "Fevereiro";
                break;
            case 3:
                $mes2 = "Março";
                break;
            case 4:
                $mes2 = "Abril";
                break;
            case 5:
                $mes2 = "Maio";
                break;
            case 6:
                $mes2 = "Junho";
                break;
            case 7:
                $mes2 = "Julho";
                break;
            case 8:
                $mes2 = "Agosto";
                break;
            case 9:
                $mes2 = "Setembro";
                break;
            case 10:
                $mes2 = "Outubro";
                break;
            case 11:
                $mes2 = "Novembro";
                break;
            case 12:
                $mes2 = "Dezembro";
                break;
        } 
        $array[] = array($mes2 . "/" . $pegaMes[0] ." dia ". $pegaMes[2], intval($nota));
    }
}
header('Content-Type: application/json');



echo json_encode($array);



$conn->close();
?>