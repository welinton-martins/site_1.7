<?php 
/*Conecta.php*/
$servername = "localhost";
$username = "id11294016_root";
$password = "root1";
$dbname = "id11294016_bd_tcc_fonodiologo";

$conn = new mysqli($servername, $username, $password, $dbname);

if(!$conn)
{
    echo "Falha";
}
?>