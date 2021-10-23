package service.impl;

import dao.HotelDao;
import dao.impl.HotelDaoimpl;
import pojo.Hotel;
import service.HotelService;

import java.util.List;

public class HotelServiceimpl implements HotelService {
    private HotelDao hotelDao=new HotelDaoimpl();
    @Override
    public int addHotel(Hotel hotel) {
        return hotelDao.addHotel(hotel);
    }

    @Override
    public Hotel queryById(Integer id) {
        return hotelDao.queryById(id);
    }

    @Override
    public List<Hotel> queryHotels() {
        return hotelDao.queryHotels();
    }
}
