package dao;

import pojo.Tour;
import pojo.airFare;

import java.util.List;

public interface TourDao {
    public int addTour(Tour tour);
    public Tour queryById(Integer id);
    public List<Tour> queryTours();
}
