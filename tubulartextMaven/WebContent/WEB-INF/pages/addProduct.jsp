<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<h2 style="color:#B0BCBA;">Add A New Product</h2>
				<!-- Script to shake the box when something is incorrect, error triggered or the user isn't in the database -->	
					<script>
						$(document).ready(function(){
							$( "#productSubmit" ).click(function() {
					  			$( "#productForm" ).effect( "shake", {times:4}, 1000 );
							});
						});					
					</script>
				<div style="display:inline-block;">
				<form:form id="productForm" method="POST" modelAttribute="product" action="newProduct">
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
						</tr>
						<tr>
							<td><form:label path="textFilePath" style="color:#B0BCBA;">Upload Text File</form:label></td>
						</tr>
						<tr>
							<td><form:input path="textFilePath" type="file" id="textFilePath" name="textFilePath" accept=".txt" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;" /><form:errors path="textFilePath"/></td>
							<td><form:label path="base64Encoded" style="color:#4C7394;">Encode</form:label></td>
							<td><form:input path="base64Encoded" type="hidden" id="base64Encoded" name="base64Endcoded" value=""/>				
						</tr>						
						<tr>				
							<td><input type="submit" name="Product" value="Create" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"></td>				
						</tr>
					</table>
					<br/>
					<form:errors path="*"/>
				</form:form>	                   
				</div>
					<!-- Validation for product submitting -->
					<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
						<script>
						$(document).ready(function () {
					
						    $('#productForm').validate({ // initialize the plugin	 
						    	wrapper: "li",
						        rules: {
						            "name": {
						                required: true,
						                minlength: 4,
						                maxlength: 20
						            },
						            "description": {
						                required: true,
						                minlength: 4,
						                maxlength: 300
						            },
						            "price": {
						                required: true,
						                minlength: 1,
						                maxlength: 10
						            },
						            "imageFilePath": {
						                required: true
						            },
						            "textFilePath": {
						                required: true
						            }
						        },
							    messages: {
							    	"name": {
						                required: "Name is a required field!",
						                minlength: "Name cannot be shorter than 4 characters!",
						                maxlength: "Name cannot be longer than 20 characters!"
						            },
						            "description": {
						                required: "Description is a required field!",
						                minlength: "Description cannot be shorter than 4 characters!",
						                maxlength: "Description cannot be longer than 300 characters!"
						            },
						            "price": {
						                required: "Price is a required field!",
						                minlength: "Price cannot be smaller than 1 character!",
						                maxlength: "Price cannot be longer than 10 characters!"
						            },
						            "imageFilePath": {
						                required: "An image is required!"
						            },
						            "textFilePath": {
						                required: "A text file is required!"
						            }
						        }
						    });
					
						});
						</script>
		</div>
	</div>
</div>	