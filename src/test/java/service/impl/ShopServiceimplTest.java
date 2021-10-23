package service.impl;

import org.junit.jupiter.api.Test;
import pojo.Shop;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class ShopServiceimplTest {
     ShopServiceimpl shopServiceimpl=new ShopServiceimpl();
    @Test
    void addShop() {
    }

    @Test
    void queryShopById() {
    }

    @Test
    void queryShops() {
        List<Shop> shops = shopServiceimpl.queryShops();
        for (Shop shop:shops) {
            System.out.println(shop);
        }
    }
}