<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Lending Tree application</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>


<table align="center"border=2>
<body>
	

<div class="container">
   <div class="row">
       <div class="col-md-2">
           <ul class="nav nav-pills nav-stacked">
               <li class="active"><a href="#"><i class="fa fa-home fa-fw"></i>Welcome PickUp</a></li>
              
               
               
               <spring:url value="/loanapplication/list"
								var="loanapplication" />
               <li><a href="${loanapplication}"><i class="fa fa-table fa-fw"></i>Viewing Loans</a></li>
               
               
               <spring:url value="/index" var="index" />
               <div class="text-center">
               <a class="btn btn-primary"  href="${index}" role="button">Back to Homepage</a>
           </ul>
       </div>
       <!-- <div class="col-md-9 well"> -->
       <div class="title">
       
       
           <!-- Vertical admin menu -->
           <div class="boxA"><img src="img/img-case-sudies-2.png" width="870" height="550" alt="" /></div>
       </div>
   </div>
</div>
</body>
</table>
</html>