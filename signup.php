<?php 
  include("lidhja/lidhja.php");
  if(isset($_GET['username'])){
  $u=$_GET['username'];
  $p=$_GET['pass'];
  $SQL="insert into tbluser(`username`,`password`,`aktiv`) values('$u','$p',1)";
  //echo $SQL;

  //die();

  mySqli_Query($l,$SQL);

}
//echo "ubt";
?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<form method="GET">
		Username: <input type="text" name="username" ><br>
		Password:<input type="text" name="pass" id="pass1"><br>
		Confirm Password: <input type="text" name="confpass" id="pass2"><br>
		<button type="submit">Sign up</button>
	</form>
 
</body>
</html>