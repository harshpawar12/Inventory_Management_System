<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="/css/pro.css">
 <%@ include file="header.jsp" %>
</head>
<style>
h2 {
	text-align: center;
	font-family: inherit;
	
}
</style>
<body>
    <div class="form-container">
        <h2>ADD Products</h2>
        
        <form action="/pro" method="post" enctype="multipart/form-data">
            <label for="productName">Product Name:</label>
            <input type="text" name="product_name" required>

            <label for="category">Category:</label>
            <select id="category" name="category" required>
                <option value="">Select a category</option>
                <option value="electronics">Electronics</option>
                <option value="furniture">Furniture</option>
                <option value="clothing">Clothing</option>
                <option value="books">Books</option>
                <!-- Add more categories as needed -->
            </select>
            
             <label for="category">InStocks:</label>
            <select id="category" name="instock" required>
                <option value="">Select a category</option>
                <option value="Available">Available</option>
                <option value="outOfStocks">outOfStocks</option>
               
            </select>
             
            <label for="sellingPrice">Buying price:</label>
            <input type="number"  name="buyingprice" step="0.01" required>

            <label for="costPrice">Selling Price:</label>
            <input type="number"  name="sellingprice" step="0.01" required>

            <label for="date">product Date:</label>
            <input type="date"  name="date" required>
            
             <label for="productImage">Product Image:</label>
            <input type="file" name="image" accept="image/*">

            <input type="submit" value="Submit">
        </form>
    </div>
         <%@ include file="footer.jsp" %>
    
</body>
</html>