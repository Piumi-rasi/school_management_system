<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Welcome to <?=$setting['school_name']?></title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="icon" href="logo.png">
</head>
<body class="body-home">
    <div class="black-fill"><br /> <br />
    	<div class="container">
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
		          <a class="nav-link" href="about-us.php">About</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="contact-us.php">Contact</a>
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

       


        <section id="contact"
                 class="d-flex justify-content-center align-items-center flex-column">
        	<form method="post"
    	          action="req/contact.php">
        		<h3>Contact Us</h3>
        		<?php if (isset($_GET['error'])) { ?>
	    		<div class="alert alert-danger" role="alert">
				  <?=$_GET['error']?>
				</div>
				<?php } ?>
				<?php if (isset($_GET['success'])) { ?>
		          <div class="alert alert-success" role="alert">
		           <?=$_GET['success']?>
		          </div>
		        <?php } ?>
			  <div class="mb-3">
			    <label for="exampleInputEmail1" class="form-label">Email address</label>
			    <input type="email" class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp">
			    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
			  </div>
			  <div class="mb-3">
			    <label class="form-label">Full Name</label>
			    <input type="text" name="full_name" class="form-control">
			  </div>
			  <div class="mb-3">
			    <label class="form-label">Message</label>
			    <textarea class="form-control"name="message" rows="4"></textarea>
			  </div>
			  <button type="submit" class="btn btn-primary">Send</button>
			</form>
        </section>
    	</div>

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
				<a href="index.php" class=" active text-warning">PRIVACY POLICY</a>
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

			<p class="text-center m-3">© 2024. All rights reserved.</p>

			</div>  
		<!-- footer end-->

    </div>

				

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>	
</body>
</html>