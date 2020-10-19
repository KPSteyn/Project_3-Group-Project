<?php
	session_start();
	$_SESSION['errorCode'] = "";
	$pdo = new PDO('mysql:host=localhost;port=3306;dbname=servicemanagement','root', '');
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	if(isset($_POST['username'])){
		$statement = $pdo->prepare(
	       'SELECT *  FROM user WHERE username = :userName AND password = :userPassword'
	    );
  		$statement->execute(array( 
	       ':userName' => $_POST['username'], ':userPassword' => $_POST['password']
	    ));
	    $resultRow = $statement->fetch(PDO::FETCH_ASSOC);
 		if ( $resultRow === false ) { 
             $_SESSION['errorCode'] = "<br><br><strong><span style = \"color:red\";>Invalid Login Information Submitted.<br>Username Submitted:".$_POST['username']."<br>Password Submitted:".$_POST['password']."</span></strong><br><br>";
             
             echo "<script>alert(". $_SESSION['errorCode'] .")</script>";

 		}else{
 			$_SESSION['first'] = $resultRow['firstName'];
 			$_SESSION['type'] = $resultRow['userType'];
 			$_SESSION['user'] = $resultRow['userID'];
 			$_SESSION['second'] = $resultRow['secondName'];
 			if($resultRow['userType'] == "mechanic"){
				header( 'Location: serviceManagement/servicemanagerMechanic.php') ;
	    		return;
 			}
			if($resultRow['userType'] == "manager"){
                header( 'Location: home/managerHome.php') ;
                return;
            }
            if($resultRow['userType'] == "administrator"){
                header( 'Location: home/ownerHome.php') ;
                return;
            }
 			
	    }
	}
?>
<!doctype html>
<html lang="en">

<head>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Manic_Cycles_Sign_in</title>

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }
        
        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
</head>

<body class="text-center">
        <div class="container">
            <div class="row" style="">
                <div class="col-sm-12">
                    <form style="width: fit-content; margin: auto; background: rgba(55, 168, 198, 0.5); border-radius: 5px; padding: 20px;  color: white; text-shadow: 2px 2px 5px black;" action="index.php" method="POST">
                    <img src="logo.png" width="275" height="200">
                        <fieldset>

                            <legend>Please Login</legend>

                            <div class="form-group">
                                <label for="username">Username</label>
                                <input id="username" class="form-control" type="text" name="username" required autofocus>
                            </div>

                            <div class="form-group">
                                <label for="password">Password</label>
                                <input id="password" class="form-control" type="password" name="password" required autofocus>
                            </div>

                            <button type="submit" class="btn" name="login_btn">Login</button><br>
                            <a href="userManual.php">Need Help?</a>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </body>

</html>