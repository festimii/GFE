<?php
if(!isset($_POST['user'])){
  header('Location: reg.php');
 die();
}
else {
  $l = mysqli_connect('Localhost','root','','Dgshop');
  if(!$l){
      echo "nuk u lidh per arsye:". mysqli_connect_error();
      }
  $u=$_POST['user'];
  $p=$_POST['pass'];
  $sql="select username,password from tbluser where username='$u' and password='$p'";
//echo $sql;
//die();


  $qry=mysqli_query($l,$sql);
  $r=mysqli_num_rows($qry);
  if ($r==0) {
    die("username ose passwordi jan gabim  ");
  }
}
?>