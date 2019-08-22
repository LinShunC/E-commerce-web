<?php

$servername="localhost";
$dusername="root";
$dpassword="";
$dbname="login";

/*connect to database*/
$conn= new mysqli($servername,$dusername,$dpassword,$dbname);

if ($conn->connect_error)
{
    die ("connect failed:".$conn->connect_error);
}
else
{
   
    $fisrtname=$_POST["first_name"];
    
        $lastname=$_POST["last_name"];
    
         $dob=$_POST["dob"];
    
     $address=$_POST["address"];
    

       $username=$_POST["username"];
    
     $password=password_hash($_POST["password"],PASSWORD_DEFAULT);
    
     $email=$_POST["email"];
    
     $pnumber=$_POST["contact_no"];
    
    $query = "INSERT INTO customer (username,password,Email,address,phonenumber) VALUES
    ('".$username."','".$password."','".$email."','".$address."','".$pnumber."')";

echo $query;
$result = mysqli_query($conn,$query);

if(!$result){
    echo "<p>something is wrong with", $query,"</p>";
}
else
{
    echo"<p> successfully added</p>";
    
}}
  
mysqli_close($conn);
    
?>