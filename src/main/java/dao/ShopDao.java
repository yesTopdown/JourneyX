package dao;

import pojo.Shop;

import java.util.List;

public interface ShopDao {
    public int addShop(Shop shop);
    public Shop queryBookById(Integer id);
    public List<Shop> queryShops();
}
