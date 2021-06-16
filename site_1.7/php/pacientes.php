<?php 

	include("conecta.php");

if ($conn->connect_error) 
{
    die("Falha de conexão: " . $conn->connect_error);
} 



$sql = "SELECT * FROM `id11294016_bd_tcc_fonodiologo`.`Usuario` as A  LEFT JOIN tipo_usuario as B on A.tipo_usuario_cd_tipo_usuario = B.cd_tipo_usuario WHERE nm_tipo_usuario = 'paciente'";


$resultado = $conn->query($sql);

	if ($resultado->num_rows > 0) 
	{
		while($row = $resultado->fetch_assoc()) 
	    {
	    	echo  "<li class='collection-item avatar z-depth-1' style='border-radius: 25px; margin-top: 20px;padding-top: 1.5%;width: 95%;margin-left: 2%'>
          <i class='material-icons circle black' >person</i>

          <strong>
              <span class='title' >".$row['nm_usuario']."<a href='consultas.html' id=".$row['nm_email']." class='pagina'>
            </strong>
              <i class='material-icons lixo right black-text' style='margin-right: 4%;margin-top: 10px'>assignment</i></a></span>
        <strong>  
          <p>".$row['nm_email']." <a href='video.html' id=".$row['nm_email']." class='pagina'>
        </strong>
        <i class='material-icons lixo right black-text' style='margin-top: -1.5%;margin-right: -2%'>list_alt</i></a></p>
              
 


            <a href='#!' class='secondary-content' ><i class='material-icons lixo black-text apaga'id=".$row['nm_email']." style='margin-top: 20%'>delete_forever</i></a></li>";
	    }
	} 

$conn->close();
?>

 <script type="text/javascript">
 	$(document).ready(function(){
    $(".pagina").click(function(){
   		var emel = $(this).attr("id");
    	sessionStorage.setItem("E-mail",emel);
    });

		$(".apaga").click(function(){
			var emal = $(this).attr("id");
			$.post("php/delete.php",{emal:emal},function(msg){
				alert(msg);
				window.location = "pacientes.html";
			});
    });
 	});
</script>