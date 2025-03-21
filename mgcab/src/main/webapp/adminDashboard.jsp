<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Mega City Cab</title>
    
    <!-- Bootstrap for Responsiveness -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        body {
            background-color: #f4f4f4; /* Light gray background */
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
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
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }
        .header img {
            height: 50px;
            width: auto;
        }
        .sidebar {
            width: 250px;
            height: 100vh;
            background: #2c3e50; /* Dark blue background */
            color: white;
            position: fixed;
            padding-top: 100px;
            box-shadow: 4px 0 6px rgba(0, 0, 0, 0.1);
            top: 0;
            left: 0;
        }
        .sidebar a {
            display: block;
            color: white;
            padding: 15px 20px;
            text-decoration: none;
            font-size: 18px;
            transition: 0.3s;
        }
        .sidebar a:hover {
            background: #34495e; /* Darker blue hover */
            color: #ffcc00; /* Yellow text on hover */
            border-radius: 5px;
        }
        .main-content {
            margin-left: 250px;
            padding: 100px 20px 20px 20px;
            background-color: #ffffff; /* White background */
        }
        .card {
            margin: 20px 0;
            padding: 20px;
            background: #ffffff; /* White background */
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border: 1px solid #e0e0e0; /* Light border */
        }
        .card h3 {
            margin-bottom: 20px;
            color: #0073e6; /* Blue text */
            font-size: 24px;
            font-weight: bold;
        }
        .card p {
            margin-bottom: 15px;
            color: #555555; /* Dark gray text */
        }
        .btn-action {
            background: #ffcc00; /* Yellow button */
            color: #000; /* Black text */
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            transition: 0.3s;
            display: block;
            margin-top: 10px;
            border: none;
            cursor: pointer;
            font-size: 16px;
            text-align: center;
            width: 100%;
        }
        .btn-action:hover {
            background: #e6b800; /* Darker yellow on hover */
            color: #000; /* Black text */
        }
        .btn-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 10px;
            margin-top: 10px;
        }
        .admin-photo {
            text-align: center;
            margin-bottom: 20px;
        }
        .admin-photo img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            border: 3px solid #ffcc00; /* Yellow border */
            object-fit: cover;
        }
        .admin-photo p {
            margin-top: 10px;
            font-size: 18px;
            font-weight: bold;
            color: #0073e6; /* Blue text */
        }
        .grid-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <!-- Header with Logo -->
    <div class="header">
        <img src="images/logo11.jpg" alt="Mega City Cab Logo">
        <span>Admin Dashboard - Mega City Cab 🚖</span>
    </div>
    
    <!-- Sidebar with Options --> 
    <div class="sidebar">
        <!-- Admin Photo -->
        <div class="admin-photo">
            <img src="images/admin1.png" alt="Admin Photo">
            <p>J B Keeragala</p>
        </div>
        <a href="adminDashboard.jsp"><i class="fas fa-home"></i> Dashboard</a>
        <a href="homepage.jsp"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <h2>Welcome, Admin!</h2>
        
        <!-- Grid Layout for Cards -->
        <div class="grid-container">
            <!-- User Management -->
            <div class="card">
                <h3>User Management</h3>
                <p>Manage all users.</p>
                <div class="btn-container">
                    <form action="regtb" method="post">
                        <button type="submit" class="btn-action">View Users</button>
                    </form>
                </div>
            </div>
            
            <!-- Driver Management -->
            <div class="card">
                <h3>Driver Management</h3>
                <p>Manage all drivers.</p>
                <div class="btn-container">
                    <form action="tbdriver" method="post">
                        <button type="submit" class="btn-action">View Drivers</button>
                    </form>
                    <form action="newdriver.jsp" method="post">
                        <button type="submit" class="btn-action">Add Driver</button>
                    </form>
                    <form action="updriver.jsp" method="post">
                        <button type="submit" class="btn-action">Update Driver</button>
                    </form>
                </div>
            </div>
            
            <!-- Vehicle Management -->
            <div class="card">
                <h3>Vehicle Management</h3>
                <p>Manage fleet vehicles.</p>
                <div class="btn-container">
                    <form action="tbvehicle" method="post">
                        <button type="submit" class="btn-action">View Vehicles</button>
                    </form>
                    <form action="newvehicle.jsp" method="post">
                        <button type="submit" class="btn-action">Add Vehicle</button>
                    </form>
                    <form action="upvehicle.jsp" method="post">
                        <button type="submit" class="btn-action">Update Vehicle</button>
                    </form>
                </div>
            </div>

            <!-- Booking Management -->
            <div class="card">
                <h3>Booking Management</h3>
                <p>View and manage all bookings.</p>
                <div class="btn-container">
                    <form action="viewBookings.jsp" method="post">
                        <button type="submit" class="btn-action">View Bookings</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>