<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>UPDATE STOCK</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/sign-in/">

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
    <link href="signin.css" rel="stylesheet">
  </head>
  <body class="text-center">
 
    <form class="form-signin" method="POST" action="updatestock.php">
  <!--img class="mb-4" src="../assets/brand/bootstrap-solid.svg" alt="" width="72" height="72"-->
  <?php
  $pid=$_GET['id'];
  
  
  
  
  
  
  ?>
  <h1 class="h3 mb-3 font-weight-normal">EDIT STOCK</h1>
  <label for="inputEmail" class="sr-only">ENTER NEW STOCK</label>
  <input name="uname" type="text" id="inputEmail" class="form-control" placeholder="New stock" required autofocus>
  <input name="upass" type="hidden" value="<?php echo $pid?>" id="inputPassword" class="form-control" placeholder="Password" required>
  <button class="btn btn-lg btn-primary btn-block" type="submit">UPDATE</button>
</form>
</body>
</html>
