<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
	var productNum = 0;
	var buttonNum = 0;
</script>

    <h2>Welcome to the Store Front</h2>	
	<div class="container">
		<div class="row" style="margin-left:2px;">
			<c:forEach var="product" items="${products}">				
				<div id="newProduct" class="col-xs-6" style="background-color:#B0BCBA; border:solid 1px; border-color: black; border-radius: 5px; margin: 0px auto; width:360px;padding-bottom:20px;margin-left:10px;margin-right:10px; margin-top:10px; margin-bottom:10px;">
		    		<img alt="" src="<c:url value="/WebContent/uploadedFiles/imageFiles/95edd9f8545a633e9e9b92e9f6681e61.png"/>" style="width:320px;height:200px;padding-top:20px;" />
		        	<h3 style="color:#2B5A88; padding-top:20px;">
		        	    ${product.name}
					</h3>
					<p style="color:#808088;">
						${product.description}
					</p>
					<h5 style="color:#2B5A88;">
						${product.price}
					</h5>
					<div class="row">
						<div class="col-md-6">
							<button id="addButton" type="button" onclick="updateCart()" class="btn btn-block" style="color:#2B5A88;border-color:#2B5A88;background-color:#B0BCBA;" formaction="textFiles/computerJoke.txt">
								Add to Cart
							</button>
						</div>
						<div class="col-md-6">
							<button type="button" class="btn btn-block" style="color:#808088;border-color:#808088;background-color:#2B5A88;" formaction="textFiles/computerJoke.txt">
								Add to Wishlist
							</button>
						</div>
					</div>                  
		   		</div>		   		
		   		<!-- Animation for adding a product to the shopping cart -->
		   		<script> 		   		
					$(document).ready(function(){
						var clickString = "#";
						var animateString = "#";												
						
						clickString.concat(buttonNum);
						animateString.concat(productNum);
						
					    $(clickString).click(function(){
					        $(animateString).animate({
					            left: '250px',
					            opacity: '0.5',
					            height: '150px',
					            width: '150px'
					        });
					    });
					});
				</script> 
			</c:forEach>
		</div>
	</div>		
	
	<a href="add">Back</a>