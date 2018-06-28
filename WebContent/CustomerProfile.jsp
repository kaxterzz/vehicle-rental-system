<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 5 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vehicle Rental System | Home</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
<link rel="stylesheet" href="css/mystyles.css">

<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="wrapper">
<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Vehicle Rental System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav w-100">
      <li class="nav-item dropdown ml-auto">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Welcome <%=request.getAttribute("userName") %>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="CustomerProfileController/name=?<%=request.getAttribute("userName") %>">Profile</a>
		  <a class="dropdown-item" href="LogoutController">Logout</a>
        </div>
      </li>
    </ul>  
  </div>
</nav>

	
	
	

	<div class="container mt-5"><br>
		<c:forEach items="${customers}" var="customer">
			<c:set var="sex" value="${customer.sex}"/>
			<form role="form" action="UpdateProfileServlet" data-toggle="validator" method="post" id="updateForm">
				<input hidden name="id" value="${customer.id}" />
		    	<div class="form-group row">
				    <label for="name" class="col-sm-2 col-form-label">Name</label>
				    <div class="col-sm-10">
				      <input type="text" name="name" value="${customer.name}" placeholder="Name" required>
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="email" class="col-sm-2 col-form-label">Email</label>
				    <div class="col-sm-10">
				      <input type="email" name="email" value="${customer.email}" placeholder="Email" required>
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="email" class="col-sm-2 col-form-label">Address</label>
				    <div class="col-sm-10">
				      <input type="text" name="address" value="${customer.address}" placeholder="Address" required>
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="sex" class="col-sm-2 col-form-label">Sex</label>
				    <div class="col-sm-10">
				      <div class="custom-control custom-radio custom-control-inline">
						  <input name="sex" type="radio" value="male" <c:if test="${sex=='male'}">checked</c:if> id="customRadioInline1" class="custom-control-input">
						  <label class="custom-control-label" for="customRadioInline1">Male</label>
						</div>
						<div class="custom-control custom-radio custom-control-inline">
						  <input name="sex" type="radio" value="female" <c:if test="${sex=='female'}">checked</c:if> id="customRadioInline2" class="custom-control-input">
						  <label class="custom-control-label" for="customRadioInline2">Female</label>
					  </div>
				    </div>
				  </div>
				   <div class="form-group row">
				    <label for="birthdate" class="col-sm-2 col-form-label">Birthdate</label>
				    <div class="col-sm-10">
				      <input type="date" name="bday" value="${customer.bday}" placeholder="Birthdate" required>
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="telephone" class="col-sm-2 col-form-label">Telephone</label>
				    <div class="col-sm-10">
				      <input type="text" name="tele" value="${customer.telephone}" placeholder="Telephone" required>
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="username" class="col-sm-2 col-form-label">Username</label>
				    <div class="col-sm-10">
				      <input type="text" name="username" value="${customer.username}" placeholder="Username" required>
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="passowrd" class="col-sm-2 col-form-label">Password</label>
				    <div class="col-sm-10">
				      <input type="password" name="password" value="${customer.password}" id="inputPassword" placeholder="Password" data-minlength="6" required>
				      <div class="invalid-feedback">
				        Please provide a password.
				      </div>
				    </div>
				  </div>
		        <button type="submit" class="btn btn-primary btn-block btn-large">Update profile.</button>
		    </form><br>
	    </c:forEach>
	</div>
	
</div>

</body>
</html>