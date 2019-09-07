
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Home Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <script> 
            $(function(){
                $("#includedContent").load("navbar.php"); 
            });
        </script> 

        <?php

        session_start();


        if (isset($_REQUEST["pid"])){
            $pid = $_REQUEST["pid"];

            echo "

        <script> 
            $(function(){
                loadPrice($pid),loadDescription($pid),loadImage($pid),loadRelated($pid),loadProductName($pid);
            });
            
            $(document).ready(function(){
                $('.descriptionButton').click(function(){
                      loadDescription($pid);              
                });
            });
        </script> 

    ";
        }

        ?>
        <script src="JScript/pVScript.js"></script>
        <script src="JScript/showDES.js"></script>

        <link rel="stylesheet" type="text/css" href="css/pVStyle.css">
        <link rel="stylesheet" type="text/css" href="css/navbarStyle.css">
        <link rel="stylesheet" type="text/css" href="css/product.css">

    </head>

    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

        <div id="includedContent"></div>






        <div class = "mainContent row">


            <div class="row col-sm-2" id="sideList">

                <div class="list-group" id="list-tab" role="tablist">
                    <?php 
                    include "phpAction/catListAction.php";
                    ?>
                </div>

            </div>


            <div class="row col-sm-10" id="content">

                <div class="row" > 
                   
                    <div class="col-md-7">
                        
                        <div class="carouselContainer">
                            <div id="ProductName">
                            </div>
                            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                

                                <!-- Wrapper for slides -->
                                <div class="carousel-inner" role="listbox" id="ImageBox">
                                    
                                </div>

                                <!-- Left and right controls -->
                                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="highlightsContainer">
                            <h2>Product Highlights</h2><br>
                            <ul>
                                <li>item1</li>
                                <li>item2</li>
                                <li>item3</li>

                            </ul>

                            <b id="price">Price AUD xx.xx</b><br>
                            <P Style="display: inline;">QTY</P>
                            <select>  <option value = "1">one</option>
                                <option value = "2">two</option>
                                <option value = "3">three</option>
                                <option value = "4">four</option></select>
                            <br><br>
                            <button class="btn" type="submit">Add to cart</button>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-1">
                    </div>
                    <div class="col-md-7">

                        <button class="descriptionButton"  type="button">
                            Description</button>

                        <button  class="detailsButton" type="button" onclick='document.getElementById("description").innerHTML ="aa"  '>Details</button>
                        <div class="descriptionBox">

                            <p id="description"> 


                            </p>
                            <p> 

                            </p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <h2>Related Products</h2>
                        <div id="Related">
                            <?php 
                            include 'phpAction/getRelated.php';
                            ?>

                        </div>
                    </div>
                </div>
            </div>


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
