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
         <form method="get" action="CustomerProfileController">
         	<input type="hidden" name="name" value="<%=request.getAttribute("userName") %>" />
         	<button type="submit" class="btn btn-link">Profile</button>
         </form>
		  <a class="dropdown-item" href="LogoutController">Logout</a>
        </div>
      </li>
    </ul>  
  </div>
</nav>
<c:set var="username" value='<%=request.getAttribute("userName") %>' scope="session"  />
	<div class="container mt-5"><br>
	
	<div class="row">
		<c:forEach items="${vehicles}" var="vehicle">
			<div class="col-sm-4">
				<div class="card" style="width: 18rem;">
			  <img class="card-img-top" src="images/placeholder-car.png" alt="Card image cap">
			  <div class="card-body text-center">
			    <h5 class="card-title">Book Now</h5>
			    <p class="card-text">Book a vehicle</p>
			  </div>
			  <ul class="list-group list-group-flush">
			    <li class="list-group-item"><strong>Type : </strong>${vehicle.type}</li>
			    <li class="list-group-item"><strong>Brand : </strong>${vehicle.brand}</li>
			    <li class="list-group-item"><strong>Model : </strong>${vehicle.model}</li>
			    <li class="list-group-item"><strong>Year : </strong>${vehicle.year}</li>
			    <li class="list-group-item"><strong>Color : </strong>${vehicle.color}</li>
			    <li class="list-group-item"><strong>No. Seats : </strong>${vehicle.no_of_seats}</li>
			    <li class="list-group-item"><strong>Mileage : </strong>${vehicle.mileage}</li>
			    <li class="list-group-item"><strong>Insurance Coverage : </strong>${vehicle.insuarance_coverage}</li>
			    <li class="list-group-item"><strong>Rate&nbsp;(per day) : </strong>${vehicle.rate}</li>
			   	<c:set var="type" value="${vehicle.type}" scope="session"  />
			   	<c:set var="brand" value="${vehicle.brand}" scope="session"  />
			   	<c:set var="model" value="${vehicle.model}" scope="session"  />
			   	<c:set var="color" value="${vehicle.color}" scope="session"  />
			   	<c:set var="no_of_seats" value="${vehicle.no_of_seats}" scope="session"  />
			   	<c:set var="insuarance_coverage" value="${vehicle.insuarance_coverage}" scope="session"  />
			   	<c:set var="rate" value="${vehicle.rate}" scope="session"  />
			  </ul>
			  <div class="card-body">
			  	<a class="btn btn-primary btn-lg btn-block" href="BookVehicle.jsp" role="button">Book</a>
			  </div>
			</div>
			</div>
		</c:forEach>
	</div>
	
 		
	
	</div>
</div>

</body>
</html>