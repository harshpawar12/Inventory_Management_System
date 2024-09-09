<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Place Your Order</title>
 <link rel="stylesheet" href="/css/order.css">
 <%@ include file="userHeader.jsp" %>
</head>
<body>
<br><br><br><br>
  <div class="order-form-container">
        <h2>Place Your Order</h2>
        <form action="/orderr" method="post">
            <!-- User Information -->
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" name="name" required>
            </div>

            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" name="email" required>
            </div>

            <div class="form-group">
                <label for="phone">Phone Number</label>
                <input type="tel" name="phone" required>
            </div>

            <h3>Shipping Details</h3>
            <div class="form-group">
                <label for="address">Street Address</label>
                <input type="text" name="address" required>
            </div>

            <div class="form-group">
                <label for="city">City</label>
                <input type="text" name="city" required>
            </div>

            <div class="form-group">
                <label for="expdate">Date</label>
                <input type="month" name="expdate">
            </div>

            <div class="form-group">
                <label for="country">Country</label>
                <input type="text" name="country" required>
            </div>

            <h3>Payment Information</h3>
            <div class="form-group">
                <label for="payment-method">Payment Method</label>
                <select id="payment-method" name="payment" required>
                    <option value="qr">QR Code Payment</option>
                    <option value="cod">Cash on Delivery</option>
                </select>
            </div>

            <div id="qr-code" style="display:none;">
                <h3>Scan the QR Code to Pay</h3>
                <div class="form-group">
                    <img src="https://raw.githubusercontent.com/nating/react-native-custom-qr-codes/HEAD/assets/qr-code-3.png" alt="QR Code" style="max-width: 200px;">
                </div>
            </div>

            <div class="form-group">
                <button type="submit" class="submit-btn">Place Order</button><br>
                <button type="button" class="submit-btn" onclick="window.location.href='userinvo?username=${sessionScope.username}';">Click Billing</button><br>
<button type="button" class="submit-btn" onclick="window.location.href='trackinco?username=${sessionScope.username}';">Track here</button>
                
            </div>
        </form>
    </div>

    <script>
    document.getElementById('payment-method').addEventListener('change', function () {
        const qrCode = document.getElementById('qr-code');
        if (this.value === 'qr') {
            qrCode.style.display = 'block';
        } else {
            qrCode.style.display = 'none';
        }
    });
    </script>
    <br><br><br><br>
    <%@ include file="footer.jsp" %>
</body>
</html>
