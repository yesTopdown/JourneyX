package pojo;

import java.util.ArrayList;
import java.util.List;

public class Order {
    private List<OrderItem> list=new ArrayList<>();

    public Order() {
    }

    public Order(List<OrderItem> list) {
        this.list = list;
    }

    public List<OrderItem> getList() {
        return list;
    }

    public void setList(List<OrderItem> list) {
        this.list = list;
    }

    public void getOrder( OrderItem orderItem){
        list.add(orderItem);
    }
    @Override
    public String toString() {
        return "Order{" +
                "list=" + list +
                '}';
    }
}
