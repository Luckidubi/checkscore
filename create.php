<?php include 'control.php'?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Css Result Checker</title>
	<link rel="stylesheet"  href="main.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<style>
.error{
	color: red;
}

</style>
<body>
<header>
	<div class="container">
	<div class="header-top">
		<h1 class="text-center">CSS Ukwulu Result Checker</h1>
	</div>

</header>
</div>

<section>
	<div class="container">
		<div class="row">
		<div class="col-sm-12 col-md-3">

			<?php include 'sidenav.php'?>
	
		</div>
		<div class="col-sm-12 col-md-6">
		<div class="card text-left my-5">
 		<div class=" card-header text-center">
 			Create Student Record
 		</div>
 		<div class="card-body">
 			<?php if(isset($_SESSION['msg'])):?>
             <div class="alert alert-success alert-dismissible fade show">
              <?php echo $_SESSION['msg'];
               unset($_SESSION['msg']);
            ?>
        </div>
      <?php endif;?>
 		<form method="post" action="control.php" enctype="multipart/form-data">
 			<div class="form-group">
 			<label><b>Name:</b> </label>
 			<input type="text" name="name" class="form-control" placeholder="Students Name" required="required "><br>

 			<label><b>Gender:</b> </label>
 			<select class="form-control" name="gender" required="required">
 				<option value="Male">Male</option>
 				<option value="Female">Female</option>
 			  </select><br>

 			<label><b>Select Class:</b> </label>
 			<select class="form-control" name="class">
			  <option value="Jss1 A">Jss1 A</option>
			  <option value="Jss1 B">Jss1 B</option>
			  <option value="Jss2 A">Jss2 A</option>
			  <option value="Jss2 B">Jss2 B</option>
			  <option value="Jss3 A">Jss3 A</option>
			  <option value="Jss3 B">Jss3 B</option>
			</select><br>

			<label><b>Select Subject:</b> </label>
 			<select class="form-control" name="subject">
			  <option value="Computer Science">Computer Science</option>
			  <option value="Data Processing">Data Processing</option>
			  <option value="Mathematics">Mathematics</option>
			  <option value="English">English</option>
			  <option value="Agric Science">Agric Science</option>
			  
			</select><br>


 			<label><b>ORE Scores:</b></label>
 			<input type="text" name="ore" class="form-control" placeholder="ORE score"><br>

 			<label><b>Assignment Scores:</b></label>
 			<input type="text" name="assign" class="form-control" placeholder="Assignment score"><br>

 			<label><b>Continous Assessment:</b></label>
 			<input type="text" name="ca" class="form-control" placeholder="Continous Assessment Score"><br>
 			
 			<label><b>Note:</b></label>
 			<input type="text" name="note" class="form-control" placeholder="Note"><br>

 			<label><b>Project:</b></label>
 			<input type="text" name="project" class="form-control" placeholder="Project Score"><br>
 			
 			<label><b>Mid-Term Test:</b></label>
 			<input type="text" name="mid-term" class="form-control" placeholder="Mid-Term score"><br>

 			<label><b>Attendance:</b></label>
 			<input type="text" name="attend" class="form-control" placeholder="Attendance score"><br>


 			<label><b>Exam:</b></label>
 			<input type="text" name="exam" class="form-control" placeholder="Exam score"><br>


 			<!-- <label><b>Grade:</b></label>
 			<input type="text" name="grade" class="form-control" placeholder="Grade" required="required"><br> -->


 			<label><b>Photo:</b> </label>
 			<input type="file" name="image"><br>
 			<div class="text-center">
			<input type="submit" class ="btn btn-success center" name="save" value="Create Record">
		</div>

			</div>
 			
 		</form>
 		</div>
 	</div>
	</div>
	<div class="col-sm-12 col-md-3">
		</div>
	</div>
</div>

</section>

<footer class="footer">
	

</footer>

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