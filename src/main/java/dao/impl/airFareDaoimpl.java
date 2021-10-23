package dao.impl;

import dao.airFareDao;
import pojo.Hotel;
import pojo.airFare;

import java.util.List;

public class airFareDaoimpl extends BaseDao implements airFareDao {
    @Override
    public int addAirFare(airFare air) {
        String sql="insert into x_jtong(id,begin,end,priceJ,img_path) value (?,?,?,?,?)";
        return update(sql,air.getId(),air.getBegin(),air.getEnd(),air.getPrice(),air.getImg_path());
    }

    @Override
    public airFare queryById(Integer id) {
        String sql="select id,begin,end,priceJ as price,img_path from x_jtong where id=?";
        return queryForone(airFare.class,sql,id);
    }

    @Override
    public List<airFare> queryAirFares() {
        String sql="select id,begin,end,priceJ as price,img_path from x_jtong";
        return queryForList(airFare.class,sql);
    }

    @Override
    public Integer queryCount() {
        String sql="select count(*) from x_jtong";
        Number o = (Number) queryForSingleValue(sql);
        return o.intValue();
    }

    @Override
    public List<airFare> queryForPageItems(int begin, int pageSize) {
        String sql= "select id,begin,end,priceJ as price,img_path from x_jtong limit ?,?";
        return queryForList(airFare.class,sql,begin,pageSize);
    }
}
