<?php include 'control.php' ?>

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

		<table class="table table-striped table-bordered table-responsive my-5 text-center table-sm">
			<?php $result = mysqli_query($conn, "SELECT * FROM scores where Student_Class = 'jss2 b' ORDER BY Name ASC") or die(mysqli_error($conn));?>
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
				<?php while ($row = mysqli_fetch_assoc($result)) {?>
				<tr>
					
					<td><?php echo $row['Name']?></td>
					<td><?php echo $row['Gender']?></td>
					<td><?php echo $row['Student_Class']?></td>
					<td><?php echo $row['Subject']?></td>
					<td><?php echo $row['ORE']?></td>
					<td><?php echo $row['Assignment']?></td>
					<td><?php echo $row['C_A']?></td>
					<td><?php echo $row['Note']?></td>
					<td><?php echo $row['Project']?></td>
					<td><?php echo $row['MidtermTest']?></td>
					<td><?php echo $row['Attendance']?></td>
					<td><?php echo $row['Exam']?></td>
					<td><?php echo $row['Total']?></td>
					<td><?php echo $row['Grade']?></td>
					<td><a href="edit.php?edit=<?php echo $row['StudentsId']; ?>" class="btn btn-sm btn-secondary" >Edit</a></td>
					<!-- <td><a href="control.php?delete=<?php echo $row['StudentsId']; ?>" class="btn btn-sm btn-danger" >delete</a></td> -->
				</tr>
				<?php }?>
			</tbody>

		</table>
	</div>
	
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