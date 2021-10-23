package pojo;

import java.math.BigDecimal;

public class airFare {
    private Integer id;
    private String begin;
    private String end;
    private BigDecimal price;
    private String img_path;

    public airFare() {
    }

    public airFare(Integer id, String begin, String end, BigDecimal price, String img_path) {
        this.id = id;
        this.begin = begin;
        this.end = end;
        this.price = price;
        this.img_path = img_path;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBegin() {
        return begin;
    }

    public void setBegin(String begin) {
        this.begin = begin;
    }

    public String getEnd() {
        return end;
    }

    public void setEnd(String end) {
        this.end = end;
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
        return "airFare{" +
                "id=" + id +
                ", begin='" + begin + '\'' +
                ", end='" + end + '\'' +
                ", price=" + price +
                ", img_path='" + img_path + '\'' +
                '}';
    }
}
