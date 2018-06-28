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
<%@page import="java.io.*, java.util.Date, java.util.Enumeration" %>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="wrapper">
<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Vehicle Rental System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <% 	HttpSession sess = request.getSession();
		String username = (String)sess.getAttribute("username");
		String type = (String)sess.getAttribute("type"); 
		String brand = (String)sess.getAttribute("brand"); 
		String model = (String)sess.getAttribute("model"); 
		String color = (String)sess.getAttribute("color"); 
		String no_of_seats = (String)sess.getAttribute("no_of_seats"); 
		String insuarance_coverage = (String)sess.getAttribute("insuarance_coverage"); 
		String rate = (String)sess.getAttribute("rate"); 
	%>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav w-100">
      <li class="nav-item dropdown ml-auto">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Welcome <%=username%>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="CustomerProfileController/name=?<%=username%>">Profile</a>
		  <a class="dropdown-item" href="LogoutController">Logout</a>
        </div>
      </li>
    </ul>  
  </div>
</nav>

<% String date = new Date().toString(); %>
	<div class="container mt-5"><br>
			<form role="form" method="post" action="BookServlet" data-toggle="validator" id="updateForm">
		    	<div class="form-group row">
				    <label for="name" class="col-sm-2 col-form-label">From</label>
				    <div class="col-sm-10">
				      <input type="date" name="from_date" placeholder="From Date" required>
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="email" class="col-sm-2 col-form-label">To</label>
				    <div class="col-sm-10">
				      <input type="date" name="to_date" placeholder="To Date" required>
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="email" class="col-sm-2 col-form-label">Name</label>
				    <div class="col-sm-10">
				      <input type="text" name="name" placeholder="Name" required>
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="email" class="col-sm-2 col-form-label">Contact Number</label>
				    <div class="col-sm-10">
				      <input type="text" name="contact_number" placeholder="Contact Number" maxlength="10" required>
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="email" class="col-sm-2 col-form-label">Type</label>
				    <div class="col-sm-10">
				      <input type="text" name="type" value="<%=type%>" placeholder="Type" required>
				    </div>
				  </div>
				   <div class="form-group row">
				    <label for="birthdate" class="col-sm-2 col-form-label">Brand</label>
				    <div class="col-sm-10">
				      <input type="text" name="brand" value="<%=brand%>" placeholder="Brand" required>
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="telephone" class="col-sm-2 col-form-label">Model</label>
				    <div class="col-sm-10">
				      <input type="text" name="model" value="<%=model%>" placeholder="Model" required>
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="username" class="col-sm-2 col-form-label">Color</label>
				    <div class="col-sm-10">
				      <input type="text" name="color" value="<%=color%>" placeholder="Color" required>
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="username" class="col-sm-2 col-form-label">Number of Seats</label>
				    <div class="col-sm-10">
				      <input type="text" name="no_of_seats" value="<%=no_of_seats%>" placeholder="Number of Seats" required>
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="username" class="col-sm-2 col-form-label">Insurance Coverage</label>
				    <div class="col-sm-10">
				      <input type="text" name="insurance_coverage" value="<%=insuarance_coverage%>" placeholder="Color" required>
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="username" class="col-sm-2 col-form-label">Rate (per hour)</label>
				    <div class="col-sm-10">
				      <input type="text" name="rate" value="<%=rate%>" placeholder="Rate (per hour)" required>
				    </div>
				  </div>
				  <input hidden name="date_today" value="<%=date%>">
		        <button type="submit" class="btn btn-primary btn-block btn-large">Book Now</button>
		    </form><br>
	</div>
	
</div>

</body>
</html>