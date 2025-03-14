<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add New Vehicle</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body {
            background: #f8f9fa;
        } 
        .container {
            max-width: 600px;
            margin: 40px auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .card-header {
            font-size: 22px;
            font-weight: bold;
            text-align: center;
            background: #dc3545;
            color: white;
            padding: 10px;
            border-radius: 10px 10px 0 0;
        }
        .vehicle-selection img {
            width: 90px;
            height: 70px;
            object-fit: cover;
            border: 2px solid transparent;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s;
        }
        .vehicle-selection input[type="radio"] {
            display: none;
        }
        .vehicle-selection input[type="radio"]:checked + img {
            border: 2px solid #dc3545;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="card-header">🚗 Add New Vehicle</div>
    <div class="card-body">
        
        <form method="post" action="addvehicle">
            
            <div class="mb-3 text-center">
                <img src="images/vehicle.jpg" class="img-thumbnail" alt="profile image" width="120px">
                <h5 class="mt-2"><b>Add vehicle</b></h5>
                <span class="badge bg-success">Account Status: Active</span>
            </div>

            <hr>

            <!-- Vehicle No -->
            <div class="mb-3">
                <label class="form-label">Vehicle No</label>
                <input type="text" class="form-control" name="vno" placeholder="Enter Vehicle No" required>
            </div>

            <!-- Vehicle Category Selection with Images -->
            <div class="mb-3">
                <label class="form-label">Vehicle Category</label>
                <div class="d-flex flex-wrap justify-content-between vehicle-selection">
                    <label>
                        <input type="radio" name="vcat" value="tuktuk" required>
                        <img src="images/tuktuk.jpg" alt="Tuktuk">
                        <p class="text-center">Tuktuk</p>
                    </label>
                    <label> 
                        <input type="radio" name="vcat" value="car">
                        <img src="images/car.jpg" alt="Car">
                        <p class="text-center">Car</p>
                    </label>
                    <label>
                        <input type="radio" name="vcat" value="minivan">
                        <img src="images/minivan.jpg" alt="Minivan">
                        <p class="text-center">Minivan</p>
                    </label>
                    <label>
                        <input type="radio" name="vcat" value="van">
                        <img src="images/van.jpg" alt="Van">
                        <p class="text-center">Van</p>
                    </label>
                    <label>
                        <input type="radio" name="vcat" value="jeep">
                        <img src="images/jeep.jpg" alt="Jeep">
                        <p class="text-center">Jeep</p>
                    </label>
                    <label>
                        <input type="radio" name="vcat" value="cab">
                        <img src="images/cab.jpg" alt="Cab">
                        <p class="text-center">Cab</p>
                    </label>
                    <label>
                        <input type="radio" name="vcat" value="lorry">
                        <img src="images/lorry.jpg" alt="Lorry">
                        <p class="text-center">Lorry</p>
                    </label>
                </div>
            </div>

            <!-- Vehicle Model -->
            <div class="mb-3">
                <label class="form-label">Vehicle Model</label>
                <input type="text" class="form-control" name="vmodel" placeholder="Enter Vehicle Model" required>
            </div>

            <!-- Vehicle Brand -->
            <div class="mb-3">
                <label class="form-label">Vehicle Brand</label>
                <input type="text" class="form-control" name="vbrand" placeholder="Enter Vehicle Brand" required>
            </div>

            <!-- Vehicle Color -->
            <div class="mb-3">
                <label class="form-label">Vehicle Color</label>
                <input type="text" class="form-control" name="vcolor" placeholder="Enter Vehicle Color" required>
            </div>

            <!-- Vehicle Chassis No -->
            <div class="mb-3">
                <label class="form-label">Vehicle Chassis No</label>
                <input type="text" class="form-control" name="vchasi" placeholder="Enter Vehicle Chassis No" required>
            </div>

            <!-- Submit Button -->
            <div class="mb-3 text-center">
                <button type="submit" class="btn btn-danger w-100">🚀 Submit</button>
            </div>
        </form>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
