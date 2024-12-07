package Controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/paymentServlet")
public class paymentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            // Handle add payment
            String paymentOption = request.getParameter("paymentOption");
            String cardHolderName = request.getParameter("cardHolderName");
            String cardNumber = request.getParameter("cardNumber");
            String amount = request.getParameter("amount");
            String expMonth = request.getParameter("expMonth");
            String expYear = request.getParameter("expYear");
            String cvv = request.getParameter("cvv");

//             Create an instance of PaymentModel
            boolean isAdded = PaymentModel.addPayment(cardHolderName, cardNumber, amount, expMonth, expYear, cvv, paymentOption);

            // Forward response based on success/failure
            if (isAdded) {
                request.setAttribute("message", "Payment successfully added!");
               request.getRequestDispatcher("viewPayment.jsp");
            } else {
                request.setAttribute("message", "Something went wrong. Please try again.");
                request.getRequestDispatcher("Payment.jsp").forward(request, response);
            }

        } else if ("update".equals(action)) {
            // Handle update payment
            String id = request.getParameter("id");
            String cardHolderName = request.getParameter("cardHolderName");
            String cardNumber = request.getParameter("cardNumber");
            String amount = request.getParameter("amount");
            String expMonth = request.getParameter("expMonth");
            String expYear = request.getParameter("expYear");
            String cvv = request.getParameter("cvv");
            String paymentOption = request.getParameter("paymentOption");

            boolean isUpdated = PaymentModel.updatePayment(id, cardHolderName, cardNumber, amount, expMonth, expYear, cvv, paymentOption);

            if (isUpdated) {
                request.setAttribute("message", "Payment updated successfully!");
            } else {
                request.setAttribute("message", "Update failed. Please try again.");
            }

        } else if ("delete".equals(action)) {
            // Handle delete payment
            String id = request.getParameter("id");

            boolean isDeleted = PaymentModel.deletePayment(id);

            if (isDeleted) {
                request.setAttribute("message", "Payment deleted successfully!");
            } else {
                request.setAttribute("message", "Failed to delete payment.");
            }
        }

        // Retrieve and display all payments
        List<Payment> payments = PaymentModel.getAllPayments();
        request.setAttribute("payments", payments);
        request.getRequestDispatcher("viewPayment.jsp").forward(request, response);
    }
}
