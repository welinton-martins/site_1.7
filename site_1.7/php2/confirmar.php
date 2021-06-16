<?php 

include("conecta.php");

if ($conn->connect_error) 
{
    die("Falha de conexão: " . $conn->connect_error);
} 

$senha_A = md5($_POST["senha_A"]);
$email2 = $_POST["email2"];
$logou = 1;

$sql = "UPDATE Usuario SET nm_senha='$senha_A', logou='$logou'  WHERE nm_email='$email2'";

if ($conn->query($sql) === TRUE) {
    echo 1;
} else {
    echo "Error updating record: " . $conn->error;
}

$conn->close();
 ?>



