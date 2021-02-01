<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>SWEET STOP</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/album/">

    <!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="album.css" rel="stylesheet">
  </head>
  <body>
  <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="#">SWEET STOP</a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-toggle="collapse" data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a  href="../sign-in/sign-in.php">ADMIN LOGIN</a>

</nav>

<main role="main">

  <section class="jumbotron text-center">
    <div class="container">
      <h1>SWEET STOP</h1>
      <p class="lead text-muted">BUY THE BEST AND AUTHENTIC INDIAN TASTE AT OUR PLACE.</p>
      <p>
        <a href="#" class="btn btn-primary my-2">View all sweets</a>
        <a href="offers.php" class="btn btn-secondary my-2">Show new offers</a>
        <a href="#" class="btn btn-secondary my-2">Back to home</a>

      </p>
    </div>
  </section>
  <form action="../sign-in/cart.php" method="POST">
  <div class="album py-5 bg-light">
    <div class="container">

      <div class="row">
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
      
      $sql = "SELECT * FROM product";
      $result = $conn->query($sql);
      
      if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            
         
           
            $pid=$row['PRODUCT_ID'];
       echo '<div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <img src="images/sweet'.$pid.'.jpg" class="bd-placeholder-img card-img-top" width="100%" height="225"  preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/></img>
            <div class="card-body">
            <h2>'.$row['P_NAME'].'</h2>
            <p class="card-text">Rs '.$row['PRICE'].'&nbsp;&nbsp;<code> From:'.$row['BRAND'].'</code></p>
           
            <input type="checkbox" name=cart[]" value="'.$pid.'"> Add to cart 
             
              
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                 
                </div>
                
                
              </div>
            </div>
          </div>
        </div>';
        }}
        else{
          echo "0 records found";
        }
        ?>
        <input type="submit">
      </form>
      </div>
    </div>
  </div>

</main>


     

<footer class="text-muted">
  
</footer>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
</html>
