<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <%@ include file="header.jsp" %>
</head>
<style>
 @charset "UTF-8";
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 20px;
    background-color: #f4f4f4;
}

.container {
    max-width: 800px;
    margin: 0 auto;
}

h3 {
    text-align: center;
    color: #333;
    margin-bottom: 20px;
}

.info-card {
    width: 100%;
    background-color: #ffffff;
    border: 1px solid #ddd;
    border-radius: 8px;
    padding: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    position: relative;
    overflow: hidden;
    cursor: pointer;
    transition: transform 0.3s ease;
}
/*
.info-card:hover {
    transform: scale(1.05);
}


.info-content {
    opacity: 0;
    transition: opacity 0.3s ease;
}
*/

  .info-card:hover .info-content {
    opacity: 1;
  }


.info-content p {
    margin: 10px 0;
    color: #555;
}

.info-content strong {
    color: #333;
}

</style>
<body>
  
<div class="container">
 
        <h3>COMPLAINTS</h3>
                <c:forEach var="compla" items="${iscomp}">
   
        <div class="info-card">
        
            <div class="info-content">
             
            <h3>User Complaints</h3>
            
           
            
         
                <p><strong>Name:</strong>${compla.name}</p>
                <p><strong>Email:</strong>${compla.email}</p>
                   
                <p><strong>Subject:</strong>${compla.subject}</p>
                <p><strong>Message:</strong>${compla.message}</p>
                
                
           <button> <p><a href="<c:url value='/de/${compla.id}'/>">Delete</a></p></button>  
           
            </div>
              
              
        </div>
                                    </c:forEach>
       
       
    </div>
    
       <%@ include file="footer.jsp" %>
</body>
</html>