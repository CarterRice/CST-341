<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	
<h2 style="color:#B0BCBA;">Add A New Product</h2>
	
	<div style="display:inline-block;">
	<form:form method="POST" modelAttribute="product" action="newProduct">
		<table>
			<tr>									
				<td><form:input path="name" type="text" name="name" placeholder="Name" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"/><form:errors path="name"/></td>				
			</tr>
			<tr>
				<td><form:input path="description" type="text" name="description" placeholder="Description" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"/><form:errors path="description"/></td>
			</tr>
			<tr>				
				<td style="color:#B0BCBA;">$<form:input path="price" type="text" name="price" placeholder="Price" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"/><form:errors path="price"/></td>
			</tr>
			<tr>
				<td><form:label path="imageFilePath" style="color:#B0BCBA;">Upload Image File</form:label></td>
			</tr>
			<tr>
				<td><form:input path="imageFilePath" type="file" id="imageFilePath" name="imageFilePath" accept=".png, .jpg" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"/><form:errors path="imageFilePath"/></td>				
				<!--<td><input type="file" id="imageFilePath1" name="imageFilePath1" accept=".png, .jpg" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"/></td>-->
				<td><form:input path="imageFilePath" type="hidden" id="imageFilePath" name="imageFilePath"/><form:errors path="imageFilePath"/></td>
			</tr>
			<tr>
				<td><form:label path="textFilePath" style="color:#B0BCBA;">Upload Text File</form:label></td>
			</tr>
			<tr>
				<td><form:input path="textFilePath" type="file" id="textFilePath" name="textFilePath" accept=".txt" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;" /><form:errors path="textFilePath"/></td>				
				<!--<td><input type="file" id="textFilePath1" name="textFilePath1" accept=".txt" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;" /></td>-->
				<td><form:input path="textFilePath" type="hidden" id="textFilePath" name="textFilePath"/><form:errors path="textFilePath"/></td>
			</tr>						
			<tr>				
				<td><input type="submit" name="Product" value="Create" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"></td>				
			</tr>
		</table>
		<br/>
		<form:errors path="*"/>
	</form:form>	                   
	</div>	