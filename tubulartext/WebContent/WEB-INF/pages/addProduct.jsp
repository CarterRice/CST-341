<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	
<h2 style="color:#0ABDC6;">Add A New Product</h2>
	
	<div style="display:inline-block;">
	<form:form method="POST" modelAttribute="product" action="add">
		<table>
			<tr>									
				<td><form:input path="name" type="text" name="name" placeholder="Name" style="color:#0ABDC6;border-color:#0ABDC6;background-color:#091833;"/><form:errors path="name"/></td>				
			</tr>
			<tr>
				<td><form:input path="description" type="text" name="description" placeholder="Description" style="color:#0ABDC6;border-color:#0ABDC6;background-color:#091833;"/><form:errors path="description"/></td>
			</tr>
			<tr>
				<td><form:input path="price" type="text" name="price" placeholder="Price" style="color:#0ABDC6;border-color:#0ABDC6;background-color:#091833;"/><form:errors path="price"/></td>
			</tr>
			<tr>
				<td><form:input path="imageFilePath" type="text" id="imageFilePath" name="imageFilePath" accept=".png, .jpg" style="color:#0ABDC6;border-color:#0ABDC6;background-color:#091833;"/><form:errors path="imageFilePath"/></td>
			</tr>
			<tr>
				<td><form:input path="textFilePath" type="file" id="textFilePath" name="textFilePath" accept=".txt" style="color:#0ABDC6;border-color:#0ABDC6;background-color:#091833;" /></td>
			</tr>						
			<tr>				
				<td><input type="submit" name="submit" value="submit" style="color:#0ABDC6;border-color:#0ABDC6;background-color:#091833;"></td>				
			</tr>
		</table>
		<br/>
		<form:errors path="*"/>
	</form:form>	                   
	</div>	