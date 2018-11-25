<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	
<h2 style="color:#B0BCBA;">Update a Product</h2>
	
	<div style="display:inline-block;">
	<form:form method="POST" modelAttribute="product" action="../updateProduct">
		<table>
			<tr>
				<td><form:input path="id" type="hidden" name="id" value="${p.id}" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"/><form:errors path="id"/></td>
			</tr>
			<tr>									
				<td><form:input path="name" type="text" name="name" value="${p.name}" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"/><form:errors path="name"/></td>				
			</tr>
			<tr>
				<td><form:input path="description" type="text" name="description" value="${p.description}" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"/><form:errors path="description"/></td>
			</tr>
			<tr>				
				<td style="color:#B0BCBA;">$<form:input path="price" type="text" name="price" value="${p.price}" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"/><form:errors path="price"/></td>
			</tr>
			<tr>
				<td><form:input path="imageFilePath" type="hidden" id="imageFilePath" name="imageFilePath" value="/tubulartext/WebContent/uploadedFiles/images/base.jpg" /><form:errors path="imageFilePath"/></td>
			</tr>
			<tr>
				<td><form:input path="textFilePath" type="hidden" id="textFilePath" name="textFilePath" value="/tubulartext/WebContent/uploadedFiles/textFiles/funFact.txt" /><form:errors path="textFilePath"/></td>
			</tr>						
			<tr>				
				<td><input type="submit" name="Product" value="Update" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"></td>				
			</tr>
		</table>
		<br/>
		<form:errors path="*"/>
	</form:form>	                   
	</div>