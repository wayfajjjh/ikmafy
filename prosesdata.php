<?php

include_once 'dbConnection.php';

$nama      = $_POST['nama'];
$email = $_POST['email'];
$no_hp = $_POST['no_tlp'];
$jk = $_POST['jk'];
$username = $_POST['username'];
$password = $_POST['password'];
$enkrip  = md5($password);

$result = mysqli_query($con, "SELECT username FROM user WHERE username = '$username'");
$count = mysqli_num_rows($result);

if($count > 0){
	
	echo "<script language=javascript> alert('Username Sudah Ada');document.location.href='daftar.php'  </script>";
}else{
	$result = mysqli_query($con,"INSERT INTO `user`(`id`, `name`, `rollno`, `branch`, `gender`, `username`, `phno`, `password` ,`angket`) VALUES ('','$nama',null,null,'$jk','$username','$no_hp','$enkrip','t')");
	echo "<script language=javascript> alert('Selamat Anda Berhasil Daftar');document.location.href='index.php'  </script>";

}


?>