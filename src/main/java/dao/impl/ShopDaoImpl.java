package dao.impl;

import dao.ShopDao;
import pojo.Shop;

import java.util.List;

public class ShopDaoImpl extends BaseDao implements ShopDao {
    /**
     * 添加商品
     * @param shop
     * @return
     */
    @Override
    public int addShop(Shop shop) {
        String sql="insert into x_gwu(id,namegwu,pricegw,img_pathgwu) values(?,?,?,?)";
        return update(sql,shop.getId(),shop.getName(),shop.getPrice(),shop.getImgPath());
    }

    /**
     * 通过id查询商品
     * @param id
     * @return
     */
    @Override
    public Shop queryBookById(Integer id) {
        String sql="select id,`namegwu` as name,`pricegw` as price,img_pathgwu from x_gwu where id=?";
        return queryForone(Shop.class,sql,id);
    }

    /**
     * 查询一些列商品
     * @return
     */
    @Override
    public List<Shop> queryShops() {
        String sql="select id,`namegwu` as name,`pricegw` as price,img_pathgwu from x_gwu";
        return queryForList(Shop.class,sql);
    }
}
