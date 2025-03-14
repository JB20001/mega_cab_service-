<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Help - Mega City Cab</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        .help-header {
            background: #ff5722;
            color: white;
            text-align: center;
            padding: 40px 0;
        }
        .help-content {
            padding: 30px;
        }
        .help-content h2 {
            font-size: 30px;
            margin-bottom: 20px;
        }
        .help-content p {
            font-size: 18px;
            line-height: 1.6;
        }
        .help-faq {
            margin-top: 40px;
        }
        .faq-card {
            margin: 15px 0;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <div class="help-header">
        <h1>Help & Support</h1>
        <p>We are here to assist you with any questions about Mega City Cab</p>
    </div>

    <!-- Help Content Section -->
    <div class="help-content">
        <h2>Welcome to Mega City Cab Help</h2>
        <p>Mega City Cab is a popular cab service in Colombo, with thousands of customers using our service monthly. We strive to provide a convenient and reliable transportation experience for everyone in the city.</p>

        <p>We have implemented a computerized system to streamline our operations, including managing customer bookings, calculating bills, and maintaining customer details. Below are some frequently asked questions (FAQs) that will help you understand how our service works and how to use our system effectively.</p>

        <h3>How to Book a Cab?</h3>
        <p>Booking a cab with Mega City Cab is easy. Simply visit our website and use the booking form to select your pick-up location, drop-off point, and the date and time of your ride. Once the booking is confirmed, you'll receive a unique booking number for tracking your ride.</p>

        <h3>What Information is Captured During Customer Registration?</h3>
        <p>When you register as a new customer, our system will capture the following details:</p>
        <ul>
            <li>Customer Registration Number</li>
            <li>Name</li>
            <li>Address</li>
            <li>National Identity Card (NIC) Number</li>
        </ul>
        <p>This information helps us maintain accurate customer records and ensures a smooth booking experience for you.</p>

        <h3>How Are Bills Calculated?</h3>
        <p>Our billing system calculates the fare based on the distance, time, and type of ride requested. We provide transparent and itemized billing, so you can always see the breakdown of charges, including any additional fees for waiting time or surcharges.</p>

        <h3>Booking Number</h3>
        <p>Every transaction is assigned a unique booking number, which helps us track the ride and manage customer orders. You will receive this number upon confirming your booking, and you can use it to track your ride or for any inquiries related to your ride.</p>

        <div class="help-faq">
            <h3>Frequently Asked Questions (FAQs)</h3>

            <div class="faq-card">
                <h5>Q1: How do I reset my password?</h5>
                <p>If you've forgotten your password, you can reset it by clicking on the "Forgot Password" link on the login page. Follow the instructions to receive a password reset email.</p>
            </div>

            <div class="faq-card">
                <h5>Q2: How can I cancel a booking?</h5>
                <p>If you need to cancel a booking, please contact our customer service or use the "Cancel Booking" option in your booking dashboard. Note that cancellation fees may apply based on the timing of the cancellation.</p>
            </div>

            <div class="faq-card">
                <h5>Q3: Can I request a ride for someone else?</h5>
                <p>Yes, you can book a ride for someone else. Simply enter their details when completing the booking form, and we'll send them the booking confirmation with the details of their ride.</p>
            </div>

            <div class="faq-card">
                <h5>Q4: What if my cab arrives late?</h5>
                <p>If your cab arrives late, please contact our customer support team. We will do our best to resolve any issues and ensure your ride is completed without further delays.</p>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-dark text-white text-center p-3">
        <p>&copy; 2025 Mega City Cab. All Rights Reserved.</p>
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
