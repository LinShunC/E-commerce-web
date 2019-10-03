<?php
include "db.php";
 session_start();
// get the id parameter from URL

     if (isset($_SESSION['username'])){
$name = $_SESSION['username'];
$query="SELECT customerId FROM customer WHERE username ='$name'";

$getUserId= mysqli_query($connection,$query);

if(mysqli_num_rows($getUserId)>0)
{
     while ($row = mysqli_fetch_array($getUserId)){
      $userID=$row["customerId"];
              $cart_sql = "SELECT * FROM `cart` INNER JOIN pictures ON cart.productId=pictures.pictureId inner join product on product.productId=cart.productId where cart.customerId=$userID";
         $results = mysqli_query($connection,$cart_sql);
  if(mysqli_num_rows($results)>0){

    while ($CartRow = mysqli_fetch_array($results)){
        $pid = $CartRow["productId"];
        $prod_name = $CartRow["pName"];
        $prod_price = $CartRow["price"];
        $prod_pic = $CartRow["link1"];

        echo '

            <div class="col-sm-4">
                <div class="panel panel-primary">
                        <div class="panel-heading">'.$prod_name.'</div>
                        <div class="panel-body"><a href="productDetails.php?pid='.$pid.'"><img src="'.$prod_pic.'" class="img-responsive" style="width:100%" alt="Image" ></a></div>
                        <div class="panel-footer">price : '.$prod_price.'</div>
                </div>

            </div>

        ';
    }
}
    }
   
  
 

}



     }
else
{
    echo "";
}