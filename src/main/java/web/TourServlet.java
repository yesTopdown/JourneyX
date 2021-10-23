package web;


import Built.WebUilt;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.Hotel;
import pojo.Shop;
import pojo.Tour;
import service.impl.tourServiceimpl;
import service.tourService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("tour")
public class TourServlet {

    private tourService tourSer=new tourServiceimpl();
    @RequestMapping("listTour")
    public void listHotel(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        List<Tour> listTour=tourSer.queryTours();
        req.setAttribute("tourList",listTour);
        req.getRequestDispatcher("/xiec/旅游.jsp").forward(req,resp);
    }

    @RequestMapping("purchase")
    public void purchase(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String id = req.getParameter("id");
        int i = WebUilt.parseInt(id, 0);
        Tour tour = tourSer.queryById(i);
        req.setAttribute("name",tour.getName());
        req.setAttribute("price",tour.getPrice());
        req.getRequestDispatcher("/xiec/订单.jsp").forward(req,resp);
    }
}
