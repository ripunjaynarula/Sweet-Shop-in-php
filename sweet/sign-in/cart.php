<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>Signin Template · Bootstrap</title>

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
    <?php
    $cart=$_POST['cart'];
    $va="";
    foreach($_POST['cart'] as $value){
     $va=$va.$value;
    }
    
  ?>
    <form class="form-signin" method="POST" action="index.php">
  <img class="mb-4" src="../assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
  <h1 class="h3 mb-3 font-weight-normal">Please add your details</h1>
  <label for="inputEmail" class="sr-only">Name</label>
  <input name="uname" type="text" id="inputEmail" class="form-control" placeholder="Name" required autofocus>
  <label for="inputEmail" class="sr-only">Email</label>
  <input name="uemail" type="email" id="inputEmail" class="form-control" placeholder="Email address" required>
  <label for="inputPassword" class="sr-only">Address</label>
  <input name="uaddress" type="text" id="inputPassword" class="form-control" placeholder="Address" required>
  <input name="cart" type="hidden" value="<?php echo $va?>">
  <button class="btn btn-lg btn-primary btn-block" type="submit">Place order</button>
  <p class="mt-5 mb-3 text-muted">&copy; 2017-2020</p>
</form>
</body>
</html>
