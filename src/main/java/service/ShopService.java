package service;

import pojo.Shop;

import java.util.List;

public interface ShopService {

    public void addShop(Shop shop);

    public Shop queryShopById(Integer id);

    public List<Shop> queryShops();
}
