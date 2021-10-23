package dao.impl;

import org.junit.jupiter.api.Test;
import pojo.airFare;

import java.math.BigDecimal;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class airFareDaoimplTest {
    airFareDaoimpl airFareDaoimpl=new airFareDaoimpl();

    @Test
    void addAirFare() {
        airFareDaoimpl.addAirFare(new airFare(null,"上海","曼谷",new BigDecimal(250),"../img/机票/地1.png"));
        airFareDaoimpl.addAirFare(new airFare(null,"上海","曼谷",new BigDecimal(250),"../img/机票/地2.png"));
        airFareDaoimpl.addAirFare(new airFare(null,"上海","曼谷",new BigDecimal(250),"../img/机票/地3.png"));
        airFareDaoimpl.addAirFare(new airFare(null,"上海","广州",new BigDecimal(250),"../img/机票/地4.png"));
        airFareDaoimpl.addAirFare(new airFare(null,"上海","广州",new BigDecimal(250),"../img/机票/地5.png"));
        airFareDaoimpl.addAirFare(new airFare(null,"上海","曼谷",new BigDecimal(250),"../img/机票/地6.png"));
        airFareDaoimpl.addAirFare(new airFare(null,"上海","曼谷",new BigDecimal(250),"../img/机票/地3.png"));
        airFareDaoimpl.addAirFare(new airFare(null,"上海","曼谷",new BigDecimal(250),"../img/机票/地4.png"));
        airFareDaoimpl.addAirFare(new airFare(null,"上海","广州",new BigDecimal(250),"../img/机票/地5.png"));
        airFareDaoimpl.addAirFare(new airFare(null,"上海","广州",new BigDecimal(250),"../img/机票/地6.png"));
        airFareDaoimpl.addAirFare(new airFare(null,"上海","曼谷",new BigDecimal(250),"../img/机票/地1.png"));
        airFareDaoimpl.addAirFare(new airFare(null,"上海","广州",new BigDecimal(250),"../img/机票/地2.png"));
    }

    @Test
    void queryById() {
        System.out.println(airFareDaoimpl.queryById(1));
    }

    @Test
    void queryAirFares() {
        List<airFare> list=airFareDaoimpl.queryAirFares();
        for (airFare air:list){
            System.out.println(air);
        }
    }

    @Test
    void queryCount() {
        System.out.println(airFareDaoimpl.queryCount());
    }
}