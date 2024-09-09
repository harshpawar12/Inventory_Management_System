<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="/css/contactus.css">
 <%@ include file="userHeader.jsp" %>
</head>
<body>
<section class="contact-section">
        <div class="container">
            <h2>Contact Us</h2>
            <p>If you have any questions or need further assistance, please don't hesitate to contact us. We are here to help!</p>

            <div class="contact-form">
                <form action="contact" method="post">
                    <div class="form-group">
                        <label for="name">Full Name</label>
                        <input type="text" id="name" name="name" required>
                    </div>

                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" id="email" name="email" required>
                    </div>

                    <div class="form-group">
                        <label for="subject">Subject</label>
                        <input type="text" id="subject" name="subject" required>
                    </div>

                    <div class="form-group">
                        <label for="message">Message</label>
                        <textarea id="message" name="message" rows="6" required></textarea>
                    </div>


                    <button type="submit" class="btn">Send Message</button>
                </form>
            </div>

            <div class="contact-info">
                <div class="info-item">
                    <h3>Our Location</h3>
                    <p>123 Inventory St, Business City, Country</p>
                </div>
                <div class="info-item">
                    <h3>Email Us</h3>
                    <p>support@inventorymgmt.com</p>
                </div>
                <div class="info-item">
                    <h3>Call Us</h3>
                    <p>+123 456 7890</p>
                </div>
            </div>
        </div>
    </section>
      <%@ include file="footer.jsp" %>
</body>
</html>