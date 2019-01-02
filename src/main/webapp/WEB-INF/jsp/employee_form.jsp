<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Employee Form</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>

<body>


<div class="container">    
 <spring:url value="/employee/saveEmployee" var="saveURL" />
 <form:form modelAttribute="employeeForm" method="post" action="${saveURL }" cssClass="form" >
<%-- <form:hidden path="id"/> --%>
            
    <div id="signupbox" style=" margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class = "text-center" class="panel-title">Employee FORM</div>
            </div>  
            <div class="panel-body" >
            
            <%-- <div class="form-group">
    <label>empid</label>
    <form:input path="ename" cssClass="form-control" id="ename" />
   </div>
              --%>
                    <div class="form-group">
    <label>ename</label>
    <form:input path="ename" cssClass="form-control" id="ename" />
   </div>
   <div class="form-group">
    <label>Designation</label>
    <form:input path="designation" cssClass="form-control" id="designation" />
   </div>
   <div class="form-group">
    <label>Dept</label>
    <form:input path="dept" cssClass="form-control" id="dept" />
   </div>
   <div class="form-group">
    <label>Email</label>
    <form:input path="email" cssClass="form-control" id="email" />
   </div>
   <div class="form-group">
    <label>Address</label>
    <form:input path="address" cssClass="form-control" id="address" />
   </div>
   <div class="form-group">
    <label>Phone</label>
    <form:input path="phone" cssClass="form-control" id="phone" />
   </div>
   <button type="submit" class="btn btn-primary">Save</button>
  </form:form>
  
                        
                       
                        </div> 
                            
                    </form>

               
            </div>
        </div>
    </div> 
</div>
  
        
</body>
</html> 
