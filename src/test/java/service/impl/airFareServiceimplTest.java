package service.impl;

import org.junit.jupiter.api.Test;
import pojo.airFare;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class airFareServiceimplTest {
    airFareServiceimpl airFare=new airFareServiceimpl();
    @Test
    void queryForPageItems() {
        List<pojo.airFare> list = airFare.queryForPageItems(0, 4);
        for (airFare air:list){
            System.out.println(air);
        }
    }
}