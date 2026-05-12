package my.model;

import java.util.Date;                                        // 수정 1

public class Purchase {                                       // 수정 2
    private int id;
    private String userId;
    private int flowerId;                                     // 수정 3 (DB: flowerId)
    private int amount;                                       // 수정 4 (DB: amount)
    private int price;
    private int payment;
    private Date purchaseDate;                                // 수정 5

    public Purchase() {}                                      // 수정 6

    public Purchase(String userId, int flowerId, int amount, int price, int payment, Date purchaseDate) {  // 수정 7
        this.userId = userId;
        this.flowerId = flowerId;                             // 수정 3
        this.amount = amount;                                 // 수정 4
        this.price = price;
        this.payment = payment;
        this.purchaseDate = purchaseDate;                     // 수정 8
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getUserId() { return userId; }
    public void setUserId(String userId) { this.userId = userId; }

    public int getFlowerId() { return flowerId; }             // 수정 3
    public void setFlowerId(int flowerId) { this.flowerId = flowerId; }

    public int getAmount() { return amount; }                 // 수정 4
    public void setAmount(int amount) { this.amount = amount; }

    public int getPrice() { return price; }
    public void setPrice(int price) { this.price = price; }

    public int getPayment() { return payment; }
    public void setPayment(int payment) { this.payment = payment; }

    public Date getPurchaseDate() { return purchaseDate; }    // 수정 5, 8
    public void setPurchaseDate(Date purchaseDate) { this.purchaseDate = purchaseDate; }
}