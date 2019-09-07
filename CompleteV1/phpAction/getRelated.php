<?php
include "db.php";

// get the q parameter from URL
$pid = $_REQUEST["q"];
        $sql = "SELECT * FROM accessorysupport
    INNER JOIN product
    on accessorysupport.productId=product.productId
    INNER JOIN pictures
    ON pictures.productId=accessorysupport.productId
    where supportedPID='.$pid.'
    limit 2";
$results = mysqli_query($connection,$sql);

if(mysqli_num_rows($results)>0){

    while ($row = mysqli_fetch_array($results)){
        $prod_name = $row["pName"];
        $prod_pic1 = $row["link1"];
          $prod_Pri = $row["price"];
        $productid=$row["productId"];
        echo '<div class="relatedBox">
                   <p>'.$prod_name.'</p>
                   <a href="productDetails.php?pid='.$productid.'">
                   <img src="'.$prod_pic1.'" alt="img1" style="height:100px;"></a>
                   <p>Details</p>
                   <p>price: $'.$prod_Pri.'</p>
             </div>
            ';
    }
}
?>