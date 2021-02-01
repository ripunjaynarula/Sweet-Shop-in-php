<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>ADMNISTRATOR-SWEET STOP</title>

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
  <a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="#">SWEET STOP (Admin)</a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-toggle="collapse" data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a  href="admin-signup.php">ADD A NEW ADMIN</a>
</nav>

<main role="main">

  <section class="jumbotron text-center">
    <div class="container">
      <h1>SWEET STOP</h1>
      <p class="lead text-muted">MANAGE INVENTORY. TRACK ORDERS AND MORE.</p>
      <p>
        <a href="../album/index.php" class="btn btn-primary my-2">View all sweets</a>
        <a href="../album/offers.php" class="btn btn-secondary my-2">Show new offers</a>
        <a href="../album/index.php" class="btn btn-secondary my-2">Back to home</a>

      </p>
    </div>
  </section>
 
  <div class="album py-5 bg-light">
    <div class="container"> <h2>Your orders</h2>

      <div class="row">
       
    </br>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Order ID</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Address</th>
            <th scope="col">Orders</th>
            <th scope="col">Total</th>
          </tr>
        </thead>
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
$sql0 = "SELECT * FROM orders";
$result0 = $conn->query($sql0);
if($result0->num_rows>0){
    while($row0 = $result0->fetch_assoc()) {
        $cart=$row0['cart'];
        $order_id=$row0['uid'];
        $myArray = str_split($cart);
        $total=0;
        $data="";
        $sql5="SELECT * from customer where CUSTOMER_ID=$order_id";
        $result5=$conn->query($sql5);
        $row5=$result5->fetch_assoc();
        foreach($myArray as $character){
           
            
            $sql = "SELECT * FROM product WHERE PRODUCT_ID=$character";
            $result = $conn->query($sql);
                
                $pid=$character;
                $row=$result->fetch_assoc();
                $cname=$row['P_NAME'];
              
                $total=$total+($row['PRICE']-$row['discount']);
                $data=$data.",".$cname;
        }
            
        echo '
         
        <tbody>
          <tr>
            <th scope="row">'.$row0['uid'].'</th>
            <td>'.$row5['U_NAME'].'</td>
            <td>'.$row5['EMAIL_ID'].'</td>
            <td>'.$row5['U_ADDRESS'].'</td>
            <td>'.$data.'</td>
            <td>'.$total.'</td>
          </tr>
          
        ';
     
    }      
}        
?>
        </tbody>
      </table>
      
</br></br>
        <h4> Your Delivery-agents details</h4> 
        <table class="table">
        <thead>
        <tr>
            <th scope="col">Delivery ID</th>
            <th scope="col">Deilvery Name</th>
           
            
          </tr>
        </thead>
        <?php
        
  $sql2 = "SELECT * FROM dmen";
  $result2 = $conn->query($sql2);
  
  $conn->query($sql2);
  while($row2 = $result2->fetch_assoc()) {
  echo '<tr>
        
            <td>'.$row2['did'].'</td>
            <td>'.$row2['name'].'</td>
          </tr>';
  }
  ?>
</table>
<h4> Your Staff details</h4> 
        <table class="table">
        <thead>
        <tr>
            <th scope="col">Staff ID</th>
            <th scope="col">Staff Name</th>
            <th scope="col">Staff Contact</th>
            <th scope="col">Staff Address</th>
            
          </tr>
        </thead>
        <?php
        
  $sql3 = "SELECT * FROM staff";
  $result3 = $conn->query($sql3);
  
  $conn->query($sql3);
  while($row3 = $result3->fetch_assoc()) {
  echo '<tr>
        
            <td>'.$row3['staffid'].'</td>
            <td>'.$row3['staffname'].'</td>
            <td>'.$row3['staffcontact'].'</td>
            <td>'.$row3['staffaddress'].'</td>
            
          </tr>';
  }
  ?>
    </table> 

    <h4> Your Suppliers' details</h4> 
        <table class="table">
        <thead>
        <tr>
            <th scope="col">Supplier ID</th>
            <th scope="col">Supllier Name</th>
            <th scope="col">Supplier Address</th>
            
            
          </tr>
        </thead>
        <?php
        
  $sql34 = "SELECT * FROM supplier";
  $result34 = $conn->query($sql34);
  
  $conn->query($sql34);
  while($row34 = $result34->fetch_assoc()) {
  echo '<tr>
        
            <td>'.$row34['SUPPLIER_ID'].'</td>
            <td>'.$row34['S_NAME'].'</td>
            <td>'.$row34['S_ADDRESS'].'</td>
            
            
          </tr>';
  }
  ?>
    </table> 
    <h4> Your Branch details</h4> 
        <table class="table">
        <thead>
        <tr>
            <th scope="col">Branch ID</th>
            <th scope="col">Branch Name</th>
            
            <th scope="col">Branch Address</th>
            
          </tr>
        </thead>
        <?php
        
  $sql4 = "SELECT * FROM branches";
  $result4 = $conn->query($sql4);
  
  $conn->query($sql4);
  while($row4 = $result4->fetch_assoc()) {
  echo '<tr>
        
            <td>'.$row4['branchid'].'</td>
            <td>'.$row4['branchname'].'</td>
            
            <td>'.$row4['branch address'].'</td>
            
          </tr>';
  }
  ?>
    </table> 
    <h4> Your Offer details</h4> 
        <table class="table">
        <thead>
        <tr>
            <th scope="col">Product Name</th>
            <th scope="col">Discount</th>
           
            
          </tr>
        </thead>
        <?php
        
  $sql3 = "SELECT * from product where PRODUCT_ID IN (SELECT PRODUCT_ID FROM offer)";
  $result3 = $conn->query($sql3);
  
  $conn->query($sql3);
  while($row3 = $result3->fetch_assoc()) {
  echo '<tr>
        
            <td>'.$row3['P_NAME'].'</td>
            <td>'.$row3['discount'].'</td>
       
            
          </tr>';
  }
  ?>
    </table>
    <h4> Your Stock details</h4> 
        <table class="table">
        <thead>
        <tr>
            <th scope="col">Product Name</th>
            <th scope="col">Product Price</th>
            <th scope="col">Stock</th>
            <th scope="col">Edit</th>
          </tr>
        </thead>
        <?php
        
  $sql7 = "SELECT * FROM product";
  $result7 = $conn->query($sql7);
  
  $conn->query($sql7);
  while($row7 = $result7->fetch_assoc()) {
    $pid=$row7['PRODUCT_ID'];
  $sql8="SELECT * from stocks where stockid=$pid";
    $result8= $conn->query($sql8);
    $row8=$result8->fetch_assoc();
    echo '<tr>
        
            <td>'.$row7['P_NAME'].'</td>
            <td>'.$row7['PRICE'].'</td>
            
            <td>'.$row8['stock_number'].'</td>
            <td><a href="stockupdater.php?id='.$pid.'">Edit</a></td>
          </tr>';
  }
  ?>
    </table>  
      </div>
    </div>
  </div>

</main>

     

<footer class="text-muted">
  
</footer>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
</html>
