<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script>
    <script src="<c:url value="/resources/js/main.js" />"></script>


	<h2>Login / Register</h2>
	
	<form:form method="POST" modelAttribute="user" action="loginUser">
		<table>
			<tr>							
				<td><form:label path="username">Username:</form:label></td>			
				<td><form:input path="username" type="text" name="username" placeholder="Username" style="color:#F0C060;border-color:#F0C060;background-color:#404850;"/><form:errors path="username"/></td>				
			</tr>
			<tr>
				<td><form:label path="password">Password:</form:label></td>
				<td><form:input path="password" type="text" name="password" placeholder="Password" style="color:#F0C060;border-color:#F0C060;background-color:#404850;"/><form:errors path="password"/></td>
			</tr>						
			<tr>
				<td colspan="2">
					<input type="submit" value="Submit"/>
				</td>
			</tr>
		</table>
		<br/>
		<form:errors path="*"/>
	</form:form>	                   
	
	<form:form method="POST" modelAttribute="user" action="registerUser">
		<td><form:label path="username">Username:</form:label></td>
		<form:input path="username" type="text" name="username" placeholder="Username" style="color:#F0C060;border-color:#F0C060;background-color:#404850;"/><form:errors path="username"/><br><br>
		<td><form:label path="password">Password:</form:label></td>
		<form:input path="password" type="text" name="password" placeholder="Password" style="color:#F0C060;border-color:#F0C060;background-color:#404850;"/><form:errors path="password"/><br><br>
		<td><form:label path="firstName">First Name:</form:label></td>
		<form:input path="firstName" type="text" name="firstname" placeholder="First name" style="color:#F0C060;border-color:#F0C060;background-color:#404850;"/><form:errors path="firstName"/><br><br>
		<td><form:label path="lastName">Last Name:</form:label></td>
		<form:input path="lastName" type="text" name="lastname" placeholder="Last name" style="color:#F0C060;border-color:#F0C060;background-color:#404850;"/><form:errors path="lastName"/><br><br>
		<td><form:label path="email">Email:</form:label></td>
		<form:input path="email" type="text" name="email" placeholder="Email" style="color:#F0C060;border-color:#F0C060;background-color:#404850;"/><form:errors path="email"/><br><br>
		<input type="submit" name="Register" value="Register" style="color:#F0C060;border-color:#F0C060;background-color:#404850;">
		<form:errors path="*"/>	
	</form:form>		          
                                
	