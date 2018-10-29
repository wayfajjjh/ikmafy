<!DOCTYPE html>
<html>
<style>
input[type=text], select {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
input[type=password], select {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
input[type=date], select {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
input[type=file], select {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
input[type=submit] {
    width: 15%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #ffffff;
}

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>
<body>
<div class="col-xs-12 col-md-offset-3  col-md-6 col-xl-6">
  <section class="mbr-section article mbr-section__container" id="content1-j" style="background-color: rgb(244, 244, 244); padding-top: 20px; padding-bottom: 20px;">
      <div class="container">
          <div class="row">
             <center><h2>Formulir Pendaftar</h2></center> 
          </div>
          <div>
<center>
  <form method="post" action="prosesdata.php" enctype="multipart/form-data">

    <input type="text" id="nama" name="nama" placeholder="Nama Lengkap">
    <br>
    <input type="text" id="email" name="email" placeholder="Email">
    <br>
    <input type="text" id="no_tlp" name="no_tlp" placeholder="No HP">
    <br>
    <input type="text" id="alamat" name="alamat" placeholder="Alamat">
    <br>
    <input type="text" id="tempat_lahir" name="tempat_lahir" placeholder="tempat_lahir">
    <br>
    <input type="date" id="tgl_lahir" name="tgl_lahir" placeholder="tgl_lahir">
    <br>
    <input type="text" id="role" name="role" placeholder="Role">
    <br>
    <input type="text" id="jk" name="jk" placeholder="Jenis Kelamin">
    <br>
    <input type="text" id="username" name="username" placeholder="Username">
    <br>
    <input type="password" id="password" name="password" placeholder="Password">
    <br>

    <input name="daftar" type="submit" value="Daftar">

    <br>Sudah terdaftar? <a href="index.php">Log in</a>
    </center>
  </form>
</div>

</body>
</html>

 <script src="js/jquery.js" type="text/javascript"></script>
<script type="text/javascript">
  

</script>  
