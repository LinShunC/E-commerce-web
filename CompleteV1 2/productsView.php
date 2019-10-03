<?php

session_start();

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Products</title>
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
        <link rel="stylesheet" type="text/css" href="css/pVStyle.css">
        <link rel="stylesheet" type="text/css" href="css/navbarStyle.css">

        <?php
        if (isset($_REQUEST["Cart"])){
              $q = $_REQUEST["Cart"];
            echo "

                    <script> 
                        $(function(){
                            loadCart($q);
                       
                        });
                    </script> 

                ";

        }
        
        else if (isset($_GET["keyword"])){
            $keyword = $_GET["keyword"];
            echo "
                    <script> 
                        $(function(){
                            loadKw('$keyword'); //load product which related kw
                            loadBreadCrumCat(0);
                        });
                    </script> 

                ";
            
        }
        else if (isset($_REQUEST["id"])){
            $catId = $_REQUEST["id"];

            echo "

                    <script> 
                        $(function(){
                            loadCat($catId);
                            loadBreadCrumCat($catId);
                        });
                    </script> 

                ";

        } else if (isset($_REQUEST["aid"])){
            $accId = $_REQUEST["aid"];

            echo "

                    <script> 
                        $(function(){
                            loadAcc($accId);
                            loadBreadCrumAcc($accId);
                        });
                    </script> 

                ";

        } else {

            echo "
                    <script> 
                        $(function(){
                            loadCat(0); //load random 9 products
                            loadBreadCrumCat(0);
                        });
                    </script> 

                ";

        }
        
        //Searching things
        if (isset($_REQUEST["keyword"])){
            
        }

        ?>


    </head>

    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

        <div id="includedNav"></div>
        
        <ol class="breadcrumb" id="breadcrumb" style="margin-bottom:0px">
              
        </ol>

        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="Pictures/promotion1.jpg" alt="New York">
                    <div class="carousel-caption">
                        <h3>Promotion1</h3>
                    </div>
                </div>

                <div class="item" >
                    <img src="Pictures/promotion1.jpg" alt="Chicago">
                    <div class="carousel-caption">
                        <h3>Promotion2</h3>
                    </div>
                </div>

                <div class="item">
                    <img src="Pictures/promotion1.jpg" alt="Los Angeles">
                    <div class="carousel-caption">
                        <h3>Promotion3</h3>
                    </div>
                </div>
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

        <div class = "mainContent row">



            <div class="row col-sm-2" id="sideList">

                <div id="catMenu" class="list-group" id="list-tab" role="tablist">
                    <?php 
                    include "phpAction/catListAction.php";
                    ?>
                </div>

            </div>


            <div class="row col-sm-10" id="content"></div>

        </div>

        <div id="includedFooter"></div>

    </body>
</html>
