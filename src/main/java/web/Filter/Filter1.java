package web.Filter;

import pojo.User;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * 登录验证过滤器
 */
@WebFilter("/*")
public class Filter1 implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        //获取请求路径
        HttpServletRequest httpServletRequest= (HttpServletRequest) request;
        String uri = ((HttpServletRequest) request).getRequestURI();
       // System.out.println(uri);
        if(uri.contains("/order")||uri.contains("/Cart")){
            User user = (User) httpServletRequest.getSession().getAttribute("User");
            if (user == null) {
                request.setAttribute("login_msg","你还没有登录请先登录");
                request.getRequestDispatcher("/xiec/登录.jsp").forward(request, response);
            } else {
                chain.doFilter(request, response);
            }
        }else {
            chain.doFilter(request,response);
        }
    }
}
