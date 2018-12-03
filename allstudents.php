<?php
include 'control.php';

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Css Result Checker</title>
	<link rel="stylesheet"  href="main.css">
	<link href="css/all.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link href="css/animate.min.css" rel="stylesheet">

	

</head>
<body>
<header>
	<div class="container-fluid">
	<div class="header-top">
		<h1 class="text-center">CSS Ukwulu Result Checker</h1>
	</div>
	</div>
</header>


<section>
	<?php if(isset($_SESSION['msg'])):?>
             <div class="alert alert-success alert-dismissible fade show">
              <?php echo $_SESSION['msg'];
              unset($_SESSION['msg']);
              ?>
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button> </div> 
          <?php endif;?>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 mb-0">
				<div class="text-center mb-0 py-0 mt-3">
					<h1 class="display-4 wow rollIn">***All Students***</h1>
				</div>
				
			</div>
		</div>
		<div class="row">
		<div class="col-sm-12 col-md-2">
			<?php include 'sidenav.php'?>
		</div>
		<div class="col-sm-12 col-md-8  d-flex justify-content-center">
			<div id="hint"></div>
		<table class="table table-stripped px-5 table-responsive my-5 wow pulse">
			<thead>
				<tr>
					
					<th scope="col">Full Name</th>
					<th scope="col">Class</th>
					<th scope="col">Photo</th>
					<th scope="col">Profile</th>
				</tr>
			</thead>
			<tbody>
				<?php
             $sql = "SELECT * FROM scores ORDER BY  Name ASC ";
             $result = mysqli_query($conn, $sql);
             if(mysqli_num_rows($result) >=1){
                while($row = mysqli_fetch_assoc($result)){
                  $fullname = $row['Name'];
                  $gender = $row['Gender'];
                  $class = $row['Student_Class'];
                  $id = $row['StudentsId'];
                  $photo = $row["Avatar"];
                  ?>
                  <tr>
                  
                  <td class="align-self-end"><?php echo $fullname?></td>
                
                  <td class="mt-5"><?php echo $class?></td>
                  <?php if($row['Status']==1):?>
                   <td><img class="img-fluid rounded" style="width:100px; height: 100px" src="<?php echo $photo?>"></td>
                   <?php elseif($row['Gender']=='Female'):?>
                   	 <td><img class="img-fluid rounded" style="width:100px; height: 100px" src="img/avatar6.png"></td>
                   	 <?php else:?>
                   	 	 <td><img class="img-fluid rounded" style="width:100px; height: 100px" src="img/avatar2.png"></td>
                   	<?php endif;?>
                  <td><a class = 'btn btn-sm btn-info' href='viewprofile.php?id=<?php echo $id?>'>View Profile</a></td>
                
              </tr>
                <?php }}?>
			</tbody>

		</table>
	</div>
	
	</div>
</div>

</section>
<!-- <footer class="footer1 " style="background: black">
	<p>copyright	</p>

</footer> -->

                  
            



<script src="jquery/jquery.min.js"></script>
 <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../assets/js/vendor/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/wow.min.js"></script>
    <script src="../js/all.min.js"></script>
      <script>new WOW().init();</script>

<script>
$(".nav-pills .nav-link").on("click", function(){
    $(".nav-pills .nav-link").removeClass("active");
    $(this).addClass("active");
  });</script>
</body>
</html>