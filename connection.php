<?php

$cleardb_url      = parse_url(getenv("CLEARDB_DATABASE_URL"));
$cleardb_server   = $cleardb_url["host"];
$cleardb_username = $cleardb_url["user"];
$cleardb_password = $cleardb_url["pass"];
$cleardb_db       = substr($cleardb_url["path"],1);


// $servername ='localhost';
// $username = 'Developer';
// $pass = '1234';
// $db = 'result';

//Create connection

$conn = mysqli_connect($cleardb_server, $cleardb_username, $cleardb_password, $cleardb_db);

if(!$conn){
	die('Could not connect to database'. mysqli_error($conn));
}else {
	// echo "Connection Successful";
}
