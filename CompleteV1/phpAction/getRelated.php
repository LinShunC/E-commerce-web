<?php
include "db.php";

// get the q parameter from URL

    $sql = "SELECT * FROM product 
    INNER JOIN accessorysupport 
    ON product.productId=supportedPID
    RIGHT JOIN pictures
    ON pictures.productId=accessorysupport.productId
    where product.productId=3
    limit 2";
$results = mysqli_query($connection,$sql);

if(mysqli_num_rows($results)>0){

    while ($row = mysqli_fetch_array($results)){
        $prod_name = $row["pName"];
        $prod_pic1 = $row["link1"];
          $prod_Pri = $row["price"];
        echo '<div class="relatedBox">
                   <p>'.$prod_name.'</p>
                   <img src="'.$prod_pic1.'" alt="img1" style="height:100px;">
                   <p>Details</p>
                   <p>price: $'.$prod_Pri.'</p>
             </div>
            ';
    }
}
?>