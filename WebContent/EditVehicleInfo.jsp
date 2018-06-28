<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 5.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VRS | Dashboard</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">

<link rel="stylesheet" href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- inject:css -->
<link rel="stylesheet" href="css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="images/favicon.png" />

<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

</head>
<body>

<div class="container-scroller">
<!-- navbar top -->
<nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <i class="fas fa-taxi"></i>&nbsp;Vehicle Rental System
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-stretch">
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
              <div class="nav-profile-img">
                <img src="images/faces/face1.jpg" alt="image">
                <span class="availability-status online"></span>             
              </div>
              <div class="nav-profile-text">
                <p class="mb-1 text-black"><%= session.getAttribute( "user" ) %></p>
              </div>
            </a>
            <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="LogoutController">
                <i class="mdi mdi-logout mr-2 text-primary"></i>
                Signout
              </a>
            </div>
          </li>
          <li class="nav-item nav-logout d-none d-lg-block">
            <a class="nav-link" href="LogoutController">
              <i class="mdi mdi-power"></i>
            </a>
          </li>
        </ul>
      </div>
    </nav>
<!-- navbar top ends -->

<div class="container-fluid page-body-wrapper">
<!-- left side navbar -->
<nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item nav-profile">
            <a href="#" class="nav-link">
              <div class="nav-profile-image">
                <img src="images/faces/face1.jpg" alt="profile">
                <span class="login-status online"></span> <!--change to offline or busy as needed-->              
              </div>
              <div class="nav-profile-text d-flex flex-column">
                <span class="font-weight-bold mb-2"><%= session.getAttribute( "user" ) %></span>
              </div>
              <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <span class="menu-title">Vehicle Management</span>
              <i class="menu-arrow"></i>
              <i class="mdi mdi-car menu-icon"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="AddVehicle.jsp">Add New Vehicle</a></li>
                <li class="nav-item"> <a class="nav-link" href="DisplayVehiclesController">View Vehicles</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
          <form>
          
          </form>
            <a class="nav-link" href="AdminProfileServlet?name=<%= session.getAttribute( "user" ) %>">
              <span class="menu-title">Profile</span>
              <i class="mdi mdi-account-settings-variant menu-icon"></i>
            </a>
          </li>
        </ul>
      </nav>
	 <!-- left side navbar ends -->
	
	<div class="main-panel">
        <div class="content-wrapper">
          <div class="page-header">
            <h3 class="page-title">
              <span class="page-title-icon bg-gradient-primary text-white mr-2">
                <i class="mdi mdi-home"></i>                 
              </span>
              Dashboard
            </h3>
            <nav aria-label="breadcrumb">
              <ul class="breadcrumb">
                <li class="breadcrumb-item active" aria-current="page">
                  <span></span>Edit Vehicle Information
                  <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                </li>
              </ul>
            </nav>
          </div>
           <div class="row">
            <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Edit Vehicle Info</h4>
                  <p class="card-description">
                    Fill out the form to edit vehicle info
                  </p>
                  <form method="post" action="EditVehicleServlet" class="forms-sample">
                  <!--  <div class="form-group">
                      <label for="exampleInputName1">Type</label>
                      <input type="text" class="form-control" name="type" id="exampleInputName1" placeholder="Type">
                    </div> -->
                   <div class="form-group">
	                    <label for="exampleFormControlSelect2">Type</label>
	                    <input type="text" class="form-control" value="<%= request.getParameter("type") %>" name="type" id="exampleInputEmail3" placeholder="Type" required>
                  </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">Brand</label>
                      <input type="text" class="form-control" value="<%= request.getParameter("brand") %>" name="brand" id="exampleInputEmail3" placeholder="Brand" required>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Model</label>
                      <input type="text" class="form-control" name="model" value="<%= request.getParameter("model") %>" id="exampleInputPassword4" placeholder="Model" required>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Year</label>
                      <input type="text" class="form-control" name="year" value="<%= request.getParameter("year") %>" id="exampleInputPassword4" placeholder="Year" required>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Registration Number</label>
                      <input type="text" class="form-control" name="reg_no" value="<%= request.getParameter("register_no") %>" id="exampleInputPassword4" placeholder="Registration Number" required>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Color</label>
                      <input type="text" class="form-control" name="color" value="<%= request.getParameter("color") %>" id="exampleInputPassword4" placeholder="Color" required>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Number of Seats</label>
                      <input type="text" class="form-control" name="no_of_seats" value="<%= request.getParameter("no_of_seats") %>" id="exampleInputPassword4" placeholder="Number of Seats" required>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Chassis Number</label>
                      <input type="text" class="form-control" name="chassis_no" value="<%= request.getParameter("chassis_no") %>" id="exampleInputPassword4" placeholder="Chassis Number" required>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Engine Number</label>
                      <input type="text" class="form-control" name="engine_no" value="<%= request.getParameter("engine_no") %>" id="exampleInputPassword4" placeholder="Engine Number" required>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Mileage</label>
                      <input type="text" class="form-control" name="mileage" value="<%= request.getParameter("mileage") %>" id="exampleInputPassword4" placeholder="Mileage" required>
                    </div>
                    <div class="form-group">
	                    <label for="exampleFormControlSelect2">Insurance Coverage</label>
	                    <input type="text" class="form-control" value="<%= request.getParameter("insuarance_coverage") %>" name="insuarance_coverage" id="exampleInputEmail3" placeholder="Insurance Coverage" required>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Rate (per day)</label>
                      <input type="text" class="form-control" name="rate" value="<%= request.getParameter("rate") %>" id="exampleInputPassword4" placeholder="Rate (per day)" required>
                    </div>
                    
                    <input hidden name="id" value="<%= request.getParameter("id") %>">
                 <!-- <div class="form-group custom-file">
	                    <input type="file" name="file" class="custom-file-input" id="validatedCustomFile" required>
					    <label class="custom-file-label" for="validatedCustomFile">Upload Photo</label>
					  </div> -->
                    <button type="submit" class="btn btn-gradient-primary mr-2">Submit</button>
                    <button class="btn btn-light">Cancel</button>
                  </form>
                </div>
              </div>
            </div>
        </div>
        <!-- content-wrapper ends -->
	</div>
	<!-- main-panel ends -->
	
	</div>
	<!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->


<!-- plugins:js -->
<script src="vendors/js/vendor.bundle.base.js"></script>
<script src="vendors/js/vendor.bundle.addons.js"></script>
<!-- endinject -->
<!-- Plugin js for this page-->
<!-- End plugin js for this page-->
<!-- inject:js -->
<script src="js/off-canvas.js"></script>
<script src="js/misc.js"></script>
<!-- endinject -->
<!-- Custom js for this page-->
<script src="js/dashboard.js"></script>
<!-- End custom js for this page-->
</body>
</html>