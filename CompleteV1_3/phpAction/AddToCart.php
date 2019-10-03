<?php
include "db.php";
 session_start();
// get the id parameter from URL
$pId = $_REQUEST["q"];
     if (isset($_SESSION['username'])){
$name = $_SESSION['username'];
$query="SELECT customerId FROM customer WHERE username ='$name'";

$getUserId= mysqli_query($connection,$query);

if(mysqli_num_rows($getUserId)>0)
{
     while ($row = mysqli_fetch_array($getUserId)){
      $userID=$row["customerId"];
              $cat_sql = "INSERT INTO cart (customerId, productId)
VALUES ( '" . $userID . "','" . $pId . "')";
  if ($connection->query($cat_sql) === TRUE) 
  {
    echo "Success";
} else 
  {
    echo "Error: " . $cat_sql . "<br> " . $name . "" . $connection->error;
}
    }
   
  
 

}



     }
else
{
    echo "";
}