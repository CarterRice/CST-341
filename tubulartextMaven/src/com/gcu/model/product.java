package com.gcu.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class product {

	@NotNull(message="Name cannot be Null")
	@Size(min=4, max=20, message="Name must be at least 4 characters long and less than 20 characters")
	private String name;
	@NotNull(message="Description cannot be Null")
	@Size(min=4, max=300, message="Description must be at least 4 characters long and less than 300 characters")
	private String description;
	@NotNull(message="Price cannot be Null")
	@Size(min=1, max=10, message="Name must be at least 1 characters long and less than 10 characters")
	private String price;
	@NotNull(message="A .png or .jpg is required")
	private String imageFilePath;
	@NotNull(message="A .txt is required")
	private String textFilePath;
	
	public product() {
		this.name = "";
		this.description = "";
		this.price = "";
		this.imageFilePath = "";
		this.textFilePath = "";
	}
	
	public product(String Name, String Description, String Price, String ImageFilePath, String TextFilePath) {
		this.name = Name;
		this.description = Description;
		this.price = Price;
		this.imageFilePath = ImageFilePath;
		this.textFilePath = TextFilePath;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getImageFilePath() {
		return imageFilePath;
	}

	public void setImageFilePath(String imageFilePath) {
		this.imageFilePath = imageFilePath;
	}

	public String getTextFilePath() {
		return textFilePath;
	}

	public void setTextFilePath(String textFilePath) {
		this.textFilePath = textFilePath;
	}
	
	
	
}
