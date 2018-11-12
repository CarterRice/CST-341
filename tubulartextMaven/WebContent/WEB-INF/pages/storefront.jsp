<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<script>
	function product(name, description, price, imageFilePath, textFilePath)
	{
		this.name = name;
		this.description = description;
		this.price = price;
		this.imageFilePath = imageFilePath;
		this.textFilePath = textFilePath;
	}
	
	var products = [];
	//products.push(new Product()) for loop to push all the products in the data base to this array.
	
	function getProducts(){
		
		<%@ ProductDataService.findAll %>
		
	}
</script>

    <h2>Welcome to the Store Front</h2>
	<table>
	
		
				
	</table>
	
	<br/>			