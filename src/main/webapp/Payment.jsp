<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Details</title>
    <link href="${pageContext.request.contextPath}/Payment.css" rel="stylesheet" type="text/css">
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .payment-card {
            border: 1px solid #dee2e6;
            border-radius: 0.5rem;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .payment-header {
            background-color: #007bff;
            color: white;
            padding: 20px;
            border-top-left-radius: 0.5rem;
            border-top-right-radius: 0.5rem;
        }
        .payment-footer {
            background-color: #f8f9fa;
            padding: 10px;
            border-bottom-left-radius: 0.5rem;
            border-bottom-right-radius: 0.5rem;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="card payment-card">
            <div class="payment-header text-center">
                <h1>Payment Options</h1>
                <h4>Please choose your payment option below.</h4>
            </div>
            <form action="paymentServlet" method="post" class="p-4">
                <input type="hidden" name="action" value="add">

                <div class="form-group">
                    <label for="paymentOptions"><i class="fas fa-credit-card"></i> Choose a payment method:</label>
                    <select id="paymentOptions" name="paymentOption" class="form-control" onchange="displayImage()">
                        <option value="credit">Credit Cards</option>
                        <option value="paypal">PayPal</option>
                        <option value="bank">Bank Deposit/Bank Transfer</option>
                    </select>
                </div>

                <h4 class="mt-4">Enter Your Credit Card Details</h4>

                <div class="form-group">
                    <label for="cardHolderName">Name of Card Holder:</label>
                    <input type="text" name="cardHolderName" class="form-control" placeholder="Mr. John Doe" required>
                </div>

                <div class="form-group">
                    <label for="amount">Amount:</label>
                    <input type="number" name="amount" class="form-control" placeholder="Rs." required>
                </div>

                <div class="form-group">
                    <label for="cardNumber">Card Number:</label>
                    <input type="text" name="cardNumber" class="form-control" placeholder="1111-2222-3333-4444" maxlength="16" required>
                </div>

                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="expMonth">Expiry Month:</label>
                        <select name="expMonth" class="form-control">
                            <option value="January">January</option>
                            <option value="February">February</option>
                            <option value="March">March</option>
                            <option value="April">April</option>
                            <option value="May">May</option>
                            <option value="June">June</option>
                            <option value="July">July</option>
                            <option value="August">August</option>
                            <option value="September">September</option>
                            <option value="October">October</option>
                            <option value="November">November</option>
                            <option value="December">December</option>
                        </select>
                    </div>

                    <div class="form-group col-md-6">
                        <label for="expYear">Expiry Year:</label>
                        <select name="expYear" class="form-control">
                            <option value="2023">2023</option>
                            <option value="2024">2024</option>
                            <option value="2025">2025</option>
                            <option value="2026">2026</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label for="cvv">CVV:</label>
                    <input type="number" name="cvv" class="form-control" placeholder="123" required>
                </div>

                <div class="form-group form-check">
                    <input type="checkbox" class="form-check-input" id="saveCard">
                    <label class="form-check-label" for="saveCard">Save Card for Future Use</label>
                </div>

                <div class="payment-footer text-center">
                    <button type="submit" class="btn btn-primary">Confirm Payment</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
