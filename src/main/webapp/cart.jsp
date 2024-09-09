<%@page import="org.hibernate.cache.spi.support.AbstractReadWriteAccess.Item"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<%@ include file="userHeader.jsp" %>
<meta charset="UTF-8">
<title>Your Cart</title>
<style type="text/css">

body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
}


.container {
    width: 80%;
    margin: auto;
    overflow: hidden;
}


table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
    background-color: #ffffff;
}

th, td {
    padding: 12px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

th {
    background-color: #f4f4f4;
    color: #333;
}

tr:nth-child(even) {
    background-color: #f9f9f9;
}

tr:hover {
    background-color: #f1f1f1;
}


button {
    background-color: #4CAF50; 
    border: none;
    color: white;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 5px;
}

button a {
    color: white;
    text-decoration: none;
}

button:hover {
    background-color: #45a049;
}


a {
    text-decoration: none;
    color: #3498db;
}

a:hover {
    text-decoration: underline;
}


form {
    display: inline;
}

input[type="hidden"] {
    display: none;
}
</style>
</head>
<body>
 <h4>Your Cart</h4>
    <table border="1" cellpadding="10">
        <thead>
            <tr>
                <th>Product Name</th>
                <th>Category</th>
                <th>Selling Price</th>
                <th>Quantity</th>
                <th>Total Amt</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="item" items="${card}">
                <tr>
                    <td>${item.product_name}</td>
                    <td>${item.category}</td>
                    <td>${item.sellingprice}</td>
                    <td>${item.qnt}</td>
                    <td>${item.totalamt}</td>
                    <td><a href="/delete?id=${item.id}&username=${item.username}">&#10060;</a></td>
                    
                   
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <br>
    <h3>Total Amt: ${totalAmount}</h3>
    <button><a href="order.jsp">Proceed to Checkout</a></button>
    <br><br>
<a href="/userproduct">Continue Shopping</a>
<br><br><br><br><br><br><br><br><br><br><br><br><br>
	     <%@ include file="footer.jsp" %>

</body>
</html>
