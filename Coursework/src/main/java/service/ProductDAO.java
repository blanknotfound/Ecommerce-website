package service;

import java.sql.Blob;
import java.sql.Connection;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import model.ProductDetails;
import utils.DatabaseConnection;

public class ProductDAO {
	
	private Connection conn;
	private PreparedStatement statement;
	private ResultSet resultset;
	private boolean isSuccess;
	private static final String inserting_query="insert into products(name,description,price,quantity,categoryId,image_data,image_name) values(?,?,?,?,?,?,?)";
	
	public ProductDAO() {
		conn=DatabaseConnection.getDbConnection();
		if(conn ==null)
		{
			System.err.println("Error: Database connection is null");
		}
		else
		{
			System.out.println("Database connection is established successfully");
		}
		
	}
	
	//It checks whether the products table has data and count rows if so
	/*If check(product) returns false, the setproduct(product) method is called, 
	 * which inserts the ProductDetails object's data into the table.*/
	
	public boolean saveProduct(ProductDetails product)
	{
		
		try 
		{
			statement=conn.prepareStatement("select count(*) from products");
			resultset = statement.executeQuery();
			
			if(resultset.next())
			{
				if(check(product))
				{
					isSuccess=false;
				}
				else 
				{
					int row=setproduct(product);
					if(row>0)
					{
						isSuccess=true;
					}else
					{
						isSuccess=false;
					}
				}
			}
			else
			{
				int row = setproduct(product);
				if (row > 0) 
				{
				isSuccess = true;
				}
			}
		}
			catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return isSuccess;
}

	public int setproduct(ProductDetails product) throws SQLException {
		// TODO Auto-generated method stub
			statement=conn.prepareStatement(inserting_query);
			statement.setString(1, product.getName());
			statement.setString(2, product.getDescription());
			statement.setInt(3, product.getPrice());
			statement.setInt(4, product.getQuantity());
			statement.setInt(5, product.getCategoryId());
			Blob blob = conn.createBlob();
		    blob.setBytes(6, product.getImage_data());
		    statement.setBlob(6, blob);
			statement.setString(7, product.getImage_name());
			System.out.println(product.getBase64ImageData());
			
			int row=statement.executeUpdate();
		return row;
	}
	private boolean check(ProductDetails product) {
		// TODO Auto-generated method stub
		
		return false;
	}
	
	public List<ProductDetails> getAllProduct() throws SQLException
	{
		statement=conn.prepareStatement("select * from products");
		resultset=statement.executeQuery();
		List<ProductDetails> productlist=new ArrayList<ProductDetails>();
		
		while(resultset.next())
		{
			//int id=resultset.getInt("productID");
			String name=resultset.getString("name");
			String description=resultset.getString("description");
			int price =resultset.getInt("price");
			int quantity=resultset.getInt("quantity");
			int categoryId=resultset.getInt("categoryId");
			
			ProductDetails product=new ProductDetails();
			product.setName(name);
			product.setDescription(description);
			product.setPrice(price);
			product.setQuantity(quantity);
			product.setCategoryId(categoryId);
			product.setImage_data(resultset.getBlob("image_data").getBytes(1, (int)resultset.getBlob("image_data").length()));
			product.setImage_name(resultset.getString("image_name"));
		    
			productlist.add(product);
		}
		resultset.close();
        statement.close();
        conn.close();
		return productlist;
	}
}

