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
           <!-- <div class="col col-xs-6 text-right"> -->
                  <spring:url value="/admin/addAdmin/" var="addURL" />
                   <li> <a type="button" class="btn btn-sm btn-primary btn-create"  href="${addURL }">Login Admin</a>
                 </li>
         <%--   <spring:url value="/admin/admin_form" var="admin" />				
               <li><a href="${admin}"><i class="fa fa-list-alt fa-fw"></i>Welcome Admin</a></li> --%>
               
               <spring:url value="/bank/list" var="bank" />				
               <li><a href="${bank}"><i class="fa fa-list-alt fa-fw"></i>Bank Management</a></li>
               
               <spring:url value="/department/list"
								var="dep" />
               <li><a href="${dep}"><i class="fa fa-file-o fa-fw"></i>Department Management</a></li>
               
               <spring:url value="/employee/list"
								var="emp" />
               <li><a href="${emp}"><i class="fa fa-bar-chart-o fa-fw"></i>Employee Management</a></li>
               
               <%-- <spring:url value="/customer/list"
								var="cust" />
               <li><a href="${cust}"><i class="fa fa-table fa-fw"></i>Customer Management</a></li>
                --%>
               <spring:url value="/loaninfo/list"
								var="loan" />
               <li><a href="${loan}"><i class="fa fa-tasks fa-fw"></i>Loan Information</a></li>
               
               
               
<spring:url value="/loanapplication/list"
								var="loanapplication" />
               <li><a href="${loanapplication}"><i class="fa fa-tasks fa-fw"></i>LoanApplication Information</a></li>
               
               
               <spring:url value="/loanapplication/loan_status"
								var="loanapplicationstatus" />
               <li><a href="${loanapplicationstatus}"><i class="fa fa-tasks fa-fw"></i>Status of Application</a></li>
               
               
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
