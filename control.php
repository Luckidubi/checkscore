<?php
session_start();
include 'connection.php';


if(isset($_POST['save'])){

	$name = mysqli_real_escape_string($conn, $_POST['name']);
	$gender = mysqli_real_escape_string($conn, $_POST['gender']);
	$class1 = mysqli_real_escape_string($conn, strtolower($_POST['class']));
	$subject = mysqli_real_escape_string($conn, $_POST['subject']);
	$ore = mysqli_real_escape_string($conn, $_POST['ore']);
	$assignment =  mysqli_real_escape_string($conn, $_POST['assign']);
	$ca =  mysqli_real_escape_string($conn, $_POST['ca']);
	$note =  mysqli_real_escape_string($conn, $_POST['note']);
	$project =  mysqli_real_escape_string($conn, $_POST['project']);
	$midterm = mysqli_real_escape_string($conn, $_POST['mid-term']);
	$attendance = mysqli_real_escape_string($conn, $_POST['attend']);
	$exam = mysqli_real_escape_string($conn, $_POST['exam']);
	$total = add($ore,$assignment,$ca,$note,$project,$midterm,$attendance,$exam);
	$grade = checkGrade($total);

	$target_dir = "uploads/";
	$target_file = $target_dir . basename($_FILES["image"]["name"]);
	$uploadOk = 1;
	$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
// Check if image file is a actual image or fake image

    $check = getimagesize($_FILES["image"]["tmp_name"]);
    if($check !== false) {
        echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "File is not an image.";
        $uploadOk = 0;
    }

	// Check if file already exists
	if (file_exists($target_file)) {
	    echo "Sorry, file already exists.";
	    $uploadOk = 0;
	}
	// Check file size
	if ($_FILES["image"]["size"] > 500000) {
	    echo "Sorry, your file is too large.";
	    $uploadOk = 0;
	}
	// Allow certain file formats
	if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
	&& $imageFileType != "gif" ) {
	    echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
	    $uploadOk = 0;
	}
	// Check if $uploadOk is set to 0 by an error
	if ($uploadOk == 0) {
	    echo "Sorry, your file was not uploaded.";
	// if everything is ok, try to upload file
	} else {
	    if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
	        echo "The file ". basename( $_FILES["image"]["name"]). " has been uploaded.";
	    } else {
	        echo "Sorry, there was an error uploading your file.";
	    }
	}


	

	$create = mysqli_query($conn, "INSERT INTO scores (Name, Gender, Student_Class, Subject, ORE, Assignment, C_A, Note, Project, MidtermTest, Attendance, Exam, Total, Grade, Avatar) VALUES('$name', '$gender', '$class1', '$subject', '$ore', '$assignment', '$ca', '$note', '$project', '$midterm', '$attendance', '$exam', '$total', '$grade', '$target_file')") or die(mysqli_error($conn)); 
	
	if($create){
		$_SESSION['msg'] = 'The new record has been added';
		header("location: create.php");
	}else {
		$_SESSION['msg'] = 'record failed to update';
		header("location: create.php");
	}
 
}


if (isset($_POST['update'])) {
		$id = $_POST['id'];
		$name = $_POST["name"];
		$gender = $_POST["gender"];
		$class = strtolower($_POST["class"]);
		$subject = $_POST["subject"];
		$ore = $_POST["ore"];
		$ca = $_POST["ca"];
		$note = $_POST["note"];
		$project = $_POST["project"];
		$assignment = $_POST["assign"];
		$midterm = $_POST["mid-term"];
		$attend = $_POST["attend"];
		$exam = $_POST["exam"];
		$total = add($ore,$ca,$note,$project,$assignment,$midterm,$attend,$exam);
		
		

		

		$update = mysqli_query($conn, "UPDATE scores SET Name='$name', Gender='$gender', Student_Class = '$class', Subject = '$subject', ORE ='$ore', Assignment='$assignment', C_A ='$ca', Note ='$note', Project='$project', MidtermTest='$midterm', Attendance ='$attend', Exam ='$exam', Total='$total' WHERE StudentsId='$id'") or die(mysqli_error($conn));
		if($update){
		$_SESSION['msg'] = "Record updated!"; 
		header("location: index.php");
	} else{
	 $_SESSION['msg'] = "Failed to Update";
	 header('location: edit.php');

	}
}

if (isset($_GET['delete'])) {
	$id = $_GET['delete'];
	$delete = mysqli_query($conn, "DELETE FROM scores WHERE StudentsId='$id'") or die(mysqli_error($conn));
	
	if($delete){
	$_SESSION['msg'] = "Record deleted!"; 
	header('location: index.php');
	}else {
	$_SESSION['msg'] = "Service failed to be deleted!"; 
	}
}

if(isset($_POST['upload'])){
	$id = $_POST['id'];

	$target_dir = "uploads/";
	$target_file = $target_dir . basename($_FILES["image"]["name"]);
	$uploadOk = 1;
	$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
// Check if image file is an actual image or fake image

    // $check = getimagesize($_FILES["image"]["tmp_name"]);
    // if($check !== false) {
    //     // echo "File is an image - " . $check["mime"] . ".";
    //     $uploadOk = 1;
    // } else {
    //      echo "File is not an image.";
    //     $uploadOk = 0;
    // }

	// Check if file already exists
	if (file_exists($target_file)) {
	    echo "<h1><b>Sorry, file already exists.</b><h1><br>";
	    $uploadOk = 0;
	}
	// Check file size
	if ($_FILES["image"]["size"] > 500000) {
	    echo "Sorry, your file is too large.";
	    $uploadOk = 0;
	}
	// Allow certain file formats
	if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
	&& $imageFileType != "gif" ) {
	    echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
	    $uploadOk = 0;
	}
	//Check if $uploadOk is set to 0 by an error
	if ($uploadOk == 0) {
	    echo "<h1><b>Sorry, your file was not uploaded.</b><h1><br>";
	// if everything is ok, try to upload file
	} else {
	    if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
	        echo "The file ". basename( $_FILES["image"]["name"]). " has been uploaded.";
	    } else {
	        echo "Sorry, there was an error uploading your file.<br>";
	    }
	}
	
	if($uploadOk == 1){
	$upload = mysqli_query($conn, "UPDATE scores set Avatar='$target_file' WHERE StudentsId='$id'") or die(mysqli_error($conn));
	if($upload==true){
		$status = mysqli_query($conn, "UPDATE scores set Status='1' WHERE StudentsId='$id'") or die("Could not update Status". mysqli_error($conn));
		if($status){
			$_SESSION['msg'] = 'Image Uploaded Successful';
		}else $_SESSION['msg'] = 'Image not Uploaded';
	}else $_SESSION['msg'] = 'Oops! Something Went Wrong';	
	}else echo "Not successful";
}

function add(...$numbers){
	$ans = 0;
	foreach($numbers as $n){
		$ans += $n;
	}
	return $ans; 
}


function checkGrade($number)
{
	if($number <=39){
		$value = 'F';
	}elseif ($number <=45) {
		$value = 'E'; 
	}elseif ($number <=49) {
		$value = 'D'; 
	}elseif ($number <=59) {
		$value = 'C'; 
	}elseif ($number <=79) {
		$value = 'B'; 
	}elseif ($number <=100) {
		$value = 'A'; 
	}
	return $value;
}
	if(isset($_GET['q'])){
	$info = htmlentities($_REQUEST["q"]);
		$sql="SELECT * FROM scores WHERE Name like '%$info%'";
		$result = mysqli_query($conn,$sql) or die('Could not connect to database'. mysqli_error($conn));

			echo "<table class ='table table-responsive table-stripped px-5'>
			<thead>
			<tr>
			<th>Fullname</th>
			<th>Class</th>
			<th>Photo</th>
			<th>Profile</th>
			
			</tr>
			</thead>
			<tbody>";
			while($row = mysqli_fetch_assoc($result)) {
				$id = $row['StudentsId'];
				$photo = $row["Avatar"];
			    echo "<tr>";
			    echo "<td>" . $row['Name'] . "</td>";
			    echo "<td>" . $row['Student_Class'] . "</td>";
			    if($row['Status']==1):
			    echo "<td><img class='img-fluid rounded' style='width:100px; height: 100px' src='$photo'></td>";
			    elseif($row['Gender']=='Female'):
			    	echo "<td><img class='img-fluid rounded' style='width:100px; height: 100px' src='img/avatar6.png'></td>";
			    else:
			    	echo "<td><img class='img-fluid rounded' style='width:100px; height: 100px' src='img/avatar2.png'></td>";
			    endif;
			    echo "<td><a class = 'btn btn-sm btn-info' href='viewprofile.php?id=$id'>View Profile</a></td>";
			   
			    echo "</tr>";
			}
			echo "
			</tbody>
			</table>";
			die();
}