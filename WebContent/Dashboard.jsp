<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 5 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                  <span></span>Overview
                  <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                </li>
              </ul>
            </nav>
          </div>
           <div class="row">
            <div class="col-md-12 stretch-card grid-margin">
              <div class="card bg-gradient-info card-img-holder text-white">
                <div class="card-body">
                  <img src="images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image"/>
                  <h1 class="font-weight-normal mb-3 text-center">Welcome to Vehicle Rental System !
                    <i class="mdi mdi-car mdi-24px float-right"></i>
                  </h1>
                </div>
              </div>
            </div>
            
            <div class="col-12 grid-margin">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Booked Vehicles</h4>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>
                                                        From
                                                    </th>
                                                    <th>
                                                        To
                                                    </th>
                                                    <th>
                                                        Name
                                                    </th>
                                                    <th>
                                                       Contact Number
                                                    </th>
                                                    <th>
                                                        Type
                                                    </th>
                                                    <th>
                                                        Brand
                                                    </th>
                                                    <th>
                                                        Model
                                                    </th>
                                                    <th>
                                                        Color
                                                    </th>
                                                    <th>
                                                        No of Seats
                                                    </th>
                                                    <th>
                                                        Insurance Coverage
                                                    </th>
                                                    <th>
                                                        Rate
                                                    </th>
                                                    <th>
                                                        Booked Date
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${bookings}" var="booking">
                                                <tr>
                                                    <td>
                                                        ${booking.from_date}
                                                    </td>
                                                    <td>
                                                       ${booking.to_date}
                                                    </td>
                                                    <td>
                                                       ${booking.name}
                                                    </td>
                                                    <td>
                                                        ${booking.contact_number}
                                                    </td>
                                                    <td>
                                                        ${booking.type}
                                                    </td>
                                                    <td>
                                                        ${booking.brand}
                                                    </td>
                                                    <td>
                                                        ${booking.model}
                                                    </td>
                                                    <td>
                                                        ${booking.color}
                                                    </td>
                                                    <td>
                                                        ${booking.no_of_seats}
                                                    </td>
                                                    <td>
                                                        ${booking.insurance_coverage}
                                                    </td>
                                                    <td>
                                                        ${booking.rate}
                                                    </td>
                                                    <td>
                                                        ${booking.booked_date}
                                                    </td>
                                                    
                                                </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
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