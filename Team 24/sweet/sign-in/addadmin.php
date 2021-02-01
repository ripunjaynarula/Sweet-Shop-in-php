<?php
 

  // Start the session
  session_start();

  // Clear the error message
  $error_msg = "";

  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "sweet";
  
  // Create connection
  $dbc = new mysqli($servername, $username, $password, $dbname);
  // Check connection

      // Grab the user-entered log-in data
      $user_username = $_POST['uname'];
      $user_password = $_POST['upass'];

      if (!empty($user_username) && !empty($user_password)) {
        // Look up the username and password in the database
          // Look up the username and password in the database
          

          $query = "INSERT INTO administrator(Uname,upass) values('$user_username','$user_password')";
         if($dbc->query($query)==TRUE)
      {
       
          
         echo "Admin added successfully";
         echo " Redirecting...";
         
         header("Refresh: 3;URL=admin.php");
        }
        else {
          // The username/password are incorrect so set an error message
         echo 'Admin signup failed because of connection error or username already exists...';
        }
      }
     
    
  

 
?>


