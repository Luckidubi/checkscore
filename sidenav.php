<style>
.nav-link{
  background: #fff;
}
.nav-link:hover{
  background:linear-gradient(to right, #a25b5b, #692e4c);
}
.nav-pills .nav-link.active{
  background:linear-gradient(to right, #a25b5b, #692e4c);
}

</style>
<ul class="nav nav-pills navbar-sticky  flex-column my-5 " style="border:  1px outset;  box-shadow: 10px 5px #eee;">
  <li class="nav-item">
    <a class="nav-link" href="index.php">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="jss1a.php">Jss1 A</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="jss1b.php">Jss1 B</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="jss2a.php">Jss2 A</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="jss2b.php">Jss2 B</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="jss3a.php">Jss3 A</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="jss3b.php">Jss3 B</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="allstudents.php">All Students</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="create.php">Create Record</a>
  </li>
</ul>
<script>
$(".nav-pills .nav-link").on("click", function(){
    $(".nav-pills .nav-link").removeClass("active");
    $(this).addClass("active");
  });</script>