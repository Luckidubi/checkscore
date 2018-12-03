<?php 
include 'control.php';

if(isset($_GET['record'])){
	$id = $_GET['record'];
	$record = mysqli_query($conn, "SELECT * FROM scores WHERE StudentsId='$id'") or die(mysqli_error($conn));
	if(mysqli_num_rows($record)==1){
		$row = mysqli_fetch_assoc($record);

		$name= $row['Name'];
		$gender = $row['Gender'];
		$class =$row['Student_Class'];
		$subject= $row['Subject'];
		$ore = $row['ORE'];
		$assignment = $row['Assignment'];
		$ca = $row['C_A'];
		$note = $row['Note'];
		$project = $row['Project'];
		$midterm = $row['MidtermTest'];
		$attend = $row['Attendance'];
		$exam = $row['Exam'];
		$total = $row['Total'];
		$grade = $row['Grade'];


	}else echo 'No record Found';
}




 ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Student Record</title>
	<link rel="stylesheet"  href="main.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
<header>
	<div class="container">
	<div class="header-top">
		<h1 class="text-center">CSS Ukwulu Student Record</h1>
	</div>

</header>
</div>

<section>
	<div class="container-fluid">
		<div class="row">
		<div class="col-sm-12 col-md-2">
			<?php include 'sidenav.php'?>
		</div>

		<div class="col-sm-12 col-md-10 d-flex justify-content-center ">

		<table class="table table-responsive table-bordered table-striped my-5 text-center table-sm">
			
			<thead>
				<tr>
					
					<th scope="col">Full Name</th>
					<th scope="col">Gender</th>
					<th scope="col">Class</th>
					<th scope="col">Subject</th>
					<th scope="col">ORE Scores</th>
					<th scope="col">Assignment</th>
					<th scope="col">Continous Assessment</th>
					<th scope="col">Note</th>
					<th scope="col">Project</th>
					<th scope="col">Midterm Test</th>
					<th scope="col">Attendance</th>
					<th scope="col">Exam Score</th>
					<th scope="col">Total</th>
					<th scope="col">Grade</th>
					<th scope="col" colspan="2">Action</th>
				</tr>
			</thead>
			<tbody>
				
				<tr>
					
					<td><?php echo $name?></td>
					<td><?php echo $gender?></td>
					<td><?php echo $class?></td>
					<td><?php echo $subject?></td>
					<td><?php echo $ore?></td>
					<td><?php echo $assignment ?></td>
					<td><?php echo $ca?></td>
					<td><?php echo $note?></td>
					<td><?php echo $project?></td>
					<td><?php echo $midterm?></td>
					<td><?php echo $attend?></td>
					<td><?php echo $exam?></td>
					<td><?php echo $total?></td>
					<td><?php echo $grade?></td>
					<td><a href="edit.php?edit=<?php echo $row['StudentsId']; ?>" class="btn btn-sm btn-secondary" >Edit</a></td>
					<!-- <td><a href="control.php?delete=<?php echo $row['StudentsId']; ?>" class="btn btn-sm btn-danger" >delete</a></td> -->
				</tr>
			
			</tbody>

		</table>

	</div>
	
	</div>
		<div class="text-center">
				<a class = 'btn btn-secondary' href='viewprofile.php?id=<?php echo $id?>'>Go back</a>
			</div>
</div>

</section>

<!-- <footer class="footer1">
	

</footer> -->

<script src="jquery/jquery.min.js"></script>
 <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../assets/js/vendor/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>

<script>
$(".nav-pills .nav-link").on("click", function(){
    $(".nav-pills .nav-link").removeClass("active");
    $(this).addClass("active");
  });</script>
</body>
</html>