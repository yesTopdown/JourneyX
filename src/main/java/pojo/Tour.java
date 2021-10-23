package pojo;

import java.math.BigDecimal;

public class Tour {
    private Integer id;
    private String name;
    private BigDecimal price;
    private String img_path;

    public Tour() {
    }

    public Tour(Integer id, String name, BigDecimal price, String img_path) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.img_path = img_path;
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

    public String getImg_path() {
        return img_path;
    }

    public void setImg_path(String img_path) {
        this.img_path = img_path;
    }

    @Override
    public String toString() {
        return "Tour{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", img_path='" + img_path + '\'' +
                '}';
    }
}
