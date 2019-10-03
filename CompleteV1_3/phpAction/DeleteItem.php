<?php
include "db.php";
 session_start();
// get the id parameter from URL
$pId = $_REQUEST["q"];
     

$query="DELETE FROM cart WHERE productId  ='$pId'";

$getUserId= mysqli_query($connection,$query);




     
