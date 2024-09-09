<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventory Feedback</title>
   
    <link rel="stylesheet" href="/css/feedback.css">
</head>
<body>
    <%@ include file="userHeader.jsp" %> <!-- Header included above the form -->

    <div class="container">
        <h1>We Value Your Feedback</h1>
        <p>Help us improve our inventory management system.</p>
        <form action="rate" method="post">
            <div class="input-group">
          
                <label for="name">Your Name</label>
                <input type="text" name="name" required>
            </div>
            <div class="input-group">
                <label for="email">Your Email</label>
                <input type="email"  name="email" required>
            </div>
            <div class="input-group">
                <label for="rating">Rate Us</label>
                <div class="rating">
                    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
                </div>
                 
            </div>
            <div class="input-group">
                <label for="comments">Comments</label>
                <textarea id="comments" name="comment" rows="4" required></textarea>
            </div>
            <button type="submit">Submit Feedback</button>
        </form>
        <div id="responseMessage"></div>
    </div>

    <%@ include file="footer.jsp" %> <!-- Footer included below the form -->

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const ratingStars = document.querySelectorAll('.rating span');
            let selectedRating;

            ratingStars.forEach((star, index) => {
                star.addEventListener('click', () => {
                    ratingStars.forEach(s => s.classList.remove('selected'));
                    for (let i = 0; i <= index; i++) {
                        ratingStars[i].classList.add('selected');
                    }
                    selectedRating = index + 1;
                });
            });

            document.getElementById('feedbackForm').addEventListener('submit', function(event) {
                event.preventDefault();
                
                const name = document.getElementById('name').value;
                const email = document.getElementById('email').value;
                const comments = document.getElementById('comments').value;

                if (!selectedRating) {
                    alert("Please select a rating.");
                    return;
                }

                setTimeout(() => {
                    const message = `Thank you, ${name}! You rated us ${selectedRating} stars.`;
                    document.getElementById('responseMessage').textContent = message;
                    document.getElementById('responseMessage').style.opacity = 1;
                    document.getElementById('feedbackForm').reset();
                    ratingStars.forEach(s => s.classList.remove('selected'));
                    selectedRating = null;
                }, 1000);
            });
        });
    </script>
    </body>
</html>
