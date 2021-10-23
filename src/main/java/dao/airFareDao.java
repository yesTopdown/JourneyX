package dao;

import pojo.airFare;

import java.util.List;

public interface airFareDao {
    public int addAirFare(airFare airF);
    public airFare queryById(Integer id);
    public List<airFare> queryAirFares();
    public Integer queryCount();
    public List<airFare> queryForPageItems(int begin, int pageSize); //每页显示内容
}
