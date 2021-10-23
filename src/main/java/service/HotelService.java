package service;

import pojo.Hotel;

import java.util.List;

public interface HotelService {

    public int addHotel(Hotel hotel);

    public Hotel queryById(Integer id);

    public List<Hotel> queryHotels();
}
