<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

    <h2>Welcome to the Store Front</h2>
	<table>
	
		<!-- <tr>
			<th><label>New Added Product!</label></th>
		</tr> -->		
	</table>
	<div class="container">
		<div class="row">
			<c:forEach var="product" items="${products}">
				<div class="col-md-6" style="background-color:#B0BCBA; border:solid 1px; border-color: black; border-radius: 5px; margin: 0px auto; width:360px;">
		    		<img alt="" src="C:\CST341\tubulartextMaven\WebContent\uploadedFiles\imageFiles\95edd9f8545a633e9e9b92e9f6681e61.png" style="width:320px;height:200px;" />
		        	<h3 style="color:#2B5A88;">
		        	    ${product.name}
					</h3>
					<p style="color:#808088;">
						${product.description}
					</p>
					<h5 style="color:#2B5A88;">
						${product.price }
					</h5>
					<div class="row">
						<div class="col-md-6">
							<button type="button" class="btn btn-primary btn-block" style="color:#2B5A88;border-color:#2B5A88;background-color:#B0BCBA;" formaction="textFiles/computerJoke.txt">
								Add to Cart
							</button>
						</div>
						<div class="col-md-6">
							<button type="button" class="btn btn-outline-secondary btn-block" style="color:#808088;border-color:#808088;background-color:#2B5A88;" formaction="textFiles/computerJoke.txt">
								Add to Wishlist
							</button>
						</div>
					</div>                  
		   		</div>
			</c:forEach>
		</div>
	</div>		
	
	<a href="add">Back</a>