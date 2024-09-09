<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
<link rel="stylesheet" href="/css/product.css"> 
<style>

body {
	
    margin: 0;
    font-family: Arial, sans-serif;
    display: flex;
    flex-direction: column;
    min-height: 100vh;
    background: grey;
}


.nav-info {
    margin: 20px auto;
    padding: 10px;
    background: #495057;
    border-radius: 8px;
    text-align: center;
    max-width: 600px; /* Limit the width */
    position: relative; /* Ensure it stacks above the content */
    z-index: 1; /* Ensure it appears above the nav */
}

.nav-info h6 {
    color: white;
    font-size: 16px;
    margin-bottom: 40px;
    margin-left: 50px;
    margin-right: 50px;
    align-items: left;
    align-content: left;
   
    
}

.nav-info .btn-add {
    background-color: #28a745;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
    text-transform: uppercase;
    transition: background 0.3s, transform 0.3s;
}

.nav-info .btn-add:hover {
    background-color: #218838;
    transform: translateY(-2px);
}


nav {
    background: #343a40;
    color: white;
    height: 100vh; /* Full viewport height */
    width: 250px; /* Fixed width for sidebar */
    padding: 20px;
    box-shadow: 2px 0 4px rgba(0, 0, 0, 0.1);
    position: fixed; /* Keep the nav fixed on the side */
    top: 0;
    left: 0;
    bottom: 0;
}

nav ul {
    list-style-type: none;
    padding: 0;
    margin: 0;
}

nav ul li {
    margin: 15px 0;
}

nav ul li a {
    color: white;
    text-decoration: none;
    font-weight: 500;
    padding: 10px;
    display: block;
    border-radius: 5px;
    transition: background 0.3s, transform 0.3s;
}

nav ul li a:hover {
    background: #495057;
    transform: translateX(5px);
}


.content {
    margin-left: 250px; /* Space for the fixed nav */
    padding: 20px;
    flex: 1;
}
div {
	text-align: center;
	text-decoration: blink;
	

}
</style>
</head>
<body>
    <div class="nav-info">
        <h6>Click below to add a new product:</h6>
        <button class="btn-add" onclick="window.location.href='products.jsp'">Add Product</button>
    </div>
    
  
    
    
    <nav>
        <ul>
            <li><a href="Dashboard.jsp">Dashboard</a></li>
            <li><a href="Add.jsp">Products</a></li>
            <li><a href="#">Orders</a></li>
            <li><a href="#">Suppliers</a></li>
            <li><a href="#">Reports</a></li>
        </ul>
    </nav>
    <div class="content">
        <h2>the Added Informaition</h2>
        <table>
        <tr>
        <th>hii</th>
        <tr>
        </table>
    </div>
     
</body>
</html>
