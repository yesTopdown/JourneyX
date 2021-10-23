package service.impl;

import dao.ShopDao;
import dao.impl.ShopDaoImpl;
import pojo.Shop;
import service.ShopService;

import java.util.List;

public class ShopServiceimpl implements ShopService {
    private ShopDao shopDao=new ShopDaoImpl();

    @Override
    public void addShop(Shop shop) {
        shopDao.addShop(shop);
    }

    @Override
    public Shop queryShopById(Integer id) {
        return shopDao.queryBookById(id);
    }

    @Override
    public List<Shop> queryShops() {
        return shopDao.queryShops();
    }
}
