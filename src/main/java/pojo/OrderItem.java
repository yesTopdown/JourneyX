package pojo;

import java.math.BigDecimal;

public class OrderItem {
    private String name;  //商品名
    private BigDecimal toPrice;  //价钱
    private String orderBer; //订单号

    public OrderItem() {
    }

    public OrderItem(String name, BigDecimal toPrice, String orderBer) {
        this.name = name;
        this.toPrice = toPrice;
        this.orderBer = orderBer;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigDecimal getToPrice() {
        return toPrice;
    }

    public void setToPrice(BigDecimal toPrice) {
        this.toPrice = toPrice;
    }

    public String getOrderBer() {
        return orderBer;
    }

    public void setOrderBer(String orderBer) {
        this.orderBer = orderBer;
    }

    @Override
    public String toString() {
        return "Order{" +
                "name='" + name + '\'' +
                ", toPrice=" + toPrice +
                ", orderBer='" + orderBer + '\'' +
                '}';
    }
}
