<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>LoanInfo List</title>
 
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
                    <h3 class="panel-title">LoanInfo List</h3>
                  </div>
                  <div class="col col-xs-6 text-right">
                  <spring:url value="/loaninfo/addloaninfo/" var="addURL" />
                  <a class="btn btn-primary" href="${addURL }" role="button" >Add New LoanInfo</a>
                  </div>
                </div>
              </div>
              <div class="panel-body table-responsive">
                <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr>
                        
                        
                         <th scope="row">Loan Id</th>
					    <th scope="row">Bank Name</th>
					    <th scope="row">Loan Type</th>
					     <th scope="row">Interest</th>
					    <th scope="row">Update</th>
					    <th scope="row">Delete</th>
                    </tr> 
                  </thead>
                  <tbody>
                  <c:forEach items="${loaninfoList}" var="loaninfo" >
		     <tr>
		      <td>${loaninfo.loanid}</td>
		      <td>${loaninfo.bankname}</td>
		      <td>${loaninfo.loantype}</td>
		      <td>${loaninfo.interest}</td>
      
    
      <td>
       <spring:url value="/loaninfo/updateloaninfo/${loaninfo.loanid}" var="updateURL" />
       <a class="btn btn-primary" href="${updateURL }" role="button" >Update</a>
      </td>
      <td>
       <spring:url value="/loaninfo/deleteloaninfo/${loaninfo.loanid}" var="deleteURL" />
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
 <title>LoanInfo List</title>
 <link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
 <script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
 <div class="container">
  <h2>LoanInfo List</h2>
  <table class="table table-striped">
   <thead>
   <!--  <th scope="row">#LOANID</th> -->
     <th scope="row">LOANID</th>
    <th scope="row">Bank Name</th>
    <th scope="row">Loan Type</th>
     <th scope="row">Interest</th>
    <th scope="row">Update</th>
    <th scope="row">Delete</th>
   </thead>
   <tbody>
    <c:forEach items="${loaninfoList}" var="loaninfo" >
     <tr>
      <td>${loaninfo.loanId}</td>
      <td>${loaninfo.bankName}</td>
      <td>${loaninfo.loanType}</td>
      <td>${loaninfo.interest}</td>
      
      <td>
       <spring:url value="/loaninfo/updateloaninfo/${loaninfo.loanId}" var="updateURL" />
       <a class="btn btn-primary" href="${updateURL }" role="button" >Update</a>
      </td>
      <td>
       <spring:url value="/loaninfo/deleteloaninfo/${loaninfo.loanId}" var="deleteURL" />
       <a class="btn btn-primary" href="${deleteURL }" role="button" >Delete</a>
      </td>
     </tr>
    </c:forEach>
   </tbody>
  </table>
  <spring:url value="/loaninfo/addloaninfo/" var="addURL" />
  <a class="btn btn-primary" href="${addURL }" role="button" >Add New LoanInfo</a>
 </div>
 <td>
 <center><br>
 <spring:url value="/home" var="home" /><a class="btn btn-primary" href="${home}"
							role="button">HOME</a>

</center>
</td>
<td>
 <center><br>
 <spring:url value="/customer_home" var="customer_home" /><a class="btn btn-primary" href="${customer_home}"
							role="button">CUSTOMER HOME</a>

</center>
</td>

</body>
</html> --%>