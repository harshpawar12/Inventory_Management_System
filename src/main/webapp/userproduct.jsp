<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Our Products</title>
    <link rel="stylesheet" href="/css/user.css">
    <%@ include file="userHeader.jsp" %>
</head>
<style>
body, h2, p, a, button {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Arial', sans-serif;
}

body {
    background-color: #f4f4f4;
    color: #333;
}

.container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    padding: 20px;
}

.product-card {
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    margin: 15px;
    width: 300px;
    overflow: hidden;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.product-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
}

.product-image img {
    width: 100%;
    height: auto;
    border-bottom: 1px solid #eaeaea;
}

.product-info {
    padding: 15px;
    text-align: center;
}

.product-info h2 {
    font-size: 20px;
    color: #333;
    margin-bottom: 10px;
}

.product-info p {
    font-size: 16px;
    color: #777;
    margin-bottom: 10px;
}

.product-actions {
    display: flex;
    justify-content: space-around; 
    align-items: center;
    padding: 15px;
    border-top: 1px solid #eaeaea;
}

.product-actions .btn {
    background-color: #28a745;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    text-align: center;
    text-decoration: none;
    flex: 1; 
    margin: 0 10px; 
}

.product-actions .btn:hover {
    background-color: #218838;
}

.product-actions .btn a {
    color: #fff;
    text-decoration: none;
}

input[type="number"] {
    width: 100%;
    padding: 8px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-size: 16px;
}


@media (max-width: 768px) {
    .container {
        flex-direction: column;
        align-items: center;
    }

    .product-card {
        width: 80%;
    }
}

@media (max-width: 480px) {
    .product-info h2 {
        font-size: 18px;
    }

    .product-info p {
        font-size: 14px;
    }

    .product-actions {
        flex-direction: column;
    }

    .product-actions .btn {
        margin: 10px 0;
        width: 100%;
    }
}
h5 {
	color: red;
	font-family: 'Nunito', sans-serif;
	
}

</style>
<body>
    <h4>Our Products</h4>
    <br><br>
    <div class="container">
        <c:forEach var="pro" items="${data}">
            <div class="product-card">
            	<h5>our Products</h5>
                <div class="product-image">
                    <img src="images/${pro.image}" width="40" height="40" style="border-radius: 40%">
                </div>
                <div class="product-info">
                    <h2>${pro.product_name}</h2>
                    <h2><p><strong>Category:</strong> ${pro.category}</p></h2>
                    <h2><p><strong>Stocks:</strong> ${pro.instock}</p></h2>
                    <h2><p><strong>Purchase Price:</strong> ${pro.buyingprice}</p></h2>
                    
                    <form action="/cardAdd" method="post">
                        <input type="hidden" name="username" value="${sessionScope.username}">
                        <input type="hidden" name="product_name" value="${pro.product_name}">
                        <input type="hidden" name="sellingprice" value="${pro.buyingprice}">
                        <input type="hidden" name="category" value="${pro.category}">
                        <label><h2>Select Quantity:</h2></label>
                        <h2><p>    <input type="number" name="qnt" min="1" max="5">
</p></h2>
                        
                        <div class="product-actions">
                            <button class="btn cart-btn" type="submit">Add To Cart</button>
                        </div>
                    </form>
                </div>
                <div class="product-actions">
                    <button class="btn cart-btn"><a href="order.jsp">Shop Now</a></button>
                </div>
            </div>
        </c:forEach>
    </div>
    <br><br><br><br><br><br>
    <%@ include file="footer.jsp" %>
</body>
</html>
