<%@ page language="java" contentType="text/html; charset=UTF-8"
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
        <h3>Order Details</h3>
         <c:forEach var="ord" items="${isorder}">
        <div class="info-card">
       
            <div class="info-content">
            <h3>User Order Details</h3>
                <p><strong>Name:</strong>${ord.name}</p>
                <p><strong>Email:</strong>${ord.email}</p>
                <p><strong>Phone:</strong>${ord.phone}</p>
                <p><strong>Address:</strong>${ord.address}</p>
                <p><strong>City:</strong>${ord.city}</p>
                 
                   <p><strong>Country:</strong>${ord.country}</p>
                    <p><strong>Payment:</strong>${ord.payment}</p>
              <button> <p><a href="<c:url value='/deleted/${ord.id}'/>">Delete</a></p></button>
           
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