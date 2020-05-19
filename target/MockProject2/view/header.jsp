<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html lang="en">

<!--  
 * The Header page.
 *
 * Version 1.0
 *
 * Date: 23-03-2020
 *
 * Copyright 
 *
 * Modification Logs:
 * DATE                 AUTHOR          DESCRIPTION
 * -----------------------------------------------------------------------
 * 03-04-2020           ThanhLP         Create
 */
/**
 * @author ThanhLP
 *
-->

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Booking office list</title>

  <!-- Bootstrap core CSS -->
  <link href="<c:url value="/resources/theme/css/bootstrap.min.css"/>" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="/resources/theme/css/simple-slidebar.css" rel="stylesheet">

 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>

<body>


	<nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom" style="background: yellow">
		<div class="collapse navbar-collapse" id="navbarSupportedContent" style="float: left;width: 50%;color: red" >
		 	<a class="nav-link text-primary" href="#" style="float: left"><i class="fa fa-cart-plus" aria-hidden="true" style="color:grey">  Booking office</i> <span class="sr-only">(current)</span></a>
		 </div>

        <div class="collapse navbar-collapse" id="navbarSupportedContent" style="float: right;width: 50%" >
          <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
            <li class="nav-item active">
              <a class="nav-link text-primary" href="#">Welcome Le Phuoc Thanh <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-primary" href="#"><i class="fa fa-sign-out-alt" aria-hidden="true"></i>Logout</a>
            </li>
          </ul>
        </div> 
      </nav>
			
	  <div class="d-flex" id="wrapper" >
	
	    <div class="bg-light border-right sidebar-menu" id="sidebar-wrapper">
	      <div class="list-group list-group-flush " style="width: 100%">
	        <ul >
	          <a href="#" class="list-group-item list-group-item-action bg-light text-primary" ><i class="fa fa-tachometer-alt fa-2" aria-hidden="true" ></i> Car park manager</a>
	          
	          <div class="sidebar-dropdown" >
	            <a href="#" class="list-group-item list-group-item-action bg-light text-primary"><i class="fa fa-car fa-2" aria-hidden="true"></i> Car manager</a>
	            <div class="sidebar-submenu">
	              <ul>
	                  <div>
	                    <a href="#"><i class="fa fa-list fa-2" aria-hidden="true"></i> Car list</a>
	                  </div>
	                  <div>
	                    <a href="#"><i class="fa fa-plus fa-2" aria-hidden="true"></i> Add Car</a>
	                  </div>
	              </ul>
	            </div>
	          </div>
	          
	          <div class="sidebar-dropdown">
	            <a href="#" class="list-group-item list-group-item-action bg-light text-primary"><i class="fa fa-cart-plus fa-2" aria-hidden="true"></i> Booking office manager</a>
	            <div class="sidebar-submenu">
	              <ul>
	                  <div>
	                    <form action="/MockProject1/showBookingOfficeList">
							<button class="btn btn-default" style="color: #0056B3" type="submit"><i class="fa fa-list fa-2" aria-hidden="true"></i> Booking office list</button>
						</form> 
	                  </div>
	                  <div>
	                    <a href="http://localhost:8080/MockProject1/view/addBookingOffice.jsp"><i class="fa fa-plus fa-2" aria-hidden="true"></i> Add Booking office</a>
	                  </div>
	              </ul>
	            </div>
	          </div>
	          
	          <div class="sidebar-dropdown">
	            <a href="#" class="list-group-item list-group-item-action bg-light text-primary"><i class="fa fa-map-marker" aria-hidden="true"></i> Parking lot manager</a>
	            <div class="sidebar-submenu">
	              <ul >
	                  <div>
	                    <a href="#"><i class="fa fa-list fa-2" aria-hidden="true"></i> Parking lot list</a>
	                  </div>
	                  <div>
	                    <a href="#"><i class="fa fa-plus fa-2" aria-hidden="true"></i> Add parking lot</a>
	                  </div>
	              </ul>
	            </div>
	          </div>
	          
	        </ul>
	      </div>
	    </div>
	    
	   