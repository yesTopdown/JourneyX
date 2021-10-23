package pojo;

import java.math.BigDecimal;

public class Shop {
    private Integer id;
    private String name;
    private BigDecimal price;
    private String imgPath="../img/购物/物2.png";

    public Shop() {
    }

    public Shop(Integer id, String name, BigDecimal price, String imgPath) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.imgPath = imgPath;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getImgPath() {
        return imgPath;
    }

    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }

    @Override
    public String toString() {
        return "Shop{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", imgPath='" + imgPath + '\'' +
                '}';
    }
}
