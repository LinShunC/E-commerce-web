<?php
include "db.php";

$cat_sql = "SELECT * FROM category";
$results = mysqli_query($connection,$cat_sql);

if(mysqli_num_rows($results)>0){

    echo '<a class="list-group-item list-group-item-action active"  href="#" role="tab" aria-controls="Catagories">Catagories</a>';
    
    while ($row = mysqli_fetch_array($results)){
        $cat_id = $row["categoryId"];
        $cat_name = $row["cName"];
        
        if ($cat_name != 'Accessory'){
            echo '<a class="list-group-item list-group-item-action"  href="#" role="tab" aria-controls='.$cat_name.'  onclick="loadCat('.$cat_id.'); loadBreadCrumCat('.$cat_id.')">'.$cat_name.'</a>';
        } else {
            echo '
            <a class="list-group-item list-group-item-action"  href="#" role="tab" id="accCat" data-toggle="collapse" data-parent="#catMenu">
                '.$cat_name.'
            </a>
            
            
            
            <div class="collapse list-group-submenu" id="subAccCat">
          
                <a href="#" class="list-group-item sub-item" data-parent="#subAccCat" style="padding-left: 78px;">SubSubPos1</a>
          
        
            </div>
            ';
        }
        
        
        

    }
}
?>