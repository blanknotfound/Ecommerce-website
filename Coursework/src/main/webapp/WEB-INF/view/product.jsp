<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page
	import="model.*, service.*,utils.*,java.util.*,javax.servlet.ServletOutputStream,java.io.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/Css/product
	.css" />
	<title>JHAMS | product</title>
</head>
<body>
<nav class="navbar">
    <div class="logo">Brand</div>
    <ul>
        <li><a href="<%=request.getContextPath()%>/home" class="home">Home</a></li>
        <li><a  href="<%=request.getContextPath()%>/product">Products</a></li>
        <li><a  href="<%=request.getContextPath()%>/services">Services</a></li>
        <li><a  href="<%=request.getContextPath()%>/login">Log In</a></li>
        <li><a  href="<%=request.getContextPath()%>/register">Register</a></li>
    </ul>
</nav>
    <div class="main">
    <div class="cat">
        <div class="cat-box-main">
					sams<br>
					sams<br>
					sams<br>
        </div>
    </div>
        <div class="row">
        <%
			ProductDAO productdao= new ProductDAO();
			List<ProductDetails> prod = productdao.getAllProduct();
			for(ProductDetails pro : prod) {
				String base64ImageData = Base64.getEncoder().encodeToString(pro.getImage_data());
			    pro.setBase64ImageData(base64ImageData);
		%>
            <div class="col">
            <c:forEach var="product" items="${productsList}">
				<img src="data:image/jpeg;base64,<%= base64ImageData %>" height="155px" width="250px">
						</c:forEach>
					    <h1> <%= pro.getName() %> </h1>
					    <p> <%= pro.getDescription() %> <br></p>
					    <%= pro.getQuantity() %> <br>
					    <div class="flex"><button>Add to cart</button>
			                <p class="price">
			                    Price: $ <%= pro.getPrice() %>
			                </p>
			            </div>
			 </div>
        	<%
			}
			%>
  		</div>
	</div>
</body>
</html>