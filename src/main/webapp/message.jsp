</body><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="/css/AdOrder.css">
  <%@ include file="header.jsp" %>
</head>
<body>
 <div class="container">
        <h3>User Messages</h3>
         <c:forEach var="msg" items="${ismsg}">
        <div class="info-card">
       
            <div class="info-content">
            <h3>User Messages</h3>
                <p><strong>Name:</strong>${msg.name}</p>
                <p><strong>Email:</strong>${msg.email}</p>
                <p><strong>Message:</strong>${msg.message}</p>
              <button> <p><a href="<c:url value='/del/${msg.id}'/>">Delete</a></p></button>
         
                
                
           
            </div>
             
        </div>
         </c:forEach>
       
    </div>
<br>
<br>
<br>

 <%@ include file="footer.jsp" %>
</body>
</html>
</html>