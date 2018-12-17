package com.gcu.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class product {

	private int id;
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
	private byte[] imageFilePath;
	@NotNull(message="A .txt is required")
	private byte[] textFilePath;
	
	private String base64Encoded;
	
	public product() {
		this.id = 0;
		this.name = "";
		this.description = "";
		this.price = "";
		this.imageFilePath = null;
		this.textFilePath = null;
		this.base64Encoded = "";
	}
	
	public product(int Id, String Name, String Description, String Price, byte[] ImageFilePath, byte[] TextFilePath, String base64Encoded) {
		this.id = Id;
		this.name = Name;
		this.description = Description;
		this.price = Price;
		this.imageFilePath = ImageFilePath;
		this.textFilePath = TextFilePath;
		this.base64Encoded = base64Encoded;
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
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

	public byte[] getImageFilePath() {
		return imageFilePath;
	}

	public void setImageFilePath(byte[] imageFilePath) {
		this.imageFilePath = imageFilePath;
	}

	public byte[] getTextFilePath() {
		return textFilePath;
	}

	public void setTextFilePath(byte[] textFilePath) {
		this.textFilePath = textFilePath;
	}

	public String getBase64Encoded() {
		return base64Encoded;
	}

	public void setBase64Encoded(String base64Encoded) {
		this.base64Encoded = base64Encoded;
	}
}
