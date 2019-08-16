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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js"></script>
    
  
  

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
    
    .list-group-item:last-child {
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
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

    @media screen and (max-width: 1445px){
      .navbar-brand img{
        width: 70px;
      }
    }

    @media screen and (max-width: 767px){
      .navbar-brand img{
        width: 30px;
      }
    }
      
      #success_message{ display: none;}
      
      
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
          <li><a href="#"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
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


 <div class="container">
        <form class="well form-horizontal" action="week5.php " method="post"  id="contact_form" data-toggle="validator"  role="form">
            <fieldset>

            <!-- Form Name -->
            <legend><center><h2><b>Registration Form</b></h2></center></legend><br>

            <!-- Text input-->

            <div class="form-group">
              <label class="col-md-4 control-label">First Name</label>  
              <div class="col-md-4 inputGroupContainer">
              <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
              <input  name="first_name" placeholder="First Name" class="form-control"  type="text">
                </div>
              </div>
            </div>

            <!-- Text input-->

            <div class="form-group">
              <label class="col-md-4 control-label" >Last Name</label> 
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                  <input name="last_name" placeholder="Last Name" class="form-control"  type="text">
                </div>
              </div>
            </div>

                <!-- Text input-->
              <div class="form-group"> 
              <label class="col-md-4 control-label">Date of Birth</label>
                <div class="col-md-4 selectContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                        <input name="dob" placeholder="Date of Birth" class="form-control"  type="date">
                    </div>
                </div>
              </div>
                
                <!-- Text input-->
              <div class="form-group"> 
              <label class="col-md-4 control-label">Address</label>
                <div class="col-md-4 selectContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                        <input name="address" placeholder="Address" class="form-control"  type="text">
                    </div>
                </div>
              </div>

            <!-- Text input-->

            <div class="form-group">
              <label class="col-md-4 control-label">Username</label>  
              <div class="col-md-4 inputGroupContainer">
              <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
              <input  name="user_name" placeholder="Username" class="form-control"  type="text">
                </div>
              </div>
            </div>

            <!-- Text input-->

            <div class="form-group">
              <label class="col-md-4 control-label" for="inputPassword"  >Password</label> 
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
              <input type="password" data-minlength="6" class="form-control" id="inputPassword" placeholder="Password" name="password" required>
                           
                </div>
              </div>
            </div>
            <!-- Text input-->

            <div class="form-group">
              <label class="col-md-4 control-label" >Confirm Password</label> 
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
              <input input type="password" class="form-control" id="inputPasswordConfirm" data-match="#inputPassword" data-match-error="Whoops, these don't match" placeholder="Confirm" required>
                      
                </div>
                       <div class="help-block with-errors"></div>
              </div>
            </div>

            <!-- Text input-->
                   <div class="form-group">
              <label class="col-md-4 control-label">E-Mail</label>  
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
              <input name="email" placeholder="E-Mail Address" class="form-control"  type="text">
                </div>
              </div>
            </div>


            <!-- Text input-->

            <div class="form-group">
              <label class="col-md-4 control-label">Contact No.</label>  
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
              <input name="contact_no" placeholder="(61)" class="form-control" type="text">
                </div>
              </div>
            </div>

            <!-- Select Basic -->

            <!-- Success message -->
            <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!.</div>

            <!-- Button -->
            <div class="form-group">
              <label class="col-md-4 control-label"></label>
              <div class="col-md-4"><br>
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
              </div>
            </div>

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
