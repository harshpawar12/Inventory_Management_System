<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%--Adding the fetching taglib file --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="/css/dash.css">
 <%@ include file="header.jsp" %>
</head>
<div class="header">
    <h1>Dashboard for Admin</h1>
</div>

<!-- Dashboard Name -->
<div style="padding: 0 20px;">
    <h4 style="color: #fff; text-align: left; font-size: 24px; margin-top: 20px; margin-bottom: 10px; border-left: 5px solid #fff; padding-left: 10px;">
        Dashboard Overview
    </h4>
</div>
<body>
     <div class="dashboard">
        <!-- Event Overview Block -->
        <div class="block">
            <div class="block-icon">
                <img src="https://img.freepik.com/premium-vector/shopping-cart-logo-design-related-selection-product_661182-178.jpg" alt="Event Overview">
            </div>
            <div class="block-content">
                <h2>Total products</h2>
                <br>
                <h2>${iscountpro}</h2>
                <br>
                 <td><a href="/product.jsp" class="btn-delete">View Products</a></td>
            </div>
        </div>

       
        <div class="block">
            <div class="block-icon">
                <img src="https://icon-library.com/images/order-icon/order-icon-18.jpg" alt="Attendee Management">
            </div>
            <div class="block-content">
                <h2>Total Orders</h2>
                <br>
                <h2>${iscountName}</h2>
                <br>
                 <td><a href="/AdminOrder" class="btn-delete">View Orders</a></td>
            </div>
        </div>

          
        <div class="block">
        
            <div class="block-icon">
                <img src="https://nerdschalk.com/wp-content/uploads/2020/09/aesthetic-app-icons-neon-5-e1601117393689.jpg" alt="Ticketing & Registration">
            </div>
          
             <div class="block-content">
                <h2>Total messages</h2>
                <br>
                <h2>${mcount}</h2>
                <br>
                 <td><a href="/mess" class="btn-delete">View Messaages</a></td>
                 
            </div>
          
            
        </div>

        <div class="block">
            <div class="block-icon">
                <img src="https://th.bing.com/th/id/OIP.s6UXOa36vXbnqSKJRHTrUAHaHa?rs=1&pid=ImgDetMain" alt="Venue & Logistics">
            </div>
            <div class="block-content">
                <h2>Total sales</h2>
             <br>
              <h2>${isbuyprice}</h2>
              <br>
              
             
            </div>
        </div>
        
         <div class="block">
            <div class="block-icon">
                <img src="https://cdn2.vectorstock.com/i/1000x1000/17/91/grunge-green-complaint-word-round-rubber-seal-vector-49161791.jpg" alt="Venue & Logistics">
            </div>
            <div class="block-content">
                <h2>User Complaints</h2>
             <br>
              <h2>${iscntName}</h2>
              <br>
         <td><a href="/complent" class="btn-delete">View complaints</a></td>
              
             
            </div>
        </div>

		<div class="block">
            <div class="block-icon">
                <img src="https://thumbs.dreamstime.com/b/feedback-sticker-round-isolated-wite-background-121034466.jpg" alt="Venue & Logistics">
            </div>
            <div class="block-content">
                <h2>User Feedbacks</h2>
             <br>
              <h2>${cntName}</h2>
              <br>
         <td><a href="/feedback" class="btn-delete">View it</a></td>
              
             
            </div>
        </div>
        
        <div class="block">
            <div class="block-icon">
                <img src="https://smallbusiness-staging.s3.amazonaws.com/uploads/2016/06/1-1774.jpg" alt="Venue & Logistics">
            </div>
            <div class="block-content">
                <h2>Our Profit</h2>
             <br>
              <h2>${isSel}</h2>
              <br>
        
              
             
            </div>
        </div>

       
       

       
    </div>

   <div class="table-container">
    <h2>Event Attendees</h2>
    
    <!-- Add a search bar -->
    <input type="text" id="searchInput" onkeyup="searchTable()" placeholder="Search for products..">

    <table id="productTable">
        <thead>
            <tr>
                <th>product_ID</th>
                <th>product_Name</th>
                <th>categories</th>
                <th>InStocks</th>
                <th>Buying_price</th>
                <th>Selling_price</th>
                <th>product_date</th>
                <th>image</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
        </thead>

        <tbody>
            <c:forEach var="pro" items="${data}">
                <tr>
                    <td>${pro.id}</td>
                    <td>${pro.product_name}</td>
                    <td>${pro.category}</td>
                    <td>${pro.instock}</td>
                    <td>${pro.buyingprice}</td>
                    <td>${pro.sellingprice}</td>
                    <td>${pro.date}</td>
                    <td><img src="images/${pro.image}" alt="Product Image" width="40" height="40" style="border-radius: 40%;"></td>
                    <td><a href="<c:url value='/${pro.id}'/>" class="btn-update">&#9998;</a></td>
                    <td><a href="<c:url value='/delete/${pro.id}'/>" class="btn-delete">&#10060;</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

       
    </div>
    <br>
    <br>
    <br>
    <script>
    
   
    function searchTable() {
        // Get the search input
        var input = document.getElementById("searchInput");
        var filter = input.value.toLowerCase(); // Convert search text to lowercase
        var table = document.getElementById("productTable");
        var tr = table.getElementsByTagName("tr");

        for (var i = 1; i < tr.length; i++) { 
            var td = tr[i].getElementsByTagName("td");
            var match = false;
            
            for (var j = 0; j < td.length; j++) {
                if (td[j]) {
                    var textValue = td[j].textContent || td[j].innerText;
                    if (textValue.toLowerCase().indexOf(filter) > -1) {
                        match = true;
                        break;
                    }
                }
            }
            
            if (match) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
        }
    }
    </script>
   
    
	     <%@ include file="footer.jsp" %>
</body>
</html>