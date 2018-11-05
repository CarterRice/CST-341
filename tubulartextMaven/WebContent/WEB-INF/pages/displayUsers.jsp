<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<h2>List of Users</h2>
	<table>
	
		<tr>
			<th><label>First Name</label></th>
			<th><label>Last Name</label></th>
			<th><label>Gender</label></th>
		</tr>
		<c:forEach var="user" items="${user}">
			<tr>
				<td><label>${user.firstName}</label></td>
				<td><label>${user.lastName}</label></td>
				<c:choose>
					<c:when test="${user.gender} == 1">
						<td><label>Male</label></td>
					</c:when>
					<c:when test="${user.gender} == 0">
						<td><label>Female</label></td>
					</c:when>
					<c:otherwise>
						<td><label>Apache Helicopter</label></td>
					</c:otherwise>
				</c:choose>				
			</tr>
		</c:forEach>
		<tr>
			<td colspan="2">
				<a href="add">Add a User</a>
			</td>
		</tr>
	</table>