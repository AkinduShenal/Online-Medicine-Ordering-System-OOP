<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Payments</title>
    <link href="${pageContext.request.contextPath}/ViewPay.css" rel="stylesheet" type="text/css"> <!-- Link to CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> <!-- Bootstrap CSS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> <!-- jQuery for handling modal -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> <!-- Bootstrap JS -->
    <style>
        /* Additional styles for modal */
        .modal-content {
            padding: 20px;
        }
    </style>
</head>
<body class="container">
    <h1 class="mt-5">Payment Records</h1>

    <c:if test="${not empty message}">
        <div class="alert alert-info">${message}</div> <!-- Display any messages from the servlet -->
    </c:if>

    <c:if test="${not empty payments}">
        <table class="table table-striped mt-3">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>Card Holder Name</th>
                    <th>Card Number</th>
                    <th>Amount</th>
                    <th>Expiry Month</th>
                    <th>Expiry Year</th>
                    <th>CVV</th>
                    <th>Payment Option</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="payment" items="${payments}">
                    <tr>
                        <td>${payment.id}</td>
                        <td>${payment.cardHolderName}</td>
                        <td>${payment.cardNumber}</td>
                        <td>${payment.amount}</td>
                        <td>${payment.expMonth}</td>
                        <td>${payment.expYear}</td>
                        <td>${payment.cvv}</td>
                        <td>${payment.paymentOption}</td>
                        <td>
                            <button class="btn btn-warning" onclick="openModal(${payment.id}, '${payment.cardHolderName}', '${payment.cardNumber}', '${payment.amount}', '${payment.expMonth}', '${payment.expYear}', '${payment.cvv}', '${payment.paymentOption}')">Update</button>
                            <form action="paymentServlet" method="post" style="display:inline;">
                                <input type="hidden" name="id" value="${payment.id}">
                                <input type="hidden" name="action" value="delete">
                                <input type="submit" class="btn btn-danger" value="Delete">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>

    <!-- Modal -->
    <div id="updateModal" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Update Payment</h5>
                    <button type="button" class="close" onclick="closeModal()" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="paymentServlet" method="post" id="updateForm">
                        <input type="hidden" name="id" id="paymentId">
                        <div class="form-group">
                            <label for="cardHolderName">Card Holder Name:</label>
                            <input type="text" class="form-control" name="cardHolderName" id="cardHolderName" required>
                        </div>
                        <div class="form-group">
                            <label for="cardNumber">Card Number:</label>
                            <input type="text" class="form-control" name="cardNumber" id="cardNumber" required>
                        </div>
                        <div class="form-group">
                            <label for="amount">Amount:</label>
                            <input type="text" class="form-control" name="amount" id="amount" required>
                        </div>
                        <div class="form-group">
                            <label for="expMonth">Expiry Month:</label>
                            <input type="text" class="form-control" name="expMonth" id="expMonth" required>
                        </div>
                        <div class="form-group">
                            <label for="expYear">Expiry Year:</label>
                            <input type="text" class="form-control" name="expYear" id="expYear" required>
                        </div>
                        <div class="form-group">
                            <label for="cvv">CVV:</label>
                            <input type="text" class="form-control" name="cvv" id="cvv" required>
                        </div>
                        <div class="form-group">
                            <label for="paymentOption">Payment Option:</label>
                            <input type="text" class="form-control" name="paymentOption" id="paymentOption" required>
                        </div>
                        <input type="hidden" name="action" value="update">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script>
        function openModal(id, cardHolderName, cardNumber, amount, expMonth, expYear, cvv, paymentOption) {
            // Set values in the modal fields
            document.getElementById('paymentId').value = id;
            document.getElementById('cardHolderName').value = cardHolderName;
            document.getElementById('cardNumber').value = cardNumber;
            document.getElementById('amount').value = amount;
            document.getElementById('expMonth').value = expMonth;
            document.getElementById('expYear').value = expYear;
            document.getElementById('cvv').value = cvv;
            document.getElementById('paymentOption').value = paymentOption; // Set payment option

            // Show the modal
            $('#updateModal').modal('show');
        }

        function closeModal() {
            $('#updateModal').modal('hide');
        }

        // Close the modal if the user clicks outside of it
        $(window).click(function(event) {
            var modal = $('#updateModal');
            if (event.target === modal[0]) {
                closeModal();
            }
        });
    </script>
</body>
</html>
