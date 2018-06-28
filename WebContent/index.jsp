<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 5 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vehicle Rental System</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
<link rel="stylesheet" href="css/mystyles.css">

<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

</head>
<body>

<div class="wrapper">
	<div class="container">
		<div class="row justify-content-center align-items-center">
			<div class="col-sm-12 mt-3 text-center main-title">
				<h1><i class="fas fa-taxi"></i>&nbsp;Vehicle Rental System</h1>
			</div>
			
			<div class="col-sm-8 mt-5">
				<div class="login" id="loginBox">
					<h1>Login</h1><br>
				    <form action="LoginController" method="post" id="regForm">
				    	 <div class="form-group row">
						    <label for="username" class="col-sm-2 col-form-label">Username</label>
						    <div class="col-sm-10">
						      <input type="text" name="username" placeholder="Username" required>
						    </div>
						  </div>
						  <div class="form-group row">
						    <label for="password" class="col-sm-2 col-form-label">Password</label>
						    <div class="col-sm-10">
						      <input type="password" name="password" id="inputloginPassword" placeholder="Password" required>
						    </div>
						  </div>
				        <button type="submit" class="btn btn-primary btn-block btn-large">Let me in.</button>
				    </form><br>
				    <button type="button" id="registerLink" class="btn btn-link">Don't have an account yet ? REGISTER</button>
				   
				</div>
				<div class="register hidebox" id="registerBox">
					<h1>Register</h1><br>
				    <form role="form" action="CustomerController" data-toggle="validator" method="post" id="registerForm">
				    	<div class="form-group row">
						    <label for="name" class="col-sm-2 col-form-label">Name</label>
						    <div class="col-sm-10">
						      <input type="text" name="name" placeholder="Name" required>
						    </div>
						  </div>
						  <div class="form-group row">
						    <label for="email" class="col-sm-2 col-form-label">Email</label>
						    <div class="col-sm-10">
						      <input type="email" name="email" placeholder="Email" required>
						    </div>
						  </div>
						  <div class="form-group row">
						    <label for="email" class="col-sm-2 col-form-label">Address</label>
						    <div class="col-sm-10">
						      <input type="text" name="address" placeholder="Address" required>
						    </div>
						  </div>
						  <div class="form-group row">
						    <label for="sex" class="col-sm-2 col-form-label">Sex</label>
						    <div class="col-sm-10">
						      <div class="custom-control custom-radio custom-control-inline">
								  <input name="sex" type="radio" value="male" id="customRadioInline1" class="custom-control-input">
								  <label class="custom-control-label" for="customRadioInline1">Male</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
								  <input name="sex" type="radio" value="female" id="customRadioInline2" class="custom-control-input">
								  <label class="custom-control-label" for="customRadioInline2">Female</label>
							  </div>
						    </div>
						  </div>
						   <div class="form-group row">
						    <label for="birthdate" class="col-sm-2 col-form-label">Birthdate</label>
						    <div class="col-sm-10">
						      <input type="date" name="bday" placeholder="Birthdate" required>
						    </div>
						  </div>
						  <div class="form-group row">
						    <label for="telephone" class="col-sm-2 col-form-label">Telephone</label>
						    <div class="col-sm-10">
						      <input type="text" name="tele" placeholder="Telephone" maxlength="10" required>
						    </div>
						  </div>
						  <div class="form-group row">
						    <label for="username" class="col-sm-2 col-form-label">Username</label>
						    <div class="col-sm-10">
						      <input type="text" name="username" placeholder="Username" required>
						    </div>
						  </div>
						  <div class="form-group row">
						    <label for="passowrd" class="col-sm-2 col-form-label">Password</label>
						    <div class="col-sm-10">
						      <input type="password" name="password" id="password" placeholder="Password" minlength="6" required>
						    </div>
						  </div>
						  <div class="form-group row">
						    <label for="confirm_password" class="col-sm-2 col-form-label">Confirm Password</label>
						    <div class="col-sm-10">
						      <input type="password" name="cpassword" id="cpassword" placeholder="Confirm Password" oninput="check(this)" required>
						      <div class="invalid-feedback hidebox" id="">
							      Password & Confirm Passowrd fields doesn't match !
							    </div>
						    </div>
						  </div>
				        <button type="submit" class="btn btn-primary btn-block btn-large">Sign me up.</button>
				    </form><br>
				    <button type="button" id="loginLink" class="btn btn-link">Already have an account ? LOGIN</button>
				   
				</div>
			</div>
		</div>
		
	</div>
</div>



<script type="text/javascript">
$('#registerForm').validator();
</script>
<script type="text/javascript">
$(document).ready(function() {
    $("#registerLink").click(function() {
        $("#loginBox").addClass("hidebox");
        $("#registerBox").removeClass("hidebox");
    });
    $("#loginLink").click(function() {
        $("#registerBox").addClass("hidebox");
        $("#loginBox").removeClass("hidebox");
    });
});
</script>


<script language='javascript' type='text/javascript'>
$(document).ready(function() {
	var password = document.getElementById("password")
	  , confirm_password = document.getElementById("cpassword");

	function validatePassword(){
	  if(password.value != confirm_password.value) {
	    confirm_password.setCustomValidity("Passwords Don't Match");
	  } else {
	    confirm_password.setCustomValidity('');
	  }
	}

	password.onchange = validatePassword;
	confirm_password.onkeyup = validatePassword;
});
</script>

</body>
</html>