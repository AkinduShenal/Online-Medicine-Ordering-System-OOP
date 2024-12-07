package Controller;

import java.math.BigDecimal;

public class Payment {
    private int id; 
    private String cardHolderName;
    private String cardNumber;
    private BigDecimal amount; 
    private String expMonth;
    private int expYear; 
    private String cvv;
    private String paymentOption;

    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getCardHolderName() { return cardHolderName; }
    public void setCardHolderName(String cardHolderName) { this.cardHolderName = cardHolderName; }

    public String getCardNumber() { return cardNumber; }
    public void setCardNumber(String cardNumber) { this.cardNumber = cardNumber; }

    public BigDecimal getAmount() { return amount; }
    public void setAmount(BigDecimal amount) { this.amount = amount; }

    public String getExpMonth() { return expMonth; }
    public void setExpMonth(String expMonth) { this.expMonth = expMonth; }

    public int getExpYear() { return expYear; }
    public void setExpYear(int expYear) { this.expYear = expYear; }

    public String getCvv() { return cvv; }
    public void setCvv(String cvv) { this.cvv = cvv; }

    public String getPaymentOption() { return paymentOption; }
    public void setPaymentOption(String paymentOption) { this.paymentOption = paymentOption; }
}
