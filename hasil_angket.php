<?php
include 'dbConnection.php';
?>
<hr>
<h2>Hasil Angket</h2>
<div class="panel">
<table class="table table-striped title1">

<tr>
<td style="vertical-align:middle"><b>Nomor</b></td>
<td style="vertical-align:middle"><b>Pertanyaan Angket</b></td>
<td style="vertical-align:middle"><b>Yes</b></td>
<td style="vertical-align:middle"><b>No</b></td>
</tr>
<?php

$q = mysqli_query($con, "SELECT * FROM angket order by id DESC ");

$no = 0;
        while ($row = mysqli_fetch_array($q)) {



?>
    <tr>
        <td><?php echo $no+1; ?></td>
        <td>  <?php echo $row['soal']; ?></td>
        <td>  <?php echo $row['yes']; ?></td>
        <td>  <?php echo $row['no']; ?></td>
    </tr>

    <?php
          $no++;  }
    ?>


         </table>
     </div>

<hr>
<h2>Account Sudah Mengisi Angket</h2>
<div class="panel">
<table class="table table-striped title1">

<tr>
<td style="vertical-align:middle"><b>ID</b></td>
<td style="vertical-align:middle"><b>Nama</b></td>
<td style="vertical-align:middle"><b>Jenis Kelamin</b></td>
<td style="vertical-align:middle"><b>Nomor Telepon</b></td>
<td style="vertical-align:middle"><b>Branch</b></td>
<td style="vertical-align:middle"><b>Roll Number</b></td>


</tr>
<?php

$q = mysqli_query($con, "SELECT * FROM user ");

$nomornya = 0;
        while ($row = mysqli_fetch_array($q)) {

          if($row['angket'] == 'y'){

?>

    <tr>
        <td><?php echo $row['id']; ?></td>
        <td>  <?php echo $row['name']; ?></td>
        <td>  <?php echo $row['gender']; ?></td>
        <td>  <?php echo $row['phno']; ?></td>
        <td>  <?php echo $row['branch']; ?></td>
        <td>  <?php echo $row['rollno']; ?></td>


    </tr>

    <?php

        }
          $nomornya++;  }
    ?>


         </table>
     </div>
