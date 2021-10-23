package dao.impl;

import dao.TourDao;
import dao.airFareDao;
import pojo.Tour;
import pojo.airFare;

import java.util.List;

public class Tourimpl extends BaseDao implements TourDao {

    @Override
    public int addTour(Tour tour) {
        String sql="insert into x_lyou(id,name,price,img_path) value (?,?,?,?)";
        return update(sql,tour.getId(),tour.getName(),tour.getPrice(),tour.getImg_path());
    }

    @Override
    public Tour queryById(Integer id) {
        String sql="select id,name,price,img_path from x_lyou where id=?";
        return queryForone(Tour.class,sql,id);
    }

    @Override
    public List<Tour> queryTours() {
        String sql="select id,name,price,img_path from x_lyou";
        return queryForList(Tour.class,sql);
    }
}
