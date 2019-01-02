<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Employee List</title>
 
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>
<body>
 </script><link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
<script src="https://code.jquery.com/jquery-2.2.4.js">
</script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<div class="container">
    <div class="row">
    
        <div class="col-md-10 col-md-offset-1">

            <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    <h3 class="panel-title">Employee List</h3>
                  </div>
                  <div class="col col-xs-6 text-right">
                  <spring:url value="/employee/addEmployee/" var="addURL" />
                    <a type="button" class="btn btn-sm btn-primary btn-create"  href="${addURL }">Create New Employee</a>
                  </div>
                </div>
              </div>
              <div class="panel-body table-responsive">
                <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr>
                        
                        
                        <th>Emp Id</th>
                        <th>Ename</th>
                        <th>Designation</th>
                        <th>Dept</th>
                        <th>Email</th>
                        <th>Address</th>
                         <th>Phone</th>
                        <th>Update</th>
                        <th>Delete</th>
                    </tr> 
                  </thead>
                  <tbody>
    <c:forEach items="${employeeList}" var="employee" >
     <tr>
     
      <tr>
      <td>${employee.empid }</td>
       <td>${employee.ename }</td>
        <td>${employee.designation}</td>
         <td>${employee.dept}</td>
          <td>${employee.email}</td>
           <td>${employee.address}</td>
            <td>${employee.phone}</td>
      
      
      <td>
       <spring:url value="/employee/updateEmployee/${employee.empid }" var="updateURL" />
       <a class="btn btn-primary" href="${updateURL}" role="button" >Update</a>
      </td>
      <td>
       <spring:url value="/employee/deleteEmployee/${employee.empid}" var="deleteURL" />
       <a class="btn btn-primary" href="${deleteURL}" role="button" >Delete</a>
      </td>
     </tr>
    </c:forEach>
   </tbody>
  </table>
            
              </div>
              
                  <div class="col col-xs-8">
                    <ul class="pagination hidden-xs pull-right" id="myPager">
                    </ul>
                    <ul class="pagination visible-xs pull-right">
                        <li><a href="#">«</a></li>
                        <li><a href="#">»</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>

</div></div></div>
<td>
 <center><br>
 <spring:url value="/home" var="home" /><a class="btn btn-primary" href="${home}"
							role="button">HOME</a>

</center>
</td>
</body>
</html>