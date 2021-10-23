package service.impl;

import dao.airFareDao;
import dao.impl.airFareDaoimpl;
import pojo.airFare;
import service.airFareService;

import java.util.List;

public class airFareServiceimpl implements airFareService {
    airFareDao airFareDao=new airFareDaoimpl();
    @Override
    public int addAirFare(airFare air) {
        return airFareDao.addAirFare(air);
    }

    @Override
    public airFare queryById(Integer id) {
        return airFareDao.queryById(id);
    }

    @Override
    public List<airFare> queryAirFares() {
        return airFareDao.queryAirFares();
    }

    @Override
    public Integer queryCount() {
        return airFareDao.queryCount();
    }

    @Override
    public List<airFare> queryForPageItems(int begin, int pageSize) {
        return airFareDao.queryForPageItems(begin,pageSize);
    }
}
