<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inventory Management</title>
<%@ include file="userHeader.jsp" %>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
    }

    .container {
        position: relative;
        text-align: center;
        color: white;
    }

    .container img {
        width: 100%; 
        height: auto; 
        max-width: 1300px;
        max-height: 600px; 
        object-fit: cover;
    }

    .content {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background-color: rgba(0, 0, 0, 0.5);
        padding: 20px;
        border-radius: 10px;
        text-align: center;
        width: 80%; 
        max-width: 600px;
    }

    .content h1 {
        font-size: 3em;
        margin-bottom: 20px;
    }

    .content p {
        font-size: 1.5em;
        margin-bottom: 30px;
    }

    .content .btn {
        padding: 15px 30px;
        font-size: 1.2em;
        color: white;
        background-color: #007BFF;
        border: none;
        border-radius: 5px;
        text-decoration: none;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .content .btn:hover {
        background-color: red;
    }

    @media screen and (max-width: 768px) {
        .content h1 {
            font-size: 2em;
        }

        .content p {
            font-size: 1.2em;
        }

        .content .btn {
            padding: 10px 20px;
            font-size: 1em;
        }

        .container img {
            width: 100%;
            height: auto; 
        }
    }
</style>

</head>
<body>
    <div class="container">
        <img alt="Inventory Management Background" src="images/homebg.png">
        <div class="content">
            <h1>Inventory Management</h1>
            <p>Manage your products and stock efficiently with our user-friendly platform.</p>
            <a href="UAboutus.jsp" class="btn">Visit Now</a>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>
