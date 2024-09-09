<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <%@ include file="header.jsp" %>

</head>
<style>
.form-container {
    margin: 20px auto;
    padding: 15px;
    border: 1px solid #ddd;
    border-radius: 4px;
    max-width: 600px;
}
.form-container label {
    display: block;
    margin-bottom: 6px;
}
.form-container input, .form-container select {
    width: calc(100% - 20px);
    padding: 6px;
    margin-bottom: 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
}
.form-container input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    border: none;
    cursor: pointer;
}
.form-container input[type="submit"]:hover {
    background-color: #45a049;
}
h2 {
	text-align: center;
}

</style>
<body>
    <div class="form-container">
        <h2>Update Here</h2>
        <form action="/updateData" method="post">
            <label for="productName">Product Name:</label>
            <input type="hidden" name="id" value="${isdata.id }" >
            
            <input type="text" name="product_name" value="${isdata.product_name }" required>

            <label for="category">Category:</label>
           <select id="category" name="category" required>
        <option value="">Select a category</option>
        <option value="electronics" ${isdata.category == 'electronics' ? 'selected' : ''}>Electronics</option>
        <option value="furniture" ${isdata.category == 'furniture' ? 'selected' : ''}>Furniture</option>
        <option value="clothing" ${isdata.category == 'clothing' ? 'selected' : ''}>Clothing</option>
        <option value="books" ${isdata.category == 'books' ? 'selected' : ''}>Books</option>
    </select>

    <label for="instock">In Stock:</label>
    <select id="instock" name="instock" required>
        <option value="Available" ${isdata.instock == 'Available' ? 'selected' : ''}>Available</option>
        <option value="outOfStocks" ${isdata.instock == 'outOfStocks' ? 'selected' : ''}>Out of Stocks</option>
    </select>
             
            <label for="sellingPrice">Buying price:</label>
            <input type="number"  name="buyingprice" value="${isdata.buyingprice }" step="0.01" required>

            <label for="costPrice">Selling Price:</label>
            <input type="number"  name="sellingprice" value="${isdata.sellingprice }" step="0.01" required>

            <label for="date">product Date:</label>
            <input type="date"  name="date" value="${isdata.date }" required>
            
             <label for="productImage">Product Image:</label>
            <input type="file" name="image" accept="${isdata.image }">
            

            <input type="submit" value="Submit">
        </form>
    </div>
         <%@ include file="footer.jsp" %>
</body>
</html>