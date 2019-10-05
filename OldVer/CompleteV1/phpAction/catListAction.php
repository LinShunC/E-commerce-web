<?php
include "db.php";

$cat_sql = "SELECT * FROM category";
$results = mysqli_query($connection,$cat_sql);

if(mysqli_num_rows($results)>0){

    echo '<a class="list-group-item list-group-item-action active"  href="#list-home" role="tab" aria-controls="Catagories">Catagories</a>';
    
    while ($row = mysqli_fetch_array($results)){
        $cat_id = $row["categoryId"];
        $cat_name = $row["cName"];
        
        echo '<a class="list-group-item list-group-item-action"  href="#list-profile" role="tab" aria-controls='.$cat_name.'  onclick="loadCat('.$cat_id.'); loadBreadCrumCat('.$cat_id.')">'.$cat_name.'</a>';
        

    }
}
?>