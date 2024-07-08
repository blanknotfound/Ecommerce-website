package model;

import java.io.Serializable;

public class ProductDetails implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private int productID;
	public int getproudctID() {
		return productID;
	}

	public void setproductID(int productID) {
		this.productID = productID;
	}
	
	private String name;
	private String description;
	private int price;
	private int quantity;
	private int categoryId;
	private byte[] image_data;
	private String image_name;
	private String base64ImageData;
	private String catname;
	
	
	
	
	public byte[] getImage_data() {
		return image_data;
	}

	public void setImage_data(byte[] image_data) {
		this.image_data = image_data;
	}

	public String getImage_name() {
		return image_name;
	}

	public void setImage_name(String image_name) {
		this.image_name = image_name;
	}

	public String getBase64ImageData() {
		return base64ImageData;
	}

	public void setBase64ImageData(String base64ImageData) {
		this.base64ImageData = base64ImageData;
	}

	public ProductDetails() {
		
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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	
}
