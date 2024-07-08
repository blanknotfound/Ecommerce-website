package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Base64;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductDetails;
import service.ProductDAO;

/**
 * Servlet implementation class AdminPanel
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/product" })
public class productcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public productcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			ProductDAO dbo=new ProductDAO();
			List<ProductDetails> listOfImage;
			listOfImage = dbo.getAllProduct();
			for (ProductDetails pd : listOfImage) {
				 
				 String base64ImageData = Base64.getEncoder().encodeToString(pd.getImage_data());
				    pd.setBase64ImageData(base64ImageData);
			}
			
			request.setAttribute("productlist", listOfImage);
		request.getRequestDispatcher("/WEB-INF/view/product.jsp").forward(request, response);
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	

}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
