<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login - Emerald Valley International School</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="icon" href="logo.png">
</head>
<body class="body-login">
    <div class="black-fill"><br /> <br />

		<!-- nav bar -->
    	<nav class="navbar navbar-expand-lg bg-light"
    	     id="homeNav">
		  <div class="container-fluid">
		    <a class="navbar-brand" href="index.php">
		    	<img src="logo.png" width="70px">
		    </a>
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="collapse navbar-collapse" id="navbarSupportedContent">
		      <ul class="navbar-nav me-auto mb-2 mb-lg-0" style="font-weight: bold; font-size:20px;">
		        <li class="nav-item">
		          <a class="nav-link active" aria-current="page" href="index.php">Home</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="#about">About</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="#contact">Contact</a>
		        </li>
		      </ul>
		      <ul class="navbar-nav me-right mb-2 mb-lg-0">
		      	<li class="nav-item">
		          <li class="nav-item"><button class="btn btn-warning"><a href="login.php" style="color:white;">LOGIN</a></button></li>
		        </li>
		      </ul>
		  </div>
		    </div>
		</nav>
		<!-- nav bar end-->

    	<div class="d-flex justify-content-center align-items-center flex-column mt-5">
    	<form class="login" 
    	      method="post"
    	      action="req/login.php">

    		<div class="text-center">
    			<img src="logo.png"
    			     width="100">
    		</div>
    		<h3>LOGIN</h3>
    		<?php if (isset($_GET['error'])) { ?>
    		<div class="alert alert-danger" role="alert">
			  <?=$_GET['error']?>
			</div>
			<?php } ?>
			
			<div class="mb-3">
		    <label class="form-label">Login As</label>
		    <select class="form-control"
		            name="role">
		    	<option value="1">Admin</option>
		    	<option value="2">Teacher</option>
		    	<option value="3">Student</option>
		    	
		    </select>
		  </div>

		  <div class="mb-3">
		    <label class="form-label">Username</label>
		    <input type="text" 
		           class="form-control"
		           name="uname">
		  </div>
		  
		  <div class="mb-3">
		    <label class="form-label">Password</label>
		    <input type="password" 
		           class="form-control"
		           name="pass">
		  </div>

		  

		  <button type="submit" class="btn btn-primary">Login</button>
		  <button class="btn btn-primary bg-warning text-dark"><a href="index.php" class="text-decoration-none">Home</a></button>
		</form>
        
        <br /><br />
        <!-- footer -->
		<div class="container-fluid bg-dark text-white py-2 mt-5 mb-0 footer">

			<table class="w-100 text-center">
			<tr>
				<td>  
				<img src="logo.png" alt="" style="height: 120px;"><br>
				</td>
				<td class="h5">
				<a href="contact-us.php" class=" active text-warning">CONTACT US</a> |
				<a href="about-us.php" class=" active text-warning">ABOUT US</a> |
				<a href="" class=" active text-warning">PRIVACY POLICY</a>
				</td>
				<td class="fafaicon">
				FOLLOW US <br>
				<a href="#" class="fa fa-facebook"></a>
				<a href="#" class="fa fa-twitter"></a>
				<a href="#" class="fa fa-instagram"></a>
				</td>
			</tr>
			</table>
			<hr>

			<p class="text-center m-3">© 2024. All rights reserved. KH Saltside Technologies</p>

			</div>  
			<!-- footer end-->

    	</div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>	
</body>
</html>