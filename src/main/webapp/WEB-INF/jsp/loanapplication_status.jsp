<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 

<body bgcolor="Aqua">
<center>
Your Loan Approved ...
<br/>
<br/>
</center>
<td>
 <center><br>
 <spring:url value="/customer_home" var="customer_home" /><a class="btn btn-primary" href="${customer_home}"
							role="button">Customer Home</a>

</center>
</td>



</body>

</html>