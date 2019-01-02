<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>admin Form</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>

<body>


<div class="container">    
<spring:url value="/admin/saveAdmin" var="saveURL" />
<form:form modelAttribute="adminForm" method="post" action="${saveURL}" cssClass="form" >
<%-- <form:hidden path="id"/> --%>
            
    <div id="signupbox" style=" margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class = "text-center" class="panel-title">Admin FORM</div>
            </div>  
            <div class="panel-body" >
            <div class="form-group">
    <label>Id</label>
    <form:input path="id" cssClass="form-control" id="id" />
   </div>
                <div class="form-group">
    <label>UserName</label>
    <form:input path="username" cssClass="form-control" id="username" />
   </div>
   <div class="form-group">
    <label>Pwd</label>
    <form:input path="pwd" cssClass="form-control" id="pwd" />
   </div>
   <button type="submit" class="btn btn-primary">Save</button>
   
  </form:form>
  
                        
                       
               
            </div>
 
  
       
</body>
</html> 
