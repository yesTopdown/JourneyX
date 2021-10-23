package pojo;

import java.math.BigDecimal;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

public class Cart {
    private BigDecimal totalPrice; //总价钱
    private Integer totalCount;  //总数量
    /**
     * key=商品编号
     * value=商品信息
     */
    private Map<Integer,Commodity> items=new LinkedHashMap<>();//购物车中的商品

    /**
     * 获取商品数量
     * @return
     */
    public Integer getTotalCount(){
        Integer totalCount=0;
        Iterator<Map.Entry<Integer,Commodity>> entry=items.entrySet().iterator();
        while (entry.hasNext()){
            Map.Entry<Integer,Commodity> entry1= entry.next();
            totalCount+= entry1.getValue().getCount();
        }
        return totalCount;
    }

    /**
     * 获取总价格
     * @return
     */
    public BigDecimal getTotalPrice() {
        BigDecimal totalPrice=new BigDecimal(0);
        Iterator<Map.Entry<Integer,Commodity>> entry=items.entrySet().iterator();
        while (entry.hasNext()){
            Map.Entry<Integer,Commodity> entry1= entry.next();
            totalPrice=totalPrice.add(entry1.getValue().getTotalPrice());
        }
        return totalPrice;
    }

    public void setTotalPrice(BigDecimal totalPrice) {
        this.totalPrice = totalPrice;
    }

    public Map<Integer, Commodity> getItems() {
        return items;
    }

    public void setItems(Map<Integer, Commodity> items) {
        this.items = items;
    }
    /**
     * 添加商品
     */
    public void addItem(Commodity Commodity){
        Commodity item=items.get(Commodity.getId());
        if(item==null){
            items.put(Commodity.getId(),Commodity);
        }else {
            item.setCount(item.getCount()+1);
            item.setTotalPrice(item.getPrice().multiply(new BigDecimal(item.getCount())));
        }
    }
    
    /**
     * 商品的删除
     * @param id
     */
      public void deleteltem(Integer id){
        items.remove(id);
    }
    /**
     * 清空购物车
     */
       public void clear(){
        items.clear();
    }

    /**
     * 修改商品的数量
     * @return
     */
    public void updateCount(Integer id,Integer count){
        //查看购物车里面有无此商品
        Commodity Commodity=items.get(id);
        if(Commodity!=null){
            Commodity.setCount(count);
            Commodity.setTotalPrice(Commodity.getPrice().multiply(new BigDecimal(Commodity.getCount())));
        }
    }
    @Override
        public String toString() {
            return "Cart{" +
                    "totalPrice=" + totalPrice +
                    ", totalCount=" + totalCount +
                    ", items=" + items +
                    '}';
        }
}
