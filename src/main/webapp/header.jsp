<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<title>Navigation Bar</title>
    <style>
        .navbar {
            background-color: #333;
            overflow: hidden;
            padding: 10px;
        }
        .navbar a {
            float: left;
            display: block;
            color: #f2f2f2;
            text-align: center;
            padding: 10px 15px;
            text-decoration: none;
        }
        .navbar a:hover {
            background-color: #ddd;
            color: red;
        }
        .navbar .logo {
            float: left;
            display: block;
            padding: 5px 15px;
        }
        .navbar img {
            height: 30px; 
        }
        .navbar .logout {
            float: right;
        }
    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <div class="navbar">
        <a href="#home" class="logo"><img src="https://th.bing.com/th/id/R.25de093eabccb01d3a66c2fdcff325b2?rik=e3E9H9wu3r1gtA&riu=http%3a%2f%2fstatic1.squarespace.com%2fstatic%2f52f00f2ae4b0877bde88b282%2ft%2f63449245e803725510c1123c%2f1665438277630%2f0%2b-%2bChristopher%2bFarr%2bLogotype%2bInventory.png%3fformat%3d1500w&ehk=jiF437JFGnAtYcqFBvW7ikOg%2fjR3ytsb0oF%2bI8pGrPQ%3d&risl=&pid=ImgRaw&r=0" alt="Logo"></a> <!-- Add your logo image source here -->
        <a href="/home">Home</a>
        <a href="product.jsp">Products</a>
        <a href="/AdminOrder">orders</a>
        <a href="/mess">Message</a>
        <a  href="/complent">complaits</a>
        <a href="login.jsp" class="logout">Logout</a>
    </div>
</body>
</html>