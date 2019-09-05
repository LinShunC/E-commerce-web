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

  <style>
    body {
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
    }
    h3, h4 {
      margin: 10px 0 30px 0;
      letter-spacing: 10px;
      font-size: 20px;
      color: #111;
    }
    .container {
      padding: 80px 120px;
    }
    .containerPromo {
      padding: 10px 50px;
    }
    .person {
      border: 10px solid transparent;
      margin-bottom: 25px;
      width: 80%;
      height: 80%;
      opacity: 0.7;
    }
    .person:hover {
      border-color: #f1f1f1;
    }
    .carousel-inner img {
      height: 100%;
      width: auto;
      margin: auto;
    }
    .carousel-caption h3 {
      color: #fff !important;
    }
    @media (max-width: 600px) {
      .carousel-caption {
        display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
      }
    }
    .bg-1 {
      background: #2d2d30;
      color: #bdbdbd;
    }
    .bg-1 h3 {color: #fff;}
    .bg-1 p {font-style: italic;}
    .list-group-item:first-child {
      border-top-right-radius: 0;
      border-top-left-radius: 0;
    }
    .list-group-item:last-child {
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
    }
    .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
    }
    .thumbnail p {
      margin-top: 15px;
      color: #555;
    }
    .btn {
      padding: 10px 20px;
      background-color: #333;
      color: #f1f1f1;
      border-radius: 0;
      transition: .2s;
    }
    .btn:hover, .btn:focus {
      border: 1px solid #333;
      background-color: #fff;
      color: #000;
    }
    .modal-header, h4, .close {
      background-color: #333;
      color: #fff !important;
      text-align: center;
      font-size: 30px;
    }
    .modal-header, .modal-body {
      padding: 40px 50px;
    }
    .nav-tabs li a {
      color: #777;
    }
    .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: #2d2d30;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
    }
    .navbar li a, .navbar .navbar-brand {
      color: #d5d5d5 !important;
    }
    .navbar-nav li a:hover {
      color: #fff !important;
    }
    .navbar-nav li.active a {
      color: #fff !important;
      background-color: #29292c !important;
    }
    .navbar-default .navbar-toggle {
      border-color: transparent;
    }
    .open .dropdown-toggle {
      color: #fff;
      background-color: #555 !important;
    }
    .dropdown-menu li a {
      color: #000 !important;
    }
    .dropdown-menu li a:hover {
      background-color: red !important;
    }
    footer {
      background-color: #2d2d30;
      color: #f5f5f5;
      padding: 32px;
    }
    footer a {
      color: #f5f5f5;
    }
    footer a:hover {
      color: #777;
      text-decoration: none;
    }
    .form-control {
      border-radius: 0;
    }
    textarea {
      resize: none;
    }
      .navbar-brand {
          padding: 10px 20px;
      }  
    .navbar-brand img{
      width: 30px;
    }
      
      .mainContent {
          width: 900px;
          margin: auto;
      }

    @media screen and (max-width: 1445px){
      .navbar-brand img{
        width: 70px;
      }
    }

    @media screen and (max-width: 767px){
      .navbar-brand img{
        width: 30px;
      }
        .mainContent {
          width: auto;
          margin: auto;
      }
    }
      
  </style>
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">


  <nav class="navbar navbar-default">
    <div class="container-fluid">

      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#"><img class="img-responsive img-rounded" alt="logo" src="pictures/logo.png"></a>
      </div>

      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-right">
            
            
             <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown"  href="#"><span class="glyphicon glyphicon-user"></span> Your Account</a>
            <ul class="dropdown-menu">
              <li><a href="#">log in </a></li>
              <li><a href="registration.php">registration</a></li>
             
            </ul>
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
          <li><a href="index.html">HOME</a></li>
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
        <img src="pictures/promotion1.jpg" alt="New York">
        <div class="carousel-caption">
          <h3>New York</h3>
          <p>The atmosphere in New York is lorem ipsum.</p>
        </div>
      </div>

      <div class="item" >
        <img src="pictures/promotion1.jpg" alt="Chicago">
        <div class="carousel-caption">
          <h3>Chicago</h3>
          <p>Thank you, Chicago - A night we won't forget.</p>
        </div>
      </div>

      <div class="item">
        <img src="pictures/promotion1.jpg" alt="Los Angeles">
        <div class="carousel-caption">
          <h3>LA</h3>
          <p>Even though the traffic was a mess, we had the best time playing at Venice Beach!</p>
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

    

    <div class=mainContent>
        <div class="containerPromo">
          <div class="row">
            <div class="col-sm-4">
              <div class="panel panel-primary">
                <div class="panel-heading">BLACK FRIDAY DEAL</div>
                <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
                <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
              </div>
            </div>
            <div class="col-sm-4">
              <div class="panel panel-danger">
                <div class="panel-heading">BLACK FRIDAY DEAL</div>
                <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
                <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
              </div>
            </div>
            <div class="col-sm-4">
              <div class="panel panel-success">
                <div class="panel-heading">BLACK FRIDAY DEAL</div>
                <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
                <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
              </div>
            </div>
          </div>
        </div>

        <div class="containerPromo">
          <div class="row">
            <div class="col-sm-4">
              <div class="panel panel-primary">
                <div class="panel-heading">BLACK FRIDAY DEAL</div>
                <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
                <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
              </div>
            </div>
            <div class="col-sm-4">
              <div class="panel panel-primary">
                <div class="panel-heading">BLACK FRIDAY DEAL</div>
                <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
                <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
              </div>
            </div>
            <div class="col-sm-4">
              <div class="panel panel-primary">
                <div class="panel-heading">BLACK FRIDAY DEAL</div>
                <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
                <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
              </div>
            </div>
          </div>
        </div><br><br>
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