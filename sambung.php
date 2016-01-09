<?php

$host="localhost";
$username="root";
$password="";
$database="ujiancontoh";
$connect=mysql_connect($host,$username,$password);
if(mysql_select_db($database,$connect)==true){
	//echo "sukses";
}else{
	//echo "gagal";
}
?>
