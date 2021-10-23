package service.impl;

import org.junit.jupiter.api.Test;
import pojo.Hotel;
import service.HotelService;

import java.math.BigDecimal;

import static org.junit.jupiter.api.Assertions.*;

class HotelServiceimplTest {
    HotelService hotelService=new HotelServiceimpl();

    @Test
    void addHotel() {
        hotelService.addHotel(new Hotel(null,"罗马假日酒店",new BigDecimal(250),"../img/酒店/国1.png"));
        hotelService.addHotel(new Hotel(null,"罗马假日酒店",new BigDecimal(250),"../img/酒店/国2.png"));
        hotelService.addHotel(new Hotel(null,"罗马假日酒店",new BigDecimal(250),"../img/酒店/国3.png"));
        hotelService.addHotel(new Hotel(null,"罗马假日酒店",new BigDecimal(250),"../img/酒店/国4.png"));
        hotelService.addHotel(new Hotel(null,"罗马假日酒店",new BigDecimal(250),"../img/酒店/国3.png"));
        hotelService.addHotel(new Hotel(null,"罗马假日酒店",new BigDecimal(250),"../img/酒店/国4.png"));
        hotelService.addHotel(new Hotel(null,"罗马假日酒店",new BigDecimal(250),"../img/酒店/国1.png"));
        hotelService.addHotel(new Hotel(null,"罗马假日酒店",new BigDecimal(250),"../img/酒店/国2.png"));
    }

    @Test
    void queryById() {
        System.out.println(hotelService.queryById(1));
    }
}