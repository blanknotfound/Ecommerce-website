<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JHAMS | ADDITION OF PRODUCT</title>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Css/addproduct.css"/>
</head>
<body>
	<div class="">
		<h1>ADD Product</h1>
	<p style="color:red">${error1}</p> 
		<form action="<%=request.getContextPath() %>/addproduct" method="post" enctype="multipart/form-data">
			<div class="row">
				<div class="col">
					<label for="name">Product Name:</label> <input type="text"
						id="name" name="name" required>
				</div>
				<div class="col">
					<label for="description">Description:</label> <input type="text"
						id="description" name="description" required>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<label for="price">Price:</label> <input type="text"
						id="price" name="price" required>
				</div>
				<div class="col">
					<label for="quantity">Quantity:</label> <input type="text"
						id="quantity" name="quantity" required>
				</div>

			</div>
			<div class="row">
				<div class="col">
					<label for="categoryId">Category:</label> 
					<select id="categoryId"
						name="categoryId" required>
						<option value="1">Graphic Card</option>
						<option value="2">Processor</option>
						<option value="3">Cabinet</option>
						<option value="4">Keyboard</option>
						
					</select>
					
					<input type="file" name="image" accept="image/*" required>
        			
				</div>
			</div>
			<button type="submit">upload</button>
		</form>
	</div>

</body>
</html>