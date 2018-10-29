<?php
include 'dbConnection.php';
$update = mysqli_query($con, "UPDATE user SET angket='t' ");
$update_angket = mysqli_query($con, "UPDATE angket SET yes=0,no=0 ");

?>
