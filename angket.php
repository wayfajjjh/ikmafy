<?php

	include_once 'dbConnection.php';

$soal = $_POST['angket'];

$result = mysqli_query($con, "SELECT * FROM angket WHERE soal = '$soal'");
$count = mysqli_num_rows($result);

if($count > 0){

	echo "<script language=javascript> alert('Soal Sudah Ada');document.location.href='dash.php?q=6'  </script>";
}else{
	$result = mysqli_query($con,"INSERT INTO `angket`(`id`, `soal`) VALUES ('','$soal')");
	echo "<script language=javascript> alert('Angket berhasil ditambah');document.location.href='dash.php?q=6'  </script>";

}

?>
