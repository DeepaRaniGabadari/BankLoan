<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Customer List</title>
 
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
                    <h3 class="panel-title">Customer List</h3>
                  </div>
                  <div class="col col-xs-6 text-right">
                  <spring:url value="/customer/addCustomer/" var="addURL" />
                  <a class="btn btn-primary" href="${addURL }" role="button" >Add New Customer</a>
                  
                  </div>
                </div>
              </div>
              <div class="panel-body table-responsive">
                <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr>
                    <th>Cust Id</th>
				    <th>Cust Name</th>
				    <th scope="row">Email</th>
				    <th scope="row">Uname</th>
				    <th scope="row">Pwd</th>
				     <th scope="row">Address</th>
				     <th scope="row">Phone</th>
				     <th scope="row">SSN</th>
				    <th scope="row">Update</th>
				    <th scope="row">Delete</th>
                    </tr> 
                  </thead>
                  <tbody>
    <c:forEach items="${customerList }" var="customer" >
     <tr>
      <td>${customer.custid }</td>
       <td>${customer.custname }</td>
         <td>${customer.email }</td>
          <td>${customer.uname }</td>
           <td>${customer.pwd }</td>
            <td>${customer.address }</td>
             <td>${customer.phone }</td>
              <td>${customer.ssn}</td>
              
            
      <td>
       <spring:url value="/customer/updateCustomer/${customer.custid }" var="updateURL" />
       <a class="btn btn-primary" href="${updateURL }" role="button" >Update</a>
      </td>
      <td>
       <spring:url value="/customer/deleteCustomer/${customer.custid }" var="deleteURL" />
       <a class="btn btn-primary" href="${deleteURL }" role="button" >Delete</a>
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

<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Customer List</title>
 <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
 <div class="container">
  <h2>Customer List</h2>
  <table class="table table-striped">
   <thead>
    <th scope="row">#ID</th>
    <th scope="row">Name</th>
    <th scope="row">Email</th>
    <th scope="row">Uname</th>
    <th scope="row">Pwd</th>
     <th scope="row">Address</th>
     <th scope="row">Phone</th>
     <th scope="row">SSN</th>
    <th scope="row">Update</th>
    <th scope="row">Delete</th>
   </thead>
   <tbody>
    <c:forEach items="${customerList }" var="customer" >
     <tr>
      <td>${customer.id }</td>
       <td>${customer.name }</td>
         <td>${customer.email }</td>
          <td>${customer.uname }</td>
           <td>${customer.pwd }</td>
            <td>${customer.address }</td>
             <td>${customer.phone }</td>
              <td>${customer.ssn}</td>
            
      
      <td>
       <spring:url value="/customer/updateCustomer/${customer.id }" var="updateURL" />
       <a class="btn btn-primary" href="${updateURL }" role="button" >Update</a>
      </td>
      <td>
       <spring:url value="/customer/deleteCustomer/${customer.id }" var="deleteURL" />
       <a class="btn btn-primary" href="${deleteURL }" role="button" >Delete</a>
      </td>
     </tr>
    </c:forEach>
   </tbody>
  </table>
  <spring:url value="/customer/addCustomer/" var="addURL" />
  <a class="btn btn-primary" href="${addURL }" role="button" >Add New Customer</a>
 </div>
 <td>
 <center><br>
 <spring:url value="/home" var="home" /><a class="btn btn-primary" href="${home}"
							role="button">HOME</a>

</center>
</td>
</body>
</html>
 --%>