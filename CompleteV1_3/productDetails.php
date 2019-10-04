
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Product Detail</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

        <script> 
            $(function(){
                $("#includedNav").load("navbar.php"); 
            });
            $(function(){
                $("#includedFooter").load("footer.html"); 
            });
        </script> 



        <script src="JScript/pVScript.js"></script>
        <script src="JScript/showDES.js"></script>

        <link rel="stylesheet" type="text/css" href="css/navbarStyle.css">
        <link rel="stylesheet" type="text/css" href="css/product.css">

    </head>

    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

        <?php

        session_start();


        if (isset($_REQUEST["pid"])){
            $pid = $_REQUEST["pid"];

            echo "

                <script>

                    $(function(){
                        loadPrice($pid);
                        loadDescription($pid);
                        loadImage($pid);
                        loadRelated($pid);
                        loadProductName($pid);
                        loadHighlights($pid);
                        loadBreadCrums($pid);

                        $('.descriptionButton').click(function(){
                              loadDescription($pid);              
                        });

                        $('.detailsButton').click(function(){
                              loadDetail($pid);              
                        });
                    });


                </script> 

            ";
            if (isset($_SESSION['username']))
            {
                echo "

                <script>   
                    $(function(){
                        $('#cartButton').click(function(){
                            addCart($pid);              
                        });

                    });


                </script> 

            ";
            }
        }



        ?>

        <div id="includedNav"></div>

        <ol class="breadcrumb" id="breadcrumb" style="margin-bottom:0px">

        </ol>


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
                            <ul id="highlights">


                            </ul>

                            <b id="price">Price AUD xx.xx</b><br>
                            <P Style="display: inline;">QTY</P>
                            <select>  <option value = "1">one</option>
                                <option value = "2">two</option>
                                <option value = "3">three</option>
                                <option value = "4">four</option></select>
                            <br><br>
                            <button class="btn" type="submit" id="cartButton">Add to cart</button>

                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-8">

                        <button class="descriptionButton"  type="button">
                            Description</button>

                        <button  class="detailsButton" type="button">Details</button>
                        <div class="descriptionBox">

                            <p id="description"> 

                            </p>

                        </div>
                    </div>
                    <div class="col-md-3">
                        <h4>Related Products</h4>
                        <div id="Related">


                        </div>
                    </div>
                </div>
            </div>

            <p id="checkBar"></p>
        </div>

        <div id="includedFooter"></div>

    </body>
</html>
