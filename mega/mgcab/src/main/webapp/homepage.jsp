<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mega City Cab - Home</title>
    
    <!-- Bootstrap for Responsiveness -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- Google Maps API -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA-990be4rJqnxvhWoF89dW4WixP9Mq_-M&callback=initMap" async defer></script>

    <style>
        body {
            background-color: #f0f8ff; /* Light blue background */
            font-family: 'Arial', sans-serif;
            transition: background-color 0.3s, color 0.3s;
        }
        .dark-mode {
            background-color: #121212; /* Dark background */
            color: #ffffff; /* White text */
        }
        .header {
            background: linear-gradient(to right, #0073e6, #005bb5); /* Blue gradient */
            color: white; /* White text */
            text-align: center;
            padding: 20px;
            font-size: 26px;
            font-weight: bold;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .header img {
            height: 50px;
            width: auto;
        }
        .navbar {
            background: #005bb5; /* Dark blue background */
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px 15px;
            font-size: 18px;
            transition: 0.3s;
        }
        .navbar a:hover {
            background: #0073e6; /* Lighter blue hover */
            border-radius: 5px;
        }
        .search-bar {
            display: flex;
            align-items: center;
        }
        .search-bar input {
            padding: 5px;
            border: none;
            border-radius: 5px;
            width: 200px;
        }
        .search-bar button {
            background: #0073e6; /* Blue button */
            border: none;
            padding: 6px 10px;
            margin-left: 5px;
            border-radius: 5px;
            color: white; /* White text */
            cursor: pointer;
            transition: 0.3s;
        }
        .search-bar button:hover {
            background: #005bb5; /* Darker blue on hover */
        }
        .auth-buttons {
            display: flex;
            gap: 10px;
        }
        .auth-buttons a {
            background: #28a745; /* Green button */
            padding: 7px 12px;
            color: white;
            border-radius: 5px;
            text-decoration: none;
            transition: 0.3s;
        }
        .auth-buttons a:hover {
            background: #218838; /* Darker green on hover */
        }
        .hero {
            text-align: center;
            padding: 50px;
            background-image: url("images/banner1.jpg");
            background-size: cover;
            background-position: center;
            color: white;
            height: 80vh; /* Full viewport height */
            display: flex;
            flex-direction: column;
            justify-content: center;
            animation: fadeIn 2s ease-in-out;
        }
        .hero h1 {
            font-size: 48px;
            animation: slideIn 1.5s ease-in-out;
        }
        .hero p {
            font-size: 24px;
            animation: slideIn 2s ease-in-out;
        }
        .booking-section, .cart-section, .services-section, .why-choose-us, .testimonials, .call-to-action {
            text-align: center;
            padding: 30px;
            background: #ffffff; /* White background */
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin: 20px 0;
        }
        .dark-mode .booking-section, .dark-mode .cart-section, .dark-mode .services-section, .dark-mode .why-choose-us, .dark-mode .testimonials, .dark-mode .call-to-action {
            background: #1e1e1e; /* Dark background for sections */
            color: #ffffff; /* White text */
        }
        .btn-book, .btn-cart {
            background: #0073e6; /* Blue button */
            color: white; /* White text */
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 18px;
            transition: 0.3s;
        }
        .btn-book:hover, .btn-cart:hover {
            background: #005bb5; /* Darker blue on hover */
        }
        .footer {
            background: #005bb5; /* Dark blue background */
            color: white;
            text-align: center;
            padding: 40px 20px;
            margin-top: 30px;
            box-shadow: 0 -4px 6px rgba(0, 0, 0, 0.1);
        }
        .footer .footer-content {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            gap: 20px;
            margin-bottom: 20px;
        }
        .footer .footer-section {
            max-width: 300px;
            text-align: left;
        }
        .footer .footer-section h3 {
            font-size: 20px;
            margin-bottom: 15px;
            color: #0073e6; /* Blue text */
        }
        .footer .footer-section p {
            font-size: 16px;
            color: #cccccc; /* Light gray text */
        }
        .footer .social-icons a {
            color: white;
            margin: 0 10px;
            text-decoration: none;
            font-size: 24px;
            transition: 0.3s;
        }
        .footer .social-icons a:hover {
            color: #0073e6; /* Blue hover */
        }
        .footer .footer-bottom {
            margin-top: 20px;
            font-size: 14px;
            color: #cccccc; /* Light gray text */
        }
        /* Sound Controller */
        .sound-controller, .dark-mode-controller {
            position: fixed;
            top: 20px;
            right: 20px;
            background: rgba(0, 0, 0, 0.7);
            color: white;
            padding: 10px;
            border-radius: 50%;
            cursor: pointer;
            font-size: 20px;
            z-index: 1000;
        }
        .dark-mode-controller {
            right: 70px;
        }
        .sound-controller:hover, .dark-mode-controller:hover {
            background: rgba(0, 115, 230, 0.9); /* Blue hover */
        }
        /* Google Map Section */
        #map {
            height: 400px;
            width: 100%;
            margin: 20px 0;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        /* Our Services Section */
        .services-section {
            background: #ffffff; /* White background */
            padding: 40px 20px;
        }
        .services-section h2 {
            margin-bottom: 20px;
            font-size: 28px;
            color: #333333; /* Black text */
        }
        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            padding: 20px;
        }
        .service-card {
            background: #ffffff; /* White background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s ease;
        }
        .service-card:hover {
            transform: translateY(-10px);
        }
        .service-card i {
            font-size: 40px;
            color: #0073e6; /* Blue icons */
            margin-bottom: 15px;
        }
        .service-card h3 {
            font-size: 22px;
            color: #333333; /* Black text */
            margin-bottom: 10px;
        }
        .service-card p {
            font-size: 16px;
            color: #666666; /* Dark gray text */
        }
        /* Why Choose Us Section */
        .why-choose-us {
            background: #f0f8ff; /* Light blue background */
            padding: 40px 20px;
        }
        .why-choose-us h2 {
            margin-bottom: 20px;
            font-size: 28px;
            color: #333333; /* Black text */
        }
        .why-choose-us .reasons-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            padding: 20px;
        }
        .reason-card {
            background: #ffffff; /* White background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s ease;
        }
        .reason-card:hover {
            transform: translateY(-10px);
        }
        .reason-card i {
            font-size: 40px;
            color: #0073e6; /* Blue icons */
            margin-bottom: 15px;
        }
        .reason-card h3 {
            font-size: 22px;
            color: #333333; /* Black text */
            margin-bottom: 10px;
        }
        .reason-card p {
            font-size: 16px;
            color: #666666; /* Dark gray text */
        }
        /* Testimonials Section */
        .testimonials {
            background: #ffffff; /* White background */
            padding: 40px 20px;
        }
        .testimonials h2 {
            margin-bottom: 20px;
            font-size: 28px;
            color: #333333; /* Black text */
        }
        .testimonials-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            padding: 20px;
        }
        .testimonial-card {
            background: #ffffff; /* White background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s ease;
        }
        .testimonial-card:hover {
            transform: translateY(-10px);
        }
        .testimonial-card img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            margin-bottom: 15px;
        }
        .testimonial-card h3 {
            font-size: 22px;
            color: #333333; /* Black text */
            margin-bottom: 10px;
        }
        .testimonial-card p {
            font-size: 16px;
            color: #666666; /* Dark gray text */
        }
        /* Call to Action Section */
        .call-to-action {
            background: #0073e6; /* Blue background */
            padding: 40px 20px;
            color: white; /* White text */
        }
        .call-to-action h2 {
            margin-bottom: 20px;
            font-size: 28px;
        }
        .call-to-action a {
            background: #005bb5; /* Darker blue button */
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 18px;
            transition: 0.3s;
        }
        .call-to-action a:hover {
            background: #004080; /* Even darker blue on hover */
        }
        /* Animations */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        @keyframes slideIn {
            from { transform: translateY(50px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }
        /* QR Code */
        .qr-code {
            margin-top: 20px;
            text-align: center;
        }
        .qr-code img {
            width: 150px;
            height: 150px;
        }
    </style>
</head>
<body>
    <!-- Header with Logo -->
    <div class="header">
        <img src="images/logo11.jpg" alt="Mega City Cab Logo">
        <span>Welcome to Mega City Cab 🚖</span>
    </div>

    <!-- Navbar -->
    <div class="navbar">
        <div>
            <a href="homepage.jsp"><b>Home</b></a>
            <a href="about.jsp"><b>About Us</b></a>
            <a href="help.jsp"><b>Help</b></a>
        </div>
        <div class="search-bar">
            <input type="text" id="searchBox" placeholder="Search for rides...">
            <button onclick="searchFunction()">🔍</button>
        </div>
        <div class="auth-buttons">
            <a href="regs.jsp">Sign Up</a>
            <a href="login.jsp">Login</a>
        </div>
    </div>

    <!-- Hero Section -->
    <div class="hero">
        
    </div>

    <!-- Booking Section -->
    <div class="booking-section">
        <h2><b>Book a Ride Now!</b></h2>
        <p>Fast and easy cab booking at your fingertips.</p>
        <a href="login.jsp" class="btn-book">Book a Ride</a>
    </div>

    <!-- Why Choose Us Section -->
    <div class="why-choose-us">
        <h2><b>Why Choose Mega City Cab?</b></h2>
        <div class="reasons-grid">
            <div class="reason-card">
                <i class="fas fa-clock"></i>
                <h3>24/7 Availability</h3>
                <p>We are available round the clock to serve you.</p>
            </div>
            <div class="reason-card">
                <i class="fas fa-shield-alt"></i>
                <h3>Safe & Secure</h3>
                <p>Your safety is our top priority.</p>
            </div>
            <div class="reason-card">
                <i class="fas fa-dollar-sign"></i>
                <h3>Affordable Rates</h3>
                <p>Get the best rates in the city.</p>
            </div>
            <div class="reason-card">
                <i class="fas fa-smile"></i>
                <h3>Happy Customers</h3>
                <p>Join thousands of satisfied customers.</p>
            </div>
        </div>
    </div>

    <!-- Our Services Section -->
    <div class="services-section">
        <h2><b>Our Services</b></h2>
        <div class="services-grid">
            <div class="service-card">
                <i class="fas fa-car"></i>
                <h3>City Rides</h3>
                <p>Quick and affordable rides within the city.</p>
            </div>
            <div class="service-card">
                <i class="fas fa-truck"></i>
                <h3>Intercity Rides</h3>
                <p>Comfortable rides for long-distance travel.</p>
            </div>
            <div class="service-card">
                <i class="fas fa-briefcase"></i>
                <h3>Corporate Rides</h3>
                <p>Professional rides for business travelers.</p>
            </div>
            <div class="service-card">
                <i class="fas fa-calendar-alt"></i>
                <h3>Event Rides</h3>
                <p>Special rides for events and occasions.</p>
            </div>
        </div>
    </div>

    <!-- Testimonials Section -->
    <div class="testimonials">
        <h2><b>What Our Customers Say</b></h2>
        <div class="testimonials-grid">
            <div class="testimonial-card">
                <img src="images/customer1.jpg" alt="Customer 1">
                <h3>Ahinda Rajapaksha</h3>
                <p>"Great service! "</p>
            </div>
            <div class="testimonial-card">
                <img src="images/customer2.jpg" alt="Customer 2">
                <h3>Sumana</h3>
                <p>" Highly recommended!"</p>
            </div>
            <div class="testimonial-card">
                <img src="images/customer3.jpg" alt="Customer 3">
                <h3>