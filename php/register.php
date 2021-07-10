<?php
    include_once("dbconnect.php");
     $name = $_POST["name"];
     $email = $_POST["email"];
     $phone = $_POST["phone"];
     $passa = $_POST["passworda"];
     $passb = $_POST["passwordb"];
     $shapass = sha1($passa);  
     $otp = rand(1000,9999);

     if (!(isset($name) || isset($email) || isset($phone) || isset($passa) || isset($passb))){
         echo "<script>alert('Please fill in all required information')</script>";
         echo "<script>window.location.replace('../html/register.html')</script>";
     }else{
        $sqlregister = "INSERT INTO tbl_user(name,email,phone,password,otp) VALUES('$name','$email','$phone','$shapass','$otp')";
        try{
            $conn->exec($sqlregister);
            echo "<script> alert('Registration successful')</script>";
            echo "<script> window.location.replace('../html/login.html')</script>";
        }catch(PDOException $e){
            echo "<script> alert('Registration failed')</script>";
            echo "<script> window.location.replace('../html/register.html')</script>";
        }
     }
?>