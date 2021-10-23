package web;


import Built.Uilt;
import Built.WebUilt;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.Cart;
import pojo.Commodity;
import pojo.Shop;
import service.ShopService;
import service.impl.ShopServiceimpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("Cart")
public class CartServlet {
       private ShopService shopService=new ShopServiceimpl();

    /**
     * 添加商品到购物车
     */
    @RequestMapping("add")
      public void addCom(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String id = req.getParameter("id");
        int i = WebUilt.parseInt(id, 0);
        System.out.println(i);
        Shop shop = shopService.queryShopById(i);
        Commodity com=new Commodity(i,shop.getName(),1,shop.getPrice(),shop.getPrice());
        Cart cart = (Cart) req.getSession().getAttribute("cart");
        if(cart==null){
            cart=new Cart();
            req.getSession().setAttribute("cart",cart);
        }
        cart.addItem(com);
        resp.sendRedirect(req.getContextPath()+"/shop/list");
    }

    /**
     * 删除商品
     */
    @RequestMapping("delete")
    public void deleteCom(HttpServletRequest req,HttpServletResponse resp) throws IOException, ServletException {
        int id=WebUilt.parseInt(req.getParameter("id"),0);
        Cart cart= (Cart) req.getSession().getAttribute("cart");
        if(cart!=null){
            cart.deleteltem(id);
            req.getRequestDispatcher("/xiec/购物车.jsp").forward(req,resp);
        }
    }


    /**
     * 清空购物车
     * @param request
     * @param response
     */
    @RequestMapping("clear")
    protected void clear(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
        Cart cart= (Cart) request.getSession().getAttribute("cart");
        if(cart!=null) {
            cart.clear();
            request.getRequestDispatcher("/xiec/购物车.jsp").forward(request, response);
        }else {
            request.getRequestDispatcher("/xiec/购物车.jsp").forward(request, response);
        }
    }
}
