<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>LoanApplication Form</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>

<body>


<div class="container">    
<spring:url value="/loanapplication/saveLoanApplication" var="saveURL" />
<form:form modelAttribute="loanapplicationForm" method="post" action="${saveURL}" cssClass="form" >
            
    <div id="signupbox" style=" margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class = "text-center" class="panel-title">Loan Application</div>
            </div>  
            <div class="panel-body" >
            <div class="form-group">
    <label>LoanId</label>
    <form:input path="loanid" cssClass="form-control" id="loanid" />
   </div>
                <div class="form-group">
    <label>Name</label>
    <form:input path="name" cssClass="form-control" id="name" />
   </div>
   
   <div class="form-group">
    <label>User Name</label>
    <form:input path="uname" cssClass="form-control" id="uname" />
   </div>
   <div class="form-group">
    <label>Email</label>
    <form:input path="email" cssClass="form-control" id="email" />
   </div>
   
   <div class="form-group">
    <label>Pwd</label>
    <form:input path="pwd" cssClass="form-control" id="pwd" />
   </div>
   
   <div class="form-group">
    <label>Income</label>
    <form:input path="income" cssClass="form-control" id="income" />
   </div>
   
   <div class="form-group">
    <label>Phone</label>
    <form:input path="phone" cssClass="form-control" id="phone" />
   </div>
   
   <div class="form-group">
    <label>Company Name</label>
    <form:input path="companyname" cssClass="form-control" id="companyname" />
   </div>
  
   <div class="form-group">
    <label>Address</label>
    <form:input path="address" cssClass="form-control" id="address" />
   </div>
   
   <div class="form-group">
    <label>Gender</label>
    <form:input path="gender" cssClass="form-control" id="gender" />
     <%-- <div class="controls col-md-8 "  style="margin-bottom: 10px">
                                 <label> <form:input type="radio"  id="id_gender_1" cssClass="form-control" style="margin-bottom: 10px"/>Male</label>
                                 <label> <form:input type="radio" id="id_gender_2"  cssClass="form-control"  style="margin-bottom: 10px"/>Female </label>
                            </div>  --%>
   </div>
   <div class="form-group">
                        	<div class="col-sm-10 col-sm-offset-1">
                                                <label>Loan Type:</label>
                                                 <form:input path="loantype" cssClass="form-control" id="loantype" />
                        </div>
                        <%-- <div class = "form-group">
                        <div class="col-sm-9 col-sm-offset-1">
                  <form:input type="checkbox" name="VietNgu"/>   Business Type
                </div>
                
                        <div class="col-sm-9 col-sm-offset-1">
                  <form:input type="checkbox" name="VietNgu"/>   Home Type
                </div>
                
                        <div class="col-sm-9 col-sm-offset-1">
                  <form:input type="checkbox" name="VietNgu"/>   Education Type
                </div> </br>
                </div>
                
                 --%>
                
                 <div class="form-group">
                        	<div class="col-sm-10 col-sm-offset-1">
                                                <label>Document List:</label>
                                                  <form:input path="documents" cssClass="form-control" id="documents" />
                        </div>
                        <%-- <div class = "form-group">
                        <div class="col-sm-9 col-sm-offset-1">
                  <form:input type="checkbox" name="VietNgu"/>  SSN
                </div>
                
                        <div class="col-sm-9 col-sm-offset-1">
                  <form:input type="checkbox" name="VietNgu"/>   State ID
                </div>
                
                        <div class="col-sm-9 col-sm-offset-1">
                  <form:input type="checkbox" name="VietNgu"/>   Credit Report
                </div>
                </div> --%>
                
   <div class = "form-group">
                                          <div class="text-center">
                                           <button type="submit" class="btn btn-primary">Apply for Loan</button>
   </div>
   </div>
   
   
  </form:form>
  
                        
                       
               
            </div>
 
  
       
</body>
</html> 
