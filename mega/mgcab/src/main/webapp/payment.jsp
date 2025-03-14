<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Payment - Mega City Cab</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body {
            background: #f8f9fa;
        }
        .payment-container {
            max-width: 600px;
            margin: 40px auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .payment-header {
            font-size: 24px;
            font-weight: bold;
            color: #ff5722;
            text-align: center;
        }
        .order-summary {
            background: #ffecb3;
            padding: 15px;
            border-radius: 8px;
        }
        .btn-pay {
            width: 100%;
            background: #28a745;
            color: white;
            padding: 10px;
            border-radius: 5px;
            text-align: center;
            font-size: 18px;
            border: none;
        }
        .btn-pay:hover {
            background: #218838;
        }
    </style>
</head>
<body>

<div class="payment-container">
    <div class="payment-header">💳 Secure Payment</div>
    <br>

    <!-- Order Summary -->
    <div class="order-summary">
        <h5>📝 Order Summary</h5>
        <p><strong>Name:</strong> <%= request.getParameter("fullname") %></p>
        <p><strong>Email:</strong> <%= request.getParameter("email") %></p>
        <p><strong>Phone:</strong> <%= request.getParameter("phone") %></p>
        <p><strong>Amount to Pay:</strong> Rs. 7500</p>
    </div>
    <br>

    <!-- Payment Method Selection -->
    <form action="thankyou.jsp" method="POST" id="paymentForm">
        <div class="mb-3">
            <label class="form-label">Select Payment Method</label>
            <select class="form-control" name="payment_method" id="paymentMethod" required onchange="togglePaymentFields()">
                <option value="credit_card">Credit/Debit Card</option>
                <option value="paypal">PayPal</option>
                <option value="cash">Cash on Pickup</option>
            </select>
        </div>

        <!-- Credit Card Payment Fields -->
        <div id="cardFields">
            <div class="mb-3">
                <label class="form-label">Card Number</label>
                <input type="text" class="form-control" id="cardNumber" name="card_number" placeholder="**** **** **** ****" maxlength="19" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Expiry Date</label>
                <input type="month" class="form-control" name="expiry_date" required>
            </div>
            <div class="mb-3">
                <label class="form-label">CVV</label>
                <input type="password" class="form-control" name="cvv" maxlength="3" required>
            </div>
        </div>

        <button type="submit" class="btn-pay">Complete Payment</button>
    </form>
</div>

<script>
    function togglePaymentFields() {
        let paymentMethod = document.getElementById("paymentMethod").value;
        document.getElementById("cardFields").style.display = (paymentMethod === "credit_card") ? "block" : "none";
    }

    // Real-time Card Formatting
    $(document).ready(function () {
        $("#cardNumber").on("input", function () {
            let value = $(this).val().replace(/\D/g, '').substring(0, 16);
            let formattedValue = value.replace(/(.{4})/g, '$1 ').trim();
            $(this).val(formattedValue);
        });
    });

    // Initialize
    togglePaymentFields();
</script>

</body>
</html>
