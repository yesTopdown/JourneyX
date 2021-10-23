package dao.impl;

import dao.HotelDao;
import pojo.Hotel;

import java.util.List;

public class HotelDaoimpl extends BaseDao implements HotelDao {
    /**
     * 添加酒店
     * @param hotel
     * @return
     */
    @Override
    public int addHotel(Hotel hotel) {
        String sql="insert into x_jdian(id,name,price,img_path) value (?,?,?,?)";
        return update(sql,hotel.getId(),hotel.getName(),hotel.getPrice(),hotel.getImg_path());
    }

    /**
     * 通过id查询
     * @param id
     * @return
     */
    @Override
    public Hotel queryById(Integer id) {
        String sql="select id,name,price,img_path from x_jdian where id=?";
        return queryForone(Hotel.class,sql,id);
    }

    @Override
    public List<Hotel> queryHotels() {
        String sql="select id,name,price,img_path from x_jdian";
        return queryForList(Hotel.class,sql);
    }
}
