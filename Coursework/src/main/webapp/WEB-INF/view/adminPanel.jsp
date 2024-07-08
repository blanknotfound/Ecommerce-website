<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.util.UUID" %>
    <%@ taglib prefix= "c" uri= "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/index.css" />
    <title>JHAMS | Admin</title>

</head>
<body>

<nav class="navbar">
    <div class="logo">Brand</div>
    <ul>
        <li><a href="home.jsp" class="home">Home</a></li>
        <li><a  href="product.jsp" class="product">Products</a></li>
        <li><a  href="services.jsp" class="services">Services</a></li>
        <li><a  href="login.jsp" class="loginn">Log In</a></li>
        <li><a  href="register.jsp" class="register">Register</a></li>
    </ul>
</nav>

<div class="admin-title">
    <h2>Welcome to Admin Pannel Page</h2>
</div>


<div class="add-prod">
	<a href="<%=request.getContextPath()%>/addproduct">Add Product</a>
	
</div>
<section>
	<table border="1">
		<thead>
			<tr>
				<th>ProductName</th>
				<th>Description</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>CategoryID</th>
				<th>Quantity</th>
				<th>ImageName</th>
			</tr>
		</thead>
		
		<tbody>
		<c:forEach var="product" items="${productlist }">
			<tr>
				<td><c:out value="${product.name}"></c:out></td>
				<td><c:out value="${product.description}"></c:out></td>
				<td><c:out value="${product.price}"></c:out></td>
				<td><c:out value="${product.quantity}"></c:out></td>
				<td><c:out value="${product.categoryId}"></c:out></td>
				<td><c:out value="${product.image_name}"></c:out></td>
				
				<td><form action="<%=request.getContextPath() %>/" method="post">
					<input type="hidden" name="id" value="${product.productID}">
					<button type="submit">Edit</button>
					</form>
				</td>
				
				<td>
					<form action="<%=request.getContextPath()%>/" method="post">
						<input type="hidden" name="id" value="${product.productID }">
						<button type="submit">Delete</button>
					</form>
				</td>
			
			</tr>
		</c:forEach>
		</tbody>
		
	</table>
</section>
</body>
</html>
	
	
	