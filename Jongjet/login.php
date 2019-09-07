<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js"></script>

        <link rel="stylesheet" type="text/css" href="css/logInStyle.css">
        <link rel="stylesheet" type="text/css" href="css/navbarStyle.css">

        <script src="JScript/loginScript.js"></script>

        <script> 
            $(function(){
                $("#includedContent").load("navbar.php"); 
            });
        </script> 

    </head>

    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

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



        <div class="container">
            <form class="well form-horizontal" method="post"  id="loginForm" data-toggle="validator"  role="form">
                <fieldset>

                    <!-- Form Name -->
                    <legend><center><h2><b>Log in</b></h2></center></legend><br>

                    <!-- Text input-->

                    <div class="form-group">
                        <label class="col-md-4 control-label">Email</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                <input  name="email" placeholder="Email" class="form-control"  type="email" required>
                            </div>
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>

                    <!-- Text input-->

                    <div class="form-group">
                        <label class="col-md-4 control-label" >Password</label> 
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input type="password" data-minlength="6" class="form-control" id="inputPassword" placeholder="Password" name="password" required>
                            </div>
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>



                    <!-- Button -->
                    <div class="btnDiv">


                        <button type="submit" class="btn btn-send">Login   &nbsp&nbsp<span class="glyphicon glyphicon-send"></span></button>

                    </div>

                    <div id="result"></div>

                </fieldset>
            </form>
        </div>





        <!-- Footer -->
        <footer class="text-center">
            <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
                <span class="glyphicon glyphicon-chevron-up"></span>
            </a><br><br>
            <p>Bootstrap Theme Made By <a href="https://www.w3schools.com" data-toggle="tooltip" title="Visit w3schools">www.w3schools.com</a></p>
        </footer>

        <script>
            $(document).ready(function(){
                // Initialize Tooltip
                $('[data-toggle="tooltip"]').tooltip();

                // Add smooth scrolling to all links in navbar + footer link
                $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

                    // Make sure this.hash has a value before overriding default behavior
                    if (this.hash !== "") {

                        // Prevent default anchor click behavior
                        event.preventDefault();

                        // Store hash
                        var hash = this.hash;

                        // Using jQuery's animate() method to add smooth page scroll
                        // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
                        $('html, body').animate({
                            scrollTop: $(hash).offset().top
                        }, 900, function(){

                            // Add hash (#) to URL when done scrolling (default click behavior)
                            window.location.hash = hash;
                        });
                    } // End if
                });
            })
        </script>



    </body>
</html>
