<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 

<body bgcolor="Aqua">
<center>
Forward To Verification...
<br/>
<br/>
</center>
<td>
 <center><br>
 <spring:url value="/pickup_home" var="pickup_home" /><a class="btn btn-primary" href="${pickup_home}"
							role="button">PICKUP HOME</a>

</center>
</td>



</body>

</html>
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html> --%>