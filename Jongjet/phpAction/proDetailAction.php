<?php
include "db.php";

//$pid = $_REQUEST["id"];



$pro_sql = "SELECT * FROM product INNER JOIN productDetail ON product.productId = productDetail.productId WHERE product.productId = ".$pid;
$results = mysqli_query($connection,$pro_sql);

if(mysqli_num_rows($results)>0){

    while ($row = mysqli_fetch_array($results)){
        $pid = $row["productId"];
        
        $detail = array();
        
        $x = 1;
        while ($row["detail".$x] != ''){
            $x++;
            array_push($detail, $row["detail".$x]);
        }
            
            
        echo "
            
            $detail;
            
            ";
    }
}
?>