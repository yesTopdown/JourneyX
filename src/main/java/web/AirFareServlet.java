package web;

import Built.WebUilt;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.Tour;
import pojo.airFare;
import service.airFareService;
import service.impl.airFareServiceimpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("Air")
public class AirFareServlet {
    private airFareService fareService=new airFareServiceimpl();

    @RequestMapping("list")
    public void airList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if("train".equals(action)){
            action="火车";
        }
        if("plane".equals(action)){
            action="机票";
        }
        int o = fareService.queryCount();
        int pageNum=o/4;
        if(o%4==0){
            pageNum+=0;
        }else {
            pageNum+=1;
        }
        List<List<airFare>> andList=new ArrayList<>();
        for (int i=1;i<=pageNum;i++){
            andList.add(fareService.queryForPageItems((i-1)*4,4));
        }
        req.setAttribute("andListJt",andList);
        req.getRequestDispatcher("/xiec/"+action+".jsp").forward(req,resp);
    }


    @RequestMapping("purchase")
    public void purchase(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String id = req.getParameter("id");
        int i = WebUilt.parseInt(id, 0);
        airFare airFa = fareService.queryById(i);
        String name=airFa.getBegin()+"->"+airFa.getEnd();
        req.setAttribute("name",name);
        req.setAttribute("price",airFa.getPrice());
        req.getRequestDispatcher("/xiec/订单.jsp").forward(req,resp);
    }
}
