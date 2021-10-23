package service.impl;

import dao.TourDao;
import dao.airFareDao;
import dao.impl.Tourimpl;
import dao.impl.airFareDaoimpl;
import pojo.Tour;
import pojo.airFare;
import service.tourService;

import java.util.List;

public class tourServiceimpl implements tourService {
    TourDao tourDao=new Tourimpl();

    @Override
    public int addTour(Tour tour) {
        return tourDao.addTour(tour);
    }

    @Override
    public Tour queryById(Integer id) {
        return tourDao.queryById(id);
    }

    @Override
    public List<Tour> queryTours() {
        return tourDao.queryTours();
    }
}
