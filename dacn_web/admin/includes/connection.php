
<?php

	$username  = "id15633718_tunggg";
	$password  = "Pinpo0909_tung";
	$localhost = "localhost";
	$database  = "id15633718_dacntung";


	$con = mysqli_connect($localhost, $username, $password, $database) or die ("Không thể kết nối đến database");
	mysqli_query($con,"SET NAMES 'UTF8'");
 ?>