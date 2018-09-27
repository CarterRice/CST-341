<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

    <h2>Welcome to the Store Front</h2>
	<table>
	
		<tr>
			<th><label>Username</label></th>
		</tr>
		<tr>		
			<td><label>${user.username}</label></td>		
		</tr>	
	</table>
	
	<a href="add">Back</a>