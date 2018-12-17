<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>		
    
    		<nav class="navbar navbar-default navbar-expand-xs" style="background-color:#2B5A88;">
                <div class="container-fluid" style="background-color:#2B5A88;">
                    <div class="navbar-header">
                    	<button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
                        <a class="navbar-brand" style="color:#B0BCBA; padding-left: 20px; padding-top:16px;" href="/tubulartextMaven/product/view">Store Front</a>
                    </div>                    
                   	<div id="navbarCollapse" class="collapse navbar-collapse">    			                           
	                    <ul class="nav navbar-nav">
	                        <li class="dropdown">
	                            <a class="dropdown-toggle" data-toggle="dropdown" style="color:#B0BCBA; padding-left: 20px; font-size: larger;" href="#">Admin</a>
	                            <ul class="dropdown-menu">                            	
	                                <li><a href="/tubulartextMaven/product/add">Add New</a></li>
	                                <li><a href="/tubulartextMaven/product/updateView">Update/Delete Product</a></li>                                
	                            </ul>
	                        </li>
	                    </ul>                                        
	                    <ul class="nav navbar-nav navbar-right">
	                        <li><a style="color:#B0BCBA; padding-left: 20px; font-size: larger;" href="#"><span id="shoppingBadge" class="badge" style="color:#2B5A88;">0</span> Shopping Cart</a></li>
	                        <li><a style="color:#B0BCBA; padding-left: 20px; font-size: larger;" href="/tubulartextMaven/user/add">Log Out</a></li>
	                    </ul>
                    </div>
                </div>
            </nav>
            
            <!-- Create Shopping Cart -->        
            <script>
            	var count = 0;
            	function createCart(){
            		//For future use
            	}
            </script>
            
            <!-- Update Shopping Cart -->
            <script>
            	function updateCart(){
            		count + 1;
            		document.getElementById("shoppingBadge").innerHTML = count;
            	}
            </script>
            
            <!-- This is Login/Register modal -->
            <div class="modal fade" id="loginregisterModal" tabindex="-1" role="dialog" aria-labelledby="loginregisterModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;">
                            <h5 class="modal-title" id="loginregisterModalLabel">Login/Register</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body" style="background-color:#808088;">
                            <div class="container">
                                <div class="row">
                                    <div class="col-6">
                                        <form action="controllers/loginHandler.php" method="POST">
                                            <input type="text" name="username" placeholder="Username" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"><br><br>
                                            <input type="password" name="password" placeholder="Password" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"><br><br>
                                            <input type="submit" name="Login" value="Login" class="btn btn-primary"style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;">
                                        </form>
                                    </div>
                                    <div class="col-6">
                                        <form action="controllers/registerHandler.php" method="POST">
                                            <input type="text" name="username" placeholder="Username" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"><br><br>
                                            <input type="text" name="password" placeholder="Password" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"><br><br>
                                            <input type="text" name="firstname" placeholder="First name" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"><br><br>
                                            <input type="text" name="lastname" placeholder="Last name" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"><br><br>
                                            <input type="text" name="email" placeholder="Email" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;"><br><br>
                                            <input type="submit" name="Register" value="Register" class="btn btn-primary"style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;">
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal"style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;">Close</button>
                        </div>
                    </div>
                </div>
            </div>                
                        