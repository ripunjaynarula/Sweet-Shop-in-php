<?php
 

  // Start the session
  session_start();

  // Clear the error message
  $error_msg = "";

  $servername = "localhost:8889";
  $username = "root";
  $password = "vashuhero1";
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
          

          $query = "SELECT * FROM administrator WHERE Uname = '$user_username' AND upass = '$user_password'";
          $data = mysqli_query($dbc, $query) or die(mysql_error());
        if (mysqli_num_rows($data) == 1) {
       
          // The log-in is OK so set the user ID and username session vars (and cookies), and redirect to the home page
          $row = mysqli_fetch_array($data);
          $_SESSION['user_id'] = $row['id'];
          $_SESSION['myusername'] = $row['Uname'];
          setcookie('user_id', $row['id'], time() + (60 * 60 * 24 * 30));    // expires in 30 days
setcookie('username', $row['username'], time() + (60 * 60 * 24 * 30));    // expires in 30 days
          header('Location: ' . "admin.php");
        }
        else {
          // The username/password are incorrect so set an error message
         echo 'Sorry, you must enter a valid username and password to log in.';
        }
      }
      else {
        // The username/password weren't entered so set an error message
       echo 'Sorry, you must enter your username and password to log in.';
      }
    
  

 
?>


