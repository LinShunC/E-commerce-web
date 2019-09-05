<?php
session_start();
?>

<nav class="navbar navbar-default">
    <div class="container-fluid">

        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><img class="img-responsive img-rounded" alt="logo" src="Pictures/logo.png"></a>
        </div>

        <div class="collapse navbar-collapse" id="myNavbar">
            
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">

                    <?php 
                    
                    if (isset($_SESSION['username'])){ 
                        
                    ?>

                    <a class="dropdown-toggle" data-toggle="dropdown"  href="#"><span class="glyphicon glyphicon-user"></span>
                        <?php echo $_SESSION['username']; ?>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="
                            <?php session_destroy(); ?>
                            ">log out</a>
                        </li>
                    </ul>

                    <?php }else{ ?>

                    <a class="dropdown-toggle" data-toggle="dropdown"  href="#"><span class="glyphicon glyphicon-user"></span> Your Account</a>
                    <ul class="dropdown-menu">
                        <li><a href="login.php">log in </a></li>
                        <li><a href="registration.php">registration</a></li>

                    </ul>

                    <?php } ?>



                </li>
                <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
            </ul>
            <form class="navbar-form navbar-right" action="/action_page.php">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search">
                    <div class="input-group-btn">
                        <button class="btn" type="submit" style="padding: 6px 10px; vertical-align: top;margin-left: 0px">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>
                    </div>
                </div>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="index.php">HOME</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Google</a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Google Pixel 3</a></li>
                        <li><a href="#">Google Pixel 3XL</a></li>
                        <li><a href="#">All</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Apple</a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Apple iPhone XS Max</a></li>
                        <li><a href="#">Apple iPhone 8</a></li>
                        <li><a href="#">All</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Samsung</a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Samsung Galaxy S9+</a></li>
                        <li><a href="#">Samsung Galaxy S10</a></li>
                        <li><a href="#">All</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Oppo</a>
                    <ul class="dropdown-menu">
                        <li><a href="#">OPPO Find X</a></li>
                        <li><a href="#">OPPO Reno Z</a></li>
                        <li><a href="#">All</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">HUAWEI</a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Huawei Nova 3e</a></li>
                        <li><a href="#">Huawei P30 Pro</a></li>
                        <li><a href="#">All </a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">LG</a>
                    <ul class="dropdown-menu">
                        <li><a href="#">LG V30+</a></li>
                        <li><a href="#">LG V40 ThinQ </a></li>
                        <li><a href="#">All</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">NOKIA</a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Nokia 8.1</a></li>
                        <li><a href="#">Nokia 9</a></li>
                        <li><a href="#">All</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Accessories</a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Screen Protector</a></li>
                        <li><a href="#">Phone Chargers  </a></li>
                        <li><a href="#">All</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
