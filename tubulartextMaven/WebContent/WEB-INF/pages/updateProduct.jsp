<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

    <h2>Update a Product</h2>
	<div class="container">
		<div class="row">
			<c:forEach var="product" items="${products}">
				<div class="col-md-6" style="background-color:#B0BCBA; border:solid 1px; border-color: black; border-radius: 5px; margin: 0px auto; width:360px;">
		    		<img src="C:/CST341/tubulartextMaven/WebContent/WEB-INF/uploadedFiles/imageFiles/320x200.png" style="padding-top:20px; width:320px;height:200px;" />
		    			<div style="display: block;">
			        	<h3 style="color:#2B5A88;">
			        	    ${product.name}
						</h3>
						
						<p style="color:#808088;">
							${product.description}
						</p>
						
						<h5 style="color:#2B5A88;">
							${product.price }
						</h5>
						</div>					
						<div class="row" style="margin-bottom:20px;">
							<div class="col-md-6">
								<a href="/tubulartextMaven/product/update/${product.id}"><button type="button" class="btn" style="color:#2B5A88;border-color:#2B5A88;background-color:#B0BCBA;" formaction="textFiles/computerJoke.txt">
									Update
								</button></a>
							</div>											
							<div class="col-md-6">
								<a href="/tubulartextMaven/product/delete/${product.id}"><button type="button" class="btn" style="color:#808088;border-color:#808088;background-color:#2B5A88;" formaction="textFiles/computerJoke.txt">
									Delete
								</button></a>
							</div>
						</div>
					</div>                  		   		
			</c:forEach>
		</div>
	</div>		
	
	<a href="add">Back</a>