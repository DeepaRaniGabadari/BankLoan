<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 

<body bgcolor="Aqua">
<center>
The details are Verified ...
Forwarding to Legal Department....
<br/>
<br/>
</center>
<td>
 <center><br>
 <spring:url value="/verification_home" var="verification_home" /><a class="btn btn-primary" href="${verification_home}"
							role="button">Verification Home</a>

</center>
</td>



</body>

</html>