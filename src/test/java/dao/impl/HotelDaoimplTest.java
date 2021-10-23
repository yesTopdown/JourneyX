package dao.impl;

import dao.HotelDao;
import org.junit.jupiter.api.Test;
import pojo.Hotel;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class HotelDaoimplTest {
    HotelDao hotelDao=new HotelDaoimpl();
    @Test
    void queryHotels() {
        List<Hotel> hotels = hotelDao.queryHotels();
        for(Hotel hotelDao1:hotels){
            System.out.println(hotelDao1);
        }
    }
}