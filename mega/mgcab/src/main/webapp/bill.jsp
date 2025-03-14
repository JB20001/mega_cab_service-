<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generate Bill</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fff; /* White background */
            color: #333; /* Dark text for readability */
            text-align: center;
        }
        .container {
            width: 50%;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border: 2px solid #ffcc00; /* Yellow border */
        }
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }
        label {
            font-weight: bold;
            color: #333; /* Dark text */
        }
        input {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            background: #ffcc00; /* Yellow background */
            color: black; /* Black text */
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background: #ff9900; /* Darker yellow on hover */
        }
        .error {
            color: red;
            font-weight: bold;
        }
        h2 {
            color: #ffcc00; /* Yellow color for the title */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Generate Bill</h2>
        <form action="BillServlet" method="post" onsubmit="return validateForm()">
            <div class="form-group">
                <label for="bookid">Booking ID:</label>
                <input type="text" id="bookid" name="bookid" value="<%= request.getParameter("bookid") != null ? request.getParameter("bookid") : "" %>" required>
            </div>
            <div class="form-group">
                <label for="distance">Distance (in kilometers):</label>
                <input type="number" id="distance" name="distance" required>
            </div>
            <button type="submit">Generate Bill & Download PDF</button>
        </form>

        <!-- Error Message -->
        <% if (request.getParameter("error") != null) { %>
            <p class="error"><%= request.getParameter("error") %></p>
        <% } %>
    </div>

    <script>
        function validateForm() {
            var distance = document.getElementById("distance").value;
            if (distance <= 0 || isNaN(distance)) {
                alert("Please enter a valid distance.");
                return false;
            }
            return true;
        }
    </script>
</body>
</html>
