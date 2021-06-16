<?php 
	if (move_uploaded_file($_FILES['file']['tmp_name'],"../uploads/".$_FILES['file']['name'])) {
		echo $_FILES['file']['name'];
	}
	else{
		echo $_FILES['file']['name'];
		echo "E R R O";
	}
	header("location: ../video.html");
 ?>