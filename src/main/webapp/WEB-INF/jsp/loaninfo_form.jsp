<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>LoanInfo Form</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>

<body>


<div class="container">    

             <spring:url value="/loaninfo/saveloaninfo" var="saveURL" />
  <form:form modelAttribute="loaninfoForm" method="post" action="${saveURL}" cssClass="form" >
  
    <div id="signupbox" style=" margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class = "text-center" class="panel-title">Loan Information</div>
            </div>  
            <div class="panel-body" >
            <div class="form-group">
          
    <label>LoanId</label>
    <form:input path="loanid" cssClass="form-control" id="loanid" />
   </div>
   
   <div class="form-group">
    <label>BankName</label>
    <form:input path="bankname" cssClass="form-control" id="bankname" />
   </div>
   <div class="form-group">
    <label>LoanType</label>
    <form:input path="loantype" cssClass="form-control" id="loantype" />
   </div>
   <div class="form-group">
    <label>Interest</label>
    <form:input path="interest" cssClass="form-control" id="interest" />
   </div>
    
   <button type="submit" class="btn btn-primary">Save</button>
   
  </form:form>
  
                        
                       
               
            </div>
 
  
       
</body>
</html> 
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>LOANINFO Form</title>
 <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
 <div class="container">
  <spring:url value="/loaninfo/saveloaninfo" var="saveURL" />
  <h2>LOANINFO</h2>
  <form:form modelAttribute="loaninfoForm" method="post" action="${saveURL}" cssClass="form" >
  <div class="form-group">
    <label>LoanId</label>
    <form:input path="loanId" cssClass="form-control" id="loanId" />
   </div>
   <form:hidden path="id"/>
   <div class="form-group">
    <label>BankName</label>
    <form:input path="bankName" cssClass="form-control" id="bankName" />
   </div>
   <div class="form-group">
    <label>LoanType</label>
    <form:input path="loanType" cssClass="form-control" id="loanType" />
   </div>
   <div class="form-group">
    <label>Interest</label>
    <form:input path="interest" cssClass="form-control" id="interest" />
   </div>
   <button type="submit" class="btn btn-primary">Save</button>
   </form:form>
  
  
 </div>
</body>
</html> --%>