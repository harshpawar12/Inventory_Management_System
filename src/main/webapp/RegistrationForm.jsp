<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register for Inventory Management System</title>
    <link rel="stylesheet" href="/css/Register.css">
</head>
<body>
    <div class="container">
        <form class="registration" action="/register" method="post">
            <h2>Register for Inventory Management System</h2>
            
            <label for="fullName">Full Name</label>
            <input type="text"  name="name" placeholder="Enter your Name" required>

            <label for="username">Username</label>
            <input type="text"  name="username" placeholder="Enter your username" required>

            <label for="email">Email Address</label>
            <input type="email"  name="email" placeholder="Enter your email_ID" required>

            <label for="phone">Phone Number</label>
            <input type="tel"  name="phone" placeholder="Enter your phoneno" required>

            <label for="password">Password</label>
            <input type="password"  name="password" placeholder="Enter your password" required>

            <button type="submit">Register</button><br><button><a href="login.jsp">Login</a></button>
        </form>
    </div>
</body>
</html>
