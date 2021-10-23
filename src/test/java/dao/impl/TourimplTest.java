package dao.impl;

import org.junit.jupiter.api.Test;
import pojo.Tour;

import java.math.BigDecimal;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class TourimplTest {
    Tourimpl tourimpl=new Tourimpl();

    @Test
    void addTour() {

        tourimpl.addTour(new Tour(null,"上海直飞三亚5天4晚自由行",new BigDecimal(250),"../img/旅游/跟3.png"));
        tourimpl.addTour(new Tour(null,"上海直飞三亚5天4晚自由行",new BigDecimal(250),"../img/旅游/跟4.png"));
        tourimpl.addTour(new Tour(null,"上海直飞三亚5天4晚自由行",new BigDecimal(250),"../img/旅游/跟5.png"));
        tourimpl.addTour(new Tour(null,"上海直飞三亚5天4晚自由行",new BigDecimal(250),"../img/旅游/跟5.png"));
        tourimpl.addTour(new Tour(null,"上海直飞三亚5天4晚自由行",new BigDecimal(250),"../img/旅游/跟4.png"));
        tourimpl.addTour(new Tour(null,"上海直飞三亚5天4晚自由行",new BigDecimal(250),"../img/旅游/跟3.png"));
        tourimpl.addTour(new Tour(null,"上海直飞三亚5天4晚自由行",new BigDecimal(250),"../img/旅游/跟2.png"));
        tourimpl.addTour(new Tour(null,"上海直飞三亚5天4晚自由行",new BigDecimal(250),"../img/旅游/跟1.png"));
        tourimpl.addTour(new Tour(null,"上海直飞三亚5天4晚自由行",new BigDecimal(250),"../img/旅游/跟1.png"));
        tourimpl.addTour(new Tour(null,"上海直飞三亚5天4晚自由行",new BigDecimal(250),"../img/旅游/跟3.png"));
        tourimpl.addTour(new Tour(null,"上海直飞三亚5天4晚自由行",new BigDecimal(250),"../img/旅游/跟4.png"));
        tourimpl.addTour(new Tour(null,"上海直飞三亚5天4晚自由行",new BigDecimal(250),"../img/旅游/跟5.png"));

    }

    @Test
    void queryById() {
        System.out.println(tourimpl.queryById(1));
    }

    @Test
    void queryTours() {
        List<Tour> tours = tourimpl.queryTours();
        for (Tour tour:tours){
            System.out.println(tour);
        }
    }
}