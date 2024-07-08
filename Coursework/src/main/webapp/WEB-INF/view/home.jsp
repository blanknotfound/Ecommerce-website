<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/Css/index.css" />
	<title>JHAMS | Home</title>
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
<div class="image">
	<img alt="hero section" src="./Images/herosection.jpg">
	<div class="image_div">
		<div class="image_text">
			<p>Top-Of-The-Line Parts Ready <br>
				 At Flexible Rates</p>
			<div style="font-size:20px ">
				<p>Your One-Stop Source For<br>
					all PC parts needs </p>
					<br>
					<a href="product.jsp">
         			<!-- shop now button goes here  -->
	         			<button>
	              		shop now
	             		</button>
         			</a>
			</div>
		</div>

	</div>
	
</div>

<div class="section_main">
    <div class="build-prod">
        <h2>Build Products</h2>
    </div>

    <div class="prod-category">
        <div class="category-1">
            <div class="category-img">

            </div>
            <div class="about-category">
                <p><span style="font-size: 22px;
                    color: #0d9b0d;
                    font-family: math;
                    letter-spacing: 1px;">Category Name:</span> Keyboard</p>
                <p class="about-desc"><span style="    font-size: 22px;
                    color: #0d9b0d;
                    font-family: math;
                    letter-spacing: 1.5px;">
                    Description:</span> This is the keyboard category of the products that we have. You may visit
                this category to shop different devices realted to this category</p>
            </div>

            <button class="btn">Shop Now</button>
        </div>
        <div class="category-1 two">
            <div class="category-img-2">
                <img src="./Images/cabinet.jpeg" alt="cabinet image">
            </div>
            <div class="about-category">
                <p><span style="font-size: 22px;
                    color: #0d9b0d;
                    font-family: math;
                    letter-spacing: 1px;">Category Name:</span> Cabinet</p>
                <p class="about-desc"><span style="    font-size: 22px;
                    color: #0d9b0d;
                    font-family: math;
                    letter-spacing: 1.5px;">
                    Description:</span> This is the cabinet category of the products that we have. You may visit
                this category to shop different devices realted to this category</p>
            </div>
            
            <button class="btn">Shop Now</button>
        </div>
        <div class="category-1 three">
            <div class="category-img-3">
                <img src="./Images/processor.jpeg" alt="processor image">
            </div>
            <div class="about-category">
                <p><span style="font-size: 22px;
                    color: #0d9b0d;
                    font-family: math;
                    letter-spacing: 1px;">Category Name:</span> Processor</p>
                <p class="about-desc"><span style="    font-size: 22px;
                    color: #0d9b0d;
                    font-family: math;
                    letter-spacing: 1.5px;">
                    Description:</span> This is the processor category of the products that we have. You may visit
                this category to shop different devices realted to this category</p>
            </div>

            <button class="btn">Shop Now</button>
        </div>
        <div class="category-1 four">
            <div class="category-img-4">
                <img src="./Images/graphics_card.jpeg" alt="graphics card image">
            </div>
            <div class="about-category">
                <p><span style="font-size: 22px;
                    color: #0d9b0d;
                    font-family: math;
                    letter-spacing: 1px;">Category Name:</span> Keyboard</p>
                <p class="about-desc"><span style="font-size: 22px;
                    color: #0d9b0d;
                    font-family: math;
                    letter-spacing: 1.5px;">
                    Description:</span> This is the keyboard category of the products that we have. You may visit
                this category to shop different devices realted to this category</p>
            </div>
            
            <button class="btn">Shop Now</button>
        </div>
    </div>

    <div class="bolgs-section">
        <div class="blog-heading">
            <h2>Blogs</h2>
        </div>

        <div class="blog-cards">
            <div class=" blg build-journey">
                <div class="build-img">
                    <img src="./Images/build_pc.jpeg" alt="builc pc image">
                </div>
                <div class="journey-desc">
                    <p>The journey about our team building this ecommerce website has been remarkable. We went through 
                        many research materials to accomplish this project and eventually we got the success. We presented
                        different ecommerce products related to PC parts according to four categories that is given above.
                    </p>
                </div>
            </div>
            <div class=" blg customer-review">
                <div class="build-img customer">
                    <img src="./Images/customer_reviews.jpeg" alt="customer review image">
                </div>
                <div class="journey-desc customer">
                    <p>Our customers who have ordered the products and who are using the products are giving us very
                        good review in terms of quality of the products that we presented to them. Every product category
                        has its own review by the customers and are happily going through this ecommerce service.
                    </p>
                </div>
            </div>
            </div>
        </div>
    </div>

    <div class="hot-sales-section">
        <div class="sales-heading">
            <p>Hot Sales</p>
        </div>

        <div class="sales-box">
            <div class="sales-card card_one">
                <div class="prod-img">
                    <img src="./Images/product_keyboard.jpeg" alt="keyboard image">
                </div>
                <div class="prod-name">
                    <h2>MILANG K6 Professional Polychromatic RGB Rainbow Backlit Gaming Waterproof Mech Feel Keyboard</h2>
                </div>
                <div class=" prod-name prod-cate">
                    <p><span style = "color: rgba(248, 59, 29, 0.909);
                        font-size: 22px;
                        font-weight: bold;
                        font-family: math;
                        letter-spacing: 1.5px;">Category:</span> Keyboard</p>
                </div>
                <div class="prod-name price">
                    <p><span class="price-head">Price:</span> <span style="font-size: 25px; font-weight: bold;">Rs 718</span> 
                    <strike style="color:rgba(248, 59, 29, 0.909)">Rs 999</strike> <span>-28%</span></p>
                </div>
                <button class="btn">Add to Cart</button>
            </div>
            <div class="sales-card card_two">
                <div class="prod-img">
                    <img src="./Images/product_cabinet.jpeg" alt="keyboard image">
                </div>
                <div class="prod-name">
                    <h2>Big Windmill Gaming PC Cabinet with 4 RGB Color FAN</h2>
                </div>
                <div class=" prod-name prod-cate">
                    <p><span style = "color: #f63838;
                        font-size: 22px;
                        font-weight: bold;
                        font-family: math;
                        letter-spacing: 1.5px;">Category:</span> Cabinet</p>
                </div>
                <div class="prod-name price">
                    <p><span class="price-head">Price:</span> <span style="font-size: 25px; font-weight: bold;">Rs 5499</span> 
                        <strike style="color:rgba(248, 59, 29, 0.909)">Rs 6500</strike> <span>-15%</span></p>
                </div>
                <button class="btn card_two_btn" >Add to Cart</button>
            </div>
            <div class="sales-card card_three">
                <div class="prod-img">
                    <img src="./Images/product_graphics_card.jpeg" alt="keyboard image">
                </div>
                <div class="prod-name">
                    <h2>Biostar NVIDIA GeForce GT610 GPU 2GB Graphic Card</h2>
                </div>
                <div class=" prod-name prod-cate">
                    <p><span style = "color: #f63838;
                        font-size: 22px;
                        font-weight: bold;
                        font-family: math;
                        letter-spacing: 1.5px;">Category:</span> Graphics Card</p>
                </div>
                <div class="prod-name price">
                    <p><span class="price-head">Price:</span> <span style="font-size: 25px; font-weight: bold;">Rs 6220</span> 
                        <strike style="color:rgba(248, 59, 29, 0.909)">Rs 7775</strike> <span>-15%</span></p>
                </div>
                <button class="btn card_two_btn" >Add to Cart</button>
            </div>
        </div>
    </div>

</div>

<footer class="footer_container">
	<div class="footer_copyright">
		<p>
             Copyright 2022 &copy;
             <span style=" cursor: pointer;"><a style="color:white;" href="<%=request.getContextPath()%>/home.jsp">JHAMS</a></span>
             <!-- making it a link to  the same page  -->
              . All Rights Reserved.
        </p>
    </div>

</footer>

</body>
</html>