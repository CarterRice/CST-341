<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script>
    <script src="<c:url value="/resources/js/main.js" />"></script>


	<h2 style="color:#0ABDC6;">Login / Register</h2>
	
	<div style="display:inline-block;">
	<form:form method="POST" modelAttribute="user" action="loginUser">
		<table>
			<tr>									
				<td><form:input path="username" type="text" name="username" placeholder="Username" style="color:#0ABDC6;border-color:#0ABDC6;background-color:#091833;"/><form:errors path="username"/></td>				
			</tr>
			<tr>
				<td><form:input path="password" type="text" name="password" placeholder="Password" style="color:#0ABDC6;border-color:#0ABDC6;background-color:#091833;"/><form:errors path="password"/></td>
			</tr>						
			<tr>				
				<td><input type="submit" name="Login" value="Login" style="color:#0ABDC6;border-color:#0ABDC6;background-color:#091833;"></td>				
			</tr>
		</table>
		<br/>
		<form:errors path="*"/>
	</form:form>	                   
	</div>
	<div style="display:inline-block; margin-left:20px;">
	<form:form method="POST" modelAttribute="registerUser" action="registerUser">
	<table>
		<tr>
		<td><form:input path="username" type="text" name="username" placeholder="Username" style="color:#0ABDC6;border-color:#0ABDC6;background-color:#091833;"/><form:errors path="username"/></td>
		</tr>
		<tr>
		<td><form:input path="password" type="text" name="password" placeholder="Password" style="color:#0ABDC6;border-color:#0ABDC6;background-color:#091833;"/><form:errors path="password"/></td>
		</tr>
		<tr>
		<td><form:input path="firstName" type="text" name="firstname" placeholder="First name" style="color:#0ABDC6;border-color:#0ABDC6;background-color:#091833;"/><form:errors path="firstName"/></td>
		</tr>
		<tr>
		<td><form:input path="lastName" type="text" name="lastname" placeholder="Last name" style="color:#0ABDC6;border-color:#0ABDC6;background-color:#091833;"/><form:errors path="lastName"/></td>
		</tr>
		<tr>
		<td><form:input path="email" type="text" name="email" placeholder="Email" style="color:#0ABDC6;border-color:#0ABDC6;background-color:#091833;"/><form:errors path="email"/></td>
		</tr>
		<tr>
		<td><input type="submit" name="Register" value="Register" style="color:#0ABDC6;border-color:#0ABDC6;background-color:#091833;margin-left:53%;"></td>
		</tr>
		</table>
		<form:errors path="*"/>	
	</form:form>		   
	</div>       
                                
	