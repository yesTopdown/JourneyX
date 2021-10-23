package web;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.Cart;
import pojo.Order;
import pojo.OrderItem;
import pojo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;

@Controller
@RequestMapping("order")
public class OrderServlet {

    @RequestMapping("Item")
    public void OrderI(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String price = req.getParameter("price");
        long l = System.currentTimeMillis();
        OrderItem orderIt=new OrderItem(name,new BigDecimal(price),Long.toString(l));
        Order oder = (Order) req.getSession().getAttribute("Oder");
        if (oder==null){
            oder=new Order();
            req.getSession().setAttribute("Oder",oder);
        }
        oder.getOrder(orderIt);
        req.setAttribute("ding",Long.toString(l));
//        Cart cart= (Cart) req.getSession().getAttribute("cart");
//        cart.clear();
        req.getRequestDispatcher("/xiec/支付成功.jsp").forward(req,resp);
    }
}
