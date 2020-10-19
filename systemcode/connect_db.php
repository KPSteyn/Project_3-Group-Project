<?php
    $con = mysqli_connect("localhost", "root", "");
    mysqli_select_db($con, "servicemanagement");

    if(mysqli_connect_error()){
        die("Connection Failed: " . mysqli_connect_error());
    }
?>