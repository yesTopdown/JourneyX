package service.impl;

import org.junit.jupiter.api.Test;
import pojo.Tour;
import service.tourService;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class tourServiceimplTest {

    @Test
    void addTour() {
    }

    @Test
    void queryById() {
    }

    @Test
    void queryTours() {
        tourService tourSer=new tourServiceimpl();
        List<Tour> tours = tourSer.queryTours();
        for (Tour tour:tours){
            System.out.println(tour);
        }
    }
}