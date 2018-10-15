<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<!-- Version 1 -->

                                <a href="#" style="color:#0ABDC6;">Store Front</a>
                                <a href="#" style="color:#0ABDC6;">Wishlist</a> <!--Might wanna replace with badge, go to layoutit -->
                                <a href="#" style="color:#0ABDC6;">Shopping Cart</a>
                        <form class="form-inline">
                            <input type="text" style="color:#0ABDC6;border-color:#0ABDC6;background-color:#091833;">
                            <button type="submit" style="color:#0ABDC6;border-color:#0ABDC6;background-color:#091833;">
                                Search
                            </button>
                        </form>   
                        <!--                     
                        <button type="button" style="color:#0ABDC6;border-color:#0ABDC6;background-color:#091833;">
                            Login/Register
                        </button>
                         -->
                        
<!-- Version 2 
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
                <div class="row" style="background-color:#404850;">                	
                    <nav>
                    	<div class="col-lg-4">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="#" style="color:#F0C060;">Store Front</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#" style="color:#F0C060;">Wishlist</a> <!--Might wanna replace with badge, go to layoutit
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#" style="color:#F0C060;">Shopping Cart</a>
                            </li>
                        </ul>
                        </div>
                        <div class="col-lg-4">
                        <form class="form-inline">
                            <input class="form-control mr-sm-2" type="text" style="color:#F0C060;border-color:#F0C060;background-color:#404850;">
                            <button class="btn btn-primary my-2 my-sm-0" type="submit" style="color:#F0C060;border-color:#F0C060;background-color:#404850;">
                                Search
                            </button>
                        </form>
                        </div>
                        <div class="col-lg-4">
                        <button type="button" class="btn btn-warning" style="color:#F0C060;border-color:#F0C060;background-color:#404850;" data-toggle="modal" data-target="#exampleModal">
                            Login/Register
                        </button>
                        </div>
                    </nav>
                </div>
			</div>
		</div>
	</div>
	<!-- Fancy Drop down for the login 
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header" style="color:#F0C060;border-color:#F0C060;background-color:#404850;">
                    <h5 class="modal-title" id="exampleModalLabel">Login/Register</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body" style="background-color:#808088;">
                    <div class="container">
                        <div class="row">
                            <div class="col-6">
                                <form action="controllers/loginHandler.php" method="POST">
                                    <input type="text" name="username" placeholder="Username" style="color:#F0C060;border-color:#F0C060;background-color:#404850;"><br><br>
                                    <input type="text" name="password" placeholder="Password" style="color:#F0C060;border-color:#F0C060;background-color:#404850;"><br><br>
                                    <input type="submit" name="Login" value="Login" class="btn btn-primary"style="color:#F0C060;border-color:#F0C060;background-color:#404850;">
                                </form>
                            </div>
                            <div class="col-6">
                                <form action="controllers/registerHandler.php" method="POST">
                                    <input type="text" name="username" placeholder="Username" style="color:#F0C060;border-color:#F0C060;background-color:#404850;"><br><br>
                                    <input type="text" name="password" placeholder="Password" style="color:#F0C060;border-color:#F0C060;background-color:#404850;"><br><br>
                                    <input type="text" name="firstname" placeholder="First name" style="color:#F0C060;border-color:#F0C060;background-color:#404850;"><br><br>
                                    <input type="text" name="lastname" placeholder="Last name" style="color:#F0C060;border-color:#F0C060;background-color:#404850;"><br><br>
                                    <input type="text" name="email" placeholder="Email" style="color:#F0C060;border-color:#F0C060;background-color:#404850;"><br><br>
                                    <input type="submit" name="Register" value="Register" class="btn btn-primary"style="color:#F0C060;border-color:#F0C060;background-color:#404850;">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer" style="color:#F0C060;border-color:#F0C060;background-color:#404850;">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"style="color:#F0C060;border-color:#F0C060;background-color:#404850;">Close</button>
                </div>
            </div>
        </div>
    </div>
-->        
                        
                        