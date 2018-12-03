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

	<script>
		function showUser(str) {
		    if (str.length == 0) {
		        document.getElementById("hint").innerHTML = "";
		        return;
		    } else { 
		        if (window.XMLHttpRequest) {
		          
		           var xmlhttp = new XMLHttpRequest();
		        } 
		        xmlhttp.onreadystatechange = function() {
		            if (this.readyState == 4 && this.status == 200) {
		                document.getElementById("hint").innerHTML = this.responseText;
		            }
		        };

		        xmlhttp.open("GET","control.php?q=" + str, true);
		        xmlhttp.send();
		    }
		}
</script>
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
					<h1 class="display-4 wow rollIn">***Search For Students***</h1>
				</div>
				<div class="container mt-5" style="max-width: 600px">
				<div class="input-group mb-3">
					<input type="text" class="form-control text-center" placeholder="Enter Student's Name" onkeyup="showUser(this.value)">
					<div class="input-group-append">
						<button type="button"  class="btn btn-info">Search<span class="fa fa-search fa-pull-right fa-lg"></span></button>
					</div>
				</div>
			</div>
			</div>
		</div>
		<hr>
		<div class="row">
		<div class="col-sm-12 col-md-2">
			<?php include 'sidenav.php'?>
		</div>
		<div class="col-sm-12 col-md-8  d-flex justify-content-center">
			<div id="hint"></div>
		
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