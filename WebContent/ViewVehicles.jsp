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
                  <span></span>View Vehicles
                  <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                </li>
              </ul>
            </nav>
          </div>
          <div class="row">
                        <div class="col-12 grid-margin">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Registered Vehicles</h4>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
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
                                                       Year
                                                    </th>
                                                    <th>
                                                        Reg No
                                                    </th>
                                                    <th>
                                                        Color
                                                    </th>
                                                    <th>
                                                        No of Seats
                                                    </th>
                                                    <th>
                                                        Chassis No
                                                    </th>
                                                    <th>
                                                        Engine No
                                                    </th>
                                                    <th>
                                                        Mileage
                                                    </th>
                                                    <th>
                                                        Insurance Cov.
                                                    </th>
                                                    <th>
                                                        Rate
                                                    </th>
                                                    <th>
                                                        Actions
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${vehicles}" var="vehicle">
                                                <tr>
                                                    <td>
                                                        ${vehicle.type}
                                                    </td>
                                                    <td>
                                                       ${vehicle.brand}
                                                    </td>
                                                    <td>
                                                       ${vehicle.model}
                                                    </td>
                                                    <td>
                                                        ${vehicle.year}
                                                    </td>
                                                    <td>
                                                        ${vehicle.reg_no}
                                                    </td>
                                                    <td>
                                                        ${vehicle.color}
                                                    </td>
                                                    <td>
                                                        ${vehicle.no_of_seats}
                                                    </td>
                                                    <td>
                                                        ${vehicle.chassis_no}
                                                    </td>
                                                    <td>
                                                        ${vehicle.engine_no}
                                                    </td>
                                                    <td>
                                                        ${vehicle.mileage}
                                                    </td>
                                                    <td>
                                                        ${vehicle.insuarance_coverage}
                                                    </td>
                                                    <td>
                                                        ${vehicle.rate}
                                                    </td>
                                                    <td>
                                                    	<a href="EditVehicleInfo.jsp?id=${vehicle.id}&type=${vehicle.type}&brand=${vehicle.brand}&model=${vehicle.model}&year=${vehicle.year}&register_no=${vehicle.reg_no}&color=${vehicle.color}&no_of_seats=${vehicle.no_of_seats}&chassis_no=${vehicle.chassis_no}&engine_no=${vehicle.engine_no}&mileage=${vehicle.mileage}&insuarance_coverage=${vehicle.insuarance_coverage}&rate=${vehicle.rate}" class="btn-link btn-fw">
                                                    		<i class="mdi mdi-lead-pencil"></i>&nbsp;Edit
                                                    	</a>
                                                    	<a href="DeleteVehicleServlet?id=${vehicle.id}" class="btn-link btn-fw">
                                                    		<i class="mdi mdi-delete-forever"></i>&nbsp;Del
                                                    	</a>
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