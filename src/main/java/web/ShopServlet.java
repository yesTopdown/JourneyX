package web;

import Built.WebUilt;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.Hotel;
import pojo.Shop;
import service.ShopService;
import service.impl.ShopServiceimpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("shop")
public class ShopServlet {
    private ShopService shopService=new ShopServiceimpl();
    /**
     * 列表
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @RequestMapping("list")
    public void list(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        List<Shop> shops=shopService.queryShops();
        req.setAttribute("shops",shops);
        req.getRequestDispatcher("/xiec/购物.jsp").forward(req,resp);
    }


}
