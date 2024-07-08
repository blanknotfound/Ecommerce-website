<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/index.css" />
    <title>JHAMS | Login</title>

</head>
<body>
<nav class="navbar">
    <div class="logo">Brand</div>
    <ul>
        <li><a href="home.jsp" class="home">Home</a></li>
        <li><a  href="product.jsp" class="product">Products</a></li>
        <li><a  href="services.jsp" class="services">Services</a></li>
        <li><a  href="login.jsp" class="login">Log In</a></li>
        <li><a  href="register.jsp" class="register">Register</a></li>
    </ul>
</nav>
<form action="<%=request.getContextPath()%>/register" method="post">


</form>

</body>
</html>