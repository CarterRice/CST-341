package com.gcu.model;

public class product {

	private String name;
	private String description;
	private String price;
	private String imageFilePath;
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
