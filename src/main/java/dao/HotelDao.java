package dao;

import pojo.Hotel;

import java.util.List;

public interface HotelDao {
    public int addHotel(Hotel hotel);
    public Hotel queryById(Integer id);
    public List<Hotel> queryHotels();
}
