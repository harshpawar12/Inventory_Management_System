<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
 <%@ include file="userHeader.jsp" %>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Track Your Order</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background-color: #f4f6f9;
        }

        .tracking-container {
            background-color: #fff;
            padding: 30px;
            margin: 30px auto;
            max-width: 900px;
            border-radius: 15px;
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.1);
        }

        h2, h3 {
            text-align: center;
            color: #333;
        }

        .order-info {
            text-align: center;
            margin-bottom: 40px;
            color: #666;
            font-size: 18px;
        }

        .progress-bar {
            display: flex;
            justify-content: space-between;
            position: relative;
            margin: 40px 0;
        }

        .step {
            display: flex;
            flex-direction: column;
            align-items: center;
            flex: 1;
            position: relative;
        }

        .step-icon {
            background-color: #ddd;
            border-radius: 50%;
            padding: 15px;
            width: 50px;
            height: 50px;
            text-align: center;
            color: #fff;
            font-weight: bold;
            font-size: 18px;
            margin-bottom: 10px;
            transition: background-color 0.4s ease;
            box-shadow: 0 3px 8px rgba(0, 0, 0, 0.2);
        }

        .completed .step-icon {
            background-color: #28a745;
            animation: bounce 1s;
        }

        .active .step-icon {
            background-color: #ffc107;
        }

        @keyframes bounce {
            0%, 20%, 50%, 80%, 100% {
                transform: translateY(0);
            }
            40% {
                transform: translateY(-10px);
            }
            60% {
                transform: translateY(-5px);
            }
        }

        .step p {
            margin: 0;
            font-weight: 500;
            color: #333;
        }

        .progress-line {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translateX(-50%);
            width: 100%;
            height: 5px;
            background-color: #ddd;
            z-index: -1;
            transition: background-color 0.4s ease;
        }

        .step.completed ~ .step .progress-line {
            background-color: #28a745;
        }

        .step.active ~ .step .progress-line {
            background-color: #ffc107;
        }

        .step:last-child .progress-line {
            display: none;
        }

        .order-details, .tracking-info {
            margin-top: 50px;
            text-align: center;
            color: #555;
        }

        .order-details ul {
            list-style-type: none;
            padding: 0;
            font-size: 18px;
        }

        .order-details li {
            margin: 10px 0;
        }

        .track-button {
            background-color: #007bff;
            color: white;
            padding: 12px 25px;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 30px;
            transition: background-color 0.3s ease;
            box-shadow: 0 3px 6px rgba(0, 0, 0, 0.1);
        }

        .track-button:hover {
            background-color: #0056b3;
        }

        @media (max-width: 600px) {
            .progress-bar {
                flex-direction: column;
                align-items: center;
            }

            .progress-line {
                display: none;
            }

            .step {
                margin-bottom: 30px;
            }

            .order-info, .tracking-info {
                text-align: left;
            }
        }
    </style>
</head>
<body>
    <div class="tracking-container">
        <h2>Track Your Order</h2>
        <div class="order-info">
            <p>Order Number: <strong>#123456789</strong></p>
            <p>Estimated Delivery: <strong>September 8, 2024</strong></p>
        </div>

        <!-- Progress Bar -->
        <div class="progress-bar" id="progress-bar">
            <div class="step completed" data-step="1">
                <span class="step-icon">✓</span>
                <p>Order Placed</p>
                <div class="progress-line"></div>
            </div>
            <div class="step completed" data-step="2">
                <span class="step-icon">✓</span>
                <p>Shipped</p>
                <div class="progress-line"></div>
            </div>
            <div class="step active" data-step="3">
                <span class="step-icon">3</span>
                <p>Out for Delivery</p>
                <div class="progress-line"></div>
            </div>
            <div class="step" data-step="4">
                <span class="step-icon">4</span>
                <p>Delivered</p>
            </div>
        </div>

        <div class="order-details">
            <h3>Order Details</h3>
            <ul>
                <li><strong>User_Name:</strong> ${istrack.username}</li>
            </ul>
        </div>

        <div class="tracking-info">
            <h3>Tracking Information</h3>
            <p>Carrier: <strong>DHL</strong></p>
            <p>Tracking Number: <strong>#DHL123456789</strong></p>
            <button class="track-button" onclick="window.location.href='https://www.dhl.com/track?trackingNumber=DHL123456789';">
                Track on Carrier's Website
            </button>
        </div>
    </div>

    <script>
        function updateProgress() {
            const steps = document.querySelectorAll('.step');
            steps.forEach((step, index) => {
                const nextStep = steps[index + 1];
                const progressLine = step.querySelector('.progress-line');

                if (nextStep && (step.classList.contains('completed') || step.classList.contains('active'))) {
                    progressLine.style.backgroundColor = '#28a745'; // Completed line
                } else if (nextStep && nextStep.classList.contains('active')) {
                    progressLine.style.backgroundColor = '#ffc107'; // Active line
                } else {
                    progressLine.style.backgroundColor = '#ddd'; // Default line
                }
            });
        }

        document.addEventListener('DOMContentLoaded', updateProgress);
    </script>
      <%@ include file="footer.jsp" %>
</body>
</html>
