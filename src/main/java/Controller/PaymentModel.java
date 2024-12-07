package Controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PaymentModel {

    // Method to add payment
    public static boolean addPayment(String cardHolderName, String cardNumber, String amount, String expMonth, String expYear, String cvv, String paymentOption) {
        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = DBconnect.getCon();
            if (con == null) {
                System.err.println("Database connection failed.");
                return false;
            }

            
            String sql = "INSERT INTO payments (cardHolderName, cardNumber, amount, expMonth, expYear, cvv, paymentOption) VALUES (?, ?, ?, ?, ?, ?, ?)";
            ps = con.prepareStatement(sql);

            // Set parameters
            ps.setString(1, cardHolderName);
            ps.setString(2, cardNumber);
            ps.setString(3, amount);
            ps.setString(4, expMonth);
            ps.setString(5, expYear);
            ps.setString(6, cvv);
            ps.setString(7, paymentOption);

            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    // Method to update payment
    public static boolean updatePayment(String id, String cardHolderName, String cardNumber, String amount, String expMonth, String expYear, String cvv, String paymentOption) {
        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = DBconnect.getCon();
            if (con == null) {
                System.err.println("Database connection failed.");
                return false;
            }

            String sql = "UPDATE payments SET cardHolderName=?, cardNumber=?, amount=?, expMonth=?, expYear=?, cvv=?, paymentOption=? WHERE id=?";
            ps = con.prepareStatement(sql);

            // Set parameters
            ps.setString(1, cardHolderName);
            ps.setString(2, cardNumber);
            ps.setString(3, amount);
            ps.setString(4, expMonth);
            ps.setString(5, expYear);
            ps.setString(6, cvv);
            ps.setString(7, paymentOption);
            ps.setString(8, id);

            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    // Method to delete payment
    public static boolean deletePayment(String id) {
        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = DBconnect.getCon();
            if (con == null) {
                System.err.println("Database connection failed.");
                return false;
            }

            String sql = "DELETE FROM payments WHERE id=?";
            ps = con.prepareStatement(sql);
            ps.setString(1, id);

            int rowsAffected = ps.executeUpdate();
            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    // Method to get all payments
    public static List<Payment> getAllPayments() {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Payment> payments = new ArrayList<>();

        try {
            con = DBconnect.getCon();
            String sql = "SELECT * FROM payments";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Payment payment = new Payment();
                payment.setId(rs.getInt("id"));
                payment.setCardHolderName(rs.getString("cardHolderName"));
                payment.setCardNumber(rs.getString("cardNumber"));
                payment.setAmount(rs.getBigDecimal("amount"));
                payment.setExpMonth(rs.getString("expMonth"));
                payment.setExpYear(rs.getInt("expYear"));
                payment.setCvv(rs.getString("cvv"));
                payment.setPaymentOption(rs.getString("paymentOption"));

                payments.add(payment);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return payments;
    }
}
