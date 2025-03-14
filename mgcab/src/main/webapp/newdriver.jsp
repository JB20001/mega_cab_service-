<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add New Driver - Mega City Cab</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body {
            background: #f4f7f6;
            font-family: 'Arial', sans-serif;
        }
        .card {
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
        }
        .card-header {
            background: #007bff;
            color: white;
            font-size: 22px;
            text-align: center;
            font-weight: bold;
            border-radius: 10px 10px 0 0;
        }
        .form-control {
            border-radius: 5px;
        }
        .btn-submit {
            background: #28a745;
            color: white;
            font-size: 18px;
            width: 100%;
        }
        .btn-submit:hover {
            background: #218838;
        }
        .profile-img {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            object-fit: cover;
            border: 4px solid #007bff;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">🚖 Add New Driver</div>
                <div class="card-body">
                    <div class="text-center">
                        <img src="images/driver.jpg" class="profile-img" alt="Driver Profile Image">
                        <h4 class="mt-3"><b>Add Driver</b></h4>
                        <span class="badge bg-success">Account Status: Active</span>
                    </div>
                    <hr>

                    <form method="post" action="adddriver">
                        <div class="mb-3">
                            <label class="form-label">Driver ID</label>
                            <input type="text" class="form-control" name="drid" placeholder="Enter Driver ID" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Driver Name</label>
                            <input type="text" class="form-control" name="dname" placeholder="Enter Full Name" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Driver Address</label>
                            <input type="text" class="form-control" name="daddress" placeholder="Enter Address" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Driver Contact No</label>
                            <input type="tel" class="form-control" name="dtpno" placeholder="Enter Contact No" >
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Driver NIC No</label>
                            <input type="text" class="form-control" name="dnic" placeholder="Enter NIC No" >
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Driver Licence No</label>
                            <input type="text" class="form-control" name="dlno" placeholder="Enter Licence No" required>
                        </div>
                        <div class="mb-3">
                            <button type="submit" class="btn btn-submit">🚀 Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
