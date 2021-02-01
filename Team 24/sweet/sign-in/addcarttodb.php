<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sweet";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
} 
$uemail=$_POST['uemail'];
$uname=$_POST['uname'];
$uaddress=$_POST['uaddress'];
$cart=$_POST['cart'];
$sql = "INSERT INTO orders (uname, uemail, uaddress, cart)
VALUES ('$uname', '$uemail', '$uaddress', '$cart')";

if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>