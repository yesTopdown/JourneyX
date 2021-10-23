package dao.impl;

import dao.ShopDao;
import org.junit.jupiter.api.Test;
import pojo.Shop;

import java.math.BigDecimal;

import static org.junit.jupiter.api.Assertions.*;

class ShopDaoImplTest {
    private ShopDao shopDao=new ShopDaoImpl();

    @Test
    void addShop() {
        shopDao.addShop(new Shop(null,"shop2",new BigDecimal(9999.9),null));
    }

    @Test
    void queryBookById() {
        Shop shop = shopDao.queryBookById(2);
        System.out.println(shop);
    }

    @Test
    void queryShops() {
    }
}