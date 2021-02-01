<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sweet";
     
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
$pid=$_POST['upass'];
$newstock=$_POST['uname'];
$sql="UPDATE STOCKS SET stock_number=$newstock where stockid=$pid";
if($conn->query($sql)==TRUE)
{
    echo "Stock Updated";
         echo " Redirecting...";
         
         header("Refresh: 3;URL=admin.php");
}
else{
    echo "Stock updating failed";
}
?>