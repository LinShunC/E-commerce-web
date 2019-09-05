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

        <div id="includedContent"></div>


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
