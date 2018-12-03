<?php

$servername ='localhost';
$username = 'Developer';
$pass = '1234';
$db = 'result';

//Create connection

$conn = mysqli_connect($servername, $username, $pass, $db);

if(!$conn){
	die('Could not connect to database'. mysqli_error($conn));
}else {
	// echo "Connection Successful";
}
