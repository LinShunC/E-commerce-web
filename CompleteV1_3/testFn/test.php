<!DOCTYPE html>
<html lang="en">
    <head>

        <title>Registration Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js"></script>
        
        

        <script src="jScript.js"></script>
    </head>

    <body>
        <?php 
            session_start(); 
        ?>
        
        
        <form id="form" method="post" action="" role="form">
            <div class="form-group">
                <label for="inputName" class="control-label">Name</label>
                <input type="text" class="form-control" id="inputName" placeholder="Cina Saffary" required>
            </div>
            <div class="form-group">
                <label for="inputEmail" class="control-label">Email</label>
                <input type="email" class="form-control" id="inputEmail" placeholder="Email" data-error="Bruh, that email address is invalid" required>
                <div class="help-block with-errors"></div>
            </div>
            
            <div class="form-group">
                <button id="submitBtn" type="submit" class="btn btn-primary" >Submit</button>
            </div>
            
            <div id="result"></div>
            <div><?php echo $_SESSION['user']; ?></div>
        </form>

    </body>
</html>