<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="/css/login.css">

</head>
<body>
   <div class="container">
        <form class="login" action="/login" method="post">
            <h2>Login to Inventory Management System</h2>
            
            <label for="username">Username</label>
            <input type="text" id="username" name="username" placeholder="Enter your username" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required>

            <button type="submit">Login</button><br> <button><a href="RegistrationForm.jsp">register</a></button>
             
        </form>
    </div>
</body>
</html>