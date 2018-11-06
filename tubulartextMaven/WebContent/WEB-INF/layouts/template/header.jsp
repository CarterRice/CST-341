<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    		<nav class="navbar navbar-inverse" style="background-color:#2B5A88;">
                <div class="container-fluid" style="background-color:#2B5A88;">
                    <div class="navbar-header">
                        <a class="navbar-brand" style="color:#B0BCBA; padding-left: 20px; padding-top:16px;" href="#">Store Front</a>
                    </div>
                    <!--<div class="navbar-header">
                    <a class="navbar-brand" style="color:#B0BCBA; padding-left: 20px; padding-top:16px;" href="#">Shopping Cart</a>
                    </div>
                    <div class="navbar-header">
                    <a class="navbar-brand" style="color:#B0BCBA; padding-left: 20px; padding-top:16px;" href="#">Wish List</a>
                    </div>-->
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" style="color:#B0BCBA; padding-left: 20px; font-size: larger;" href="#">Admin</a>
                            <ul class="dropdown-menu">                            	
                                <li><a data-toggle="modal" data-target="#addnewModal" href="../../product/add">Add New</a></li>
                                <li><a data-toggle="modal" data-target="#updateModal" href="#">Update</a></li>
                                <li><a data-toggle="modal" data-target="#deleteModal" href="#">Delete</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-form navbar-left" action="controllers/searchHandler.php">
                        <div class="form-group">
                            <input style=" background-color:#808088;color:#B0BCBA; padding-left: 20px;" type="text" class="form-control">
                        </div>
                        <button style="background-color:#808088; color:#B0BCBA; padding-left: 20px; font-size: larger;" type="submit" class="btn btn-default">Search</button>
                    </form><!--
                    <ul class="nav navbar-nav navbar-right">
                        <li><a style="color:#B0BCBA; padding-left: 20px; font-size: larger;" data-toggle="modal" data-target="#loginregisterModal" href="#"><span style="color:#B0BCBA; padding-left: 20px;" class="glyphicon glyphicon-log-in"></span> Login/Register</a></li>
                    </ul> -->
                </div>
            </nav>
            
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

            <!-- This is Add New modal -->
            <div class="modal fade" id="addnewModal" tabindex="-1" role="dialog" aria-labelledby="addnewModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;">
                            <h5 class="modal-title" id="addnewModalLabel">Add New</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body" style="background-color:#808088;">
                            <div class="container">
                                <div class="row">
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal"style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;">Close</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- This is Update modal -->
            <div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;">
                            <h5 class="modal-title" id="updateModalLabel">Update</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body" style="background-color:#808088;">
                            <div class="container">
                                <div class="row">
                                    <table class="table">
                                        <tr>
                                            <th>ID</th><th>Name</th><th>Description</th><th>Price</th><th>Image</th><th>Text File</th>
                                        </tr>
                                        <tr>
                                            <td>1</td><td>Mock</td><td>Mock</td><td>$9.99</td><td>141D2D3D5008EB6425.png</td><td>funFact.txt</td><td><form action="controllers/updateProduct.php" method="POST"><input name="mock" type="hidden" value="1"/><input name="Submit" type="submit" value="update"/></form></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal"style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;">Close</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- This is Delete modal -->
            <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;">
                            <h5 class="modal-title" id="deleteModalLabel">Login/Register</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body" style="background-color:#808088;">
                            <div class="container">
                                <div class="row">
                                    <table class="table">
                                        <tr>
                                            <th>ID</th><th>Name</th><th>Description</th><th>Price</th><th>Image</th><th>Text File</th>
                                        </tr>
                                        <tr>
                                            <td>1</td><td>Mock</td><td>Mock</td><td>$9.99</td><td>141D2D3D5008EB6425.png</td><td>funFact.txt</td><td><form action="controllers/deleteProduct.php" method="POST"><input name="mock" type="hidden" value="1"/><input name="Submit" type="submit" value="delete"/></form></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer" style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal"style="color:#B0BCBA;border-color:#B0BCBA;background-color:#2B5A88;">Close</button>
                        </div>
                    </div>
                </div>
            </div>

<!--
<nav class="navbar navbar-inverse" style="background-color:#2B5A88;">
                <div class="container-fluid" style="background-color:#2B5A88;">
                    <div class="navbar-header">
                        <a class="navbar-brand" style="color:#B0BCBA; padding-left: 20px;" href="#">Store Front</a>
                    </div>
                    <div class="navbar-header">
                    <a class="navbar-brand" style="color:#B0BCBA; padding-left: 20px;" href="#">Shopping Cart</a>
                    </div>
                    <div class="navbar-header">
                    <a class="navbar-brand" style="color:#B0BCBA; padding-left: 20px;" href="#">Wish List</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" style="color:#B0BCBA; padding-left: 20px;" href="#">Admin</a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Add New</a></li>
                                <li><a href="#">Update</a></li>
                                <li><a href="#">Delete</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-form navbar-left" action="controllers/searchHandler.php">
                        <div class="form-group">
                            <input style=" background-color:#808088;color:#B0BCBA; padding-left: 20px;" type="text" class="form-control">
                        </div>
                        <button style="background-color:#808088; color:#B0BCBA; padding-left: 20px;" type="submit" class="btn btn-default">Search</button>
                    </form>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a style="color:#B0BCBA; padding-left: 20px;" href="#"><span style="color:#B0BCBA; padding-left: 20px;" class="glyphicon glyphicon-log-in"></span> Login/Register</a></li>
                    </ul>
                </div>
            </nav>       
     -->                    
                        