<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="/css/uMessage.css">
     <%@ include file="userHeader.jsp" %>
</head>
<body>
<br>
<br>
<br>
<br>
<br>

<form action="message" method="post">


	<h3>Message here..!!</h3>
    <label for="username">Name:</label>
    <input type="text" name=name  required>

    <label for="email">Email:</label>
    <input type="email" name=email required>

    <label for="message">Message:</label>
    <textarea name=message  required></textarea>

    <button type="submit">Submit</button>
</form>

<br>
<br>
<br>
<br>
<br>

  <%@ include file="footer.jsp" %>
</body>
</html>