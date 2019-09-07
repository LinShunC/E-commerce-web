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
            <a class="navbar-brand" href="index.php"><img class="img-responsive img-rounded" alt="logo" src="Pictures/logo.png"></a>
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
                        <li><a href='' onclick="logout()">log out</a>
                        </li>
                    </ul>

                    <script>
                        function logout(){
                            $.get("phpAction/logout.php", function(data, status){
                            });
                        }
                    </script>


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
                        <li><a href="productDetail.php?pid=1">Google Pixel 3</a></li>
                        <li><a href="productDetail.php?pid=2">Google Pixel 3XL</a></li>
                        <li><a href="productsView.php?id=1">All</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Apple</a>
                    <ul class="dropdown-menu">
                        <li><a href="productDetail.php?pid=3">Apple iPhone XS Max</a></li>
                        <li><a href="productDetail.php?pid=4">Apple iPhone 8</a></li>
                        <li><a href="productsView.php?id=2">All</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Samsung</a>
                    <ul class="dropdown-menu">
                        <li><a href="productDetail.php?pid=5">Samsung Galaxy S9+</a></li>
                        <li><a href="productDetail.php?pid=6">Samsung Galaxy S10</a></li>
                        <li><a href="productsView.php?id=3">All</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Oppo</a>
                    <ul class="dropdown-menu">
                        <li><a href="productDetail.php?pid=7">OPPO Find X</a></li>
                        <li><a href="productDetail.php?pid=8">OPPO Reno Z</a></li>
                        <li><a href="productsView.php?id=4">All</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">HUAWEI</a>
                    <ul class="dropdown-menu">
                        <li><a href="productDetail.php?pid=11">Huawei Nova 3e</a></li>
                        <li><a href="productDetail.php?pid=12">Huawei P30 Pro</a></li>
                        <li><a href="productsView.php?id=5">All </a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">LG</a>
                    <ul class="dropdown-menu">
                        <li><a href="productDetail.php?pid=13">LG V30+</a></li>
                        <li><a href="productDetail.php?pid=14">LG V40 ThinQ </a></li>
                        <li><a href="productsView.php?id=6">All</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">NOKIA</a>
                    <ul class="dropdown-menu">
                        <li><a href="productDetail.php?pid=15">Nokia 8.1</a></li>
                        <li><a href="productDetail.php?pid=16">Nokia 9</a></li>
                        <li><a href="productsView.php?id=7">All</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Accessories</a>
                    <ul class="dropdown-menu">
                        <li><a href="productsView.php?aid=4">Screen Protector</a></li>
                        <li><a href="productsView.php?aid=3">Phone Chargers  </a></li>
                        <li><a href="productsView.php?id=8">All</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>


