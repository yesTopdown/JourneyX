package web;


import Built.WebUilt;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.Hotel;
import service.HotelService;
import service.impl.HotelServiceimpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("Hotel")
public class HotelServlet {
    private HotelService hotelService=new HotelServiceimpl();

    @RequestMapping("listHotel")
    public void listHotel(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        List<Hotel> list=hotelService.queryHotels();
        req.setAttribute("hotelList",list);
        req.getRequestDispatcher("/xiec/酒店.jsp").forward(req,resp);
    }

    @RequestMapping("purchase")
    public void purchase(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String id = req.getParameter("id");
        int i = WebUilt.parseInt(id, 0);
        Hotel hotel=hotelService.queryById(i);
        req.setAttribute("name",hotel.getName());
        req.setAttribute("price",hotel.getPrice());
        req.getRequestDispatcher("/xiec/订单.jsp").forward(req,resp);
    }

}
