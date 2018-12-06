<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
	
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2 style="color:#B0BCBA;">Login / Register</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-4">
			</div>
			<div class="col-lg-2">
				<!-- Script to shake the box when something is incorrect, error triggered or the user isn't in the database -->	
					<script>
						$(document).ready(function(){
							$( "#loginSubmit" ).click(function() {
					  			$( "#loginForm" ).effect( "shake", {times:4}, 1000 );
							});
						});					
					</script>	
					<!-- Form for logging in users -->
					<div style="display:inline-block;">
					<form:form id="loginForm" method="POST" modelAttribute="user" action="loginUser">
						<table>
							<tr>									
								<td><form:input path="username" type="text" id="loginUsername" name="username" placeholder="Username" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"/><form:errors path="username" style="color:red;"/></td>				
							</tr>
							<tr>
								<td><form:input path="password" type="password" id="loginPassword" name="password" placeholder="Password" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"/><form:errors path="password" style="color:red;"/></td>
							</tr>						
							<tr>				
								<td><input id="loginSubmit" type="submit" name="Login" value="Login" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;" class="btn btn-primary"></td>				
							</tr>
						</table>
						<br/>		
						<form:errors path="*"/>
					</form:form>		                   
					</div>
						
						
					<!-- User login instant validation -->
					<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
					<script>
					$(document).ready(function () {
				
					    $('#loginForm').validate({ // initialize the plugin	 
					    	wrapper: "li",
					        rules: {
					            "username": {
					                required: true,
					                minlength: 2,
					                maxlength: 30
					            },
					            "password": {
					                required: true,
					                minlength: 2,
					                maxlength: 30
					            }
					        },
						    messages: {
					            "username": {
					                required: "Username is required!",
					                minlength: "Username must be at least 2 characters long",
					                maxlength: "Username cannot be more than 30 characters long"
					            },
					            "password": {
					                required: "Password is required!",
					                minlength: "Password must be at least 2 characters long",
					                maxlength: "Password cannot be more than 30 characters long"
					            }
					        }
					    });
				
					});
					</script>
			</div>
			<div class="col-lg-2">
					<!-- JQuery registration error shake -->
						<script>
							$(document).ready(function(){
								$( "#registerSubmit" ).click(function() {
						  			$( "#registerForm" ).effect( "shake", {times:4}, 1000 );
								});
							});					
						</script>
						
						<div style="display:inline-block; margin-left:20px;">
						<form:form id="registerForm" method="POST" modelAttribute="registerUser" action="registerUser">
						<table>
							<tr>
							<td><form:input path="username" type="text" id="regUsername" name="username" placeholder="Username" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"/><form:errors path="username" style="color:red;"/></td>
							</tr>
							<tr>
							<td><form:input path="password" type="text" id="regPassword" name="password" placeholder="Password" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"/><form:errors path="password" style="color:red;"/></td>
							</tr>
							<tr>
							<td><form:input path="firstName" type="text" name="firstname" placeholder="First name" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"/><form:errors path="firstName" style="color:red;"/></td>
							</tr>
							<tr>
							<td><form:input path="lastName" type="text" name="lastname" placeholder="Last name" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"/><form:errors path="lastName" style="color:red;"/></td>
							</tr>
							<tr>
							<td><form:input path="email" type="text" name="email" placeholder="Email" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"/><form:errors path="email" style="color:red;"/></td>
							</tr>
							<tr>
							<td><input id="registerSubmit" type="submit" class="btn btn-primary" name="Register" value="Register" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;margin-left:60%;"></td>
							</tr>
							</table>
							<form:errors path="*"/>	
						</form:form>		   
						</div>  
						<!-- JQuery validation for registration -->
						<script>
						$(document).ready(function () {
					
						    $('#registerForm').validate({ // initialize the plugin	
						    	wrapper: "li",
						        rules: {
						            "username": {
						                required: true,
						                minlength: 2,
						                maxlength: 30
						            },
						            "password": {
						                required: true,
						                minlength: 2,
						                maxlength: 30
						            },
						            "firstName": {
						            	required: true,
						            	minlength: 2,
						                maxlength: 30
						            },
						            "lastName": {
						            	required: true,
						            	minlength: 2,
						                maxlength: 30
						            },
						            "email": {
						            	required: true,
						            	minlength: 10,
						                maxlength: 50,
						                email: true
						            }
						        },
							    messages: {
						            "username": {
						                required: "Username is required!",
						                minlength: "Username must be at least 2 characters long",
						                maxlength: "Username cannot be more than 30 characters long"
						            },
						            "password": {
						                required: "Password is required!",
						                minlength: "Password must be at least 2 characters long",
						                maxlength: "Password cannot be more than 30 characters long"
						            },
						            "firstname": {
						            	required: "A first name is required!",
						                minlength: "First names must be at least 2 characters long",
						                maxlength: "First names cannot be more than 30 characters long"
						            },
						            "lastname": {
						            	required: "A last name is required!",
						                minlength: "Last names must be at least 2 characters long",
						                maxlength: "Last names cannot be more than 30 characters long"
						            },
						            "email": {
						            	required: "An email is required!",
						                minlength: "Emails must be at least 10 characters long",
						                maxlength: "Emails cannot be more than 50 characters long"
						            }
						        }
						    });
					
						});
						</script>	
			</div>
			<div class="col-lg-4">
			</div>
		</div>
	</div>					   
        
    <!-- Jquery used to determine if the user has just registered -->            
	<script>		
		$(document).ready(function(){
			
			//alert("You have successfully registered");
			//Variables for username and password
			var registerUsername = document.getElementById("regUsername").value;
			var registerPassword = document.getElementById("regPassword").value;
			//Populating login Username and Password 
			document.getElementById("loginUsername").value = registerUsername;
			document.getElementById("loginPassword").value = registerPassword;			
			
			});
	
	</script>                                
	