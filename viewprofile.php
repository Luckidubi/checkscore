<?php 
include 'control.php';

	if (isset($_GET['id'])){
			$id = $_GET['id'];
			$record = mysqli_query($conn, "SELECT * FROM scores WHERE StudentsId='$id'");
			$record2 = mysqli_num_rows($record);
			
			if ($record2 == 1 ) {
				$row = mysqli_fetch_assoc($record);
				$name = $row["Name"];
				$gender = $row["Gender"];
				$class = $row["Student_Class"];
				$photo = $row["Avatar"];
			}
		}

?>
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
 			<h5 class="float-left" style="font-family: Railway"><?php echo $name?>'s Profile</h5> <a class = 'btn btn-sm btn-info float-right' href='viewrecord.php?record=<?php echo $id?>'>View Student's Record</a>
 		</div>
 		<div class="card-body">
	 			<?php if(isset($_SESSION['msg'])):?>
	             <div class="alert alert-success alert-dismissible fade show">
	              <?php echo $_SESSION['msg'];
	               unset($_SESSION['msg']);
	            ?>
	        </div>
	      <?php endif;?>
	 		<div class="media">
	 			<?php if($row['Status']==1):?>
	                    <img class="align-self-center mr-3 img-fluid rounded" style="width:150px; height: 150px" src="<?php echo $photo?>">
	                   <?php elseif($row['Gender']=='Female'):?>
	                   	 <img class="align-self-center mr-3 img-fluid rounded" style="width:100px; height: 100px" src="img/avatar6.png">
	                   	 <?php else:?>
	                   	 	 <img class="align-self-center mr-3 img-fluid rounded" style="width:100px; height: 100px" src="img/avatar2.png">
	                   	<?php endif;?>
  
			  	<div class="media-body">
				    <h4 class="mt-0"><b>Name:</b>&nbsp;&nbsp;  <?php echo $name?> </h4>
				    <h5 class="mt-0"><b>Class:</b>&nbsp;&nbsp;  <?php echo $class?></h5>
				    <h5 class="mt-0"><b>Gender:</b>&nbsp;&nbsp;  <?php echo $gender?></h5>
				    <p></p>
				  </div>
			</div>
 	</div>
 	<div class="card-footer">
 		
 		<form action="control.php" method="post" enctype="multipart/form-data">
	                  			<input type="hidden" name="id" value="<?php echo $row['StudentsId']?>">
	                  			<div class="input-group">
	                  				<div class="custom-file">
			                  			<input type="file" class="custom-file-input" name="image">
			                  			<label class="custom-file-label">Choose file</label>
  									</div>
  									<div class="input-group-append">
								<input type="submit" class ="btn btn-success btn-sm ml-0" name="upload" value="Upload Photo">
							</div>
						</div>
							
	                  	</form>	
	                  	
	                  </div>
	</div>
	
	<div class="text-center">
		<a class="btn btn-secondary" href="index.php">Go back</a>
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