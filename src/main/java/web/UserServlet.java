package web;


import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pojo.User;
import service.UserService;
import service.impl.UserServiceimpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("user")
public class UserServlet  {
    private UserService userService=new UserServiceimpl();
    /**
     * 登录
     */
    @RequestMapping(value = "login")
    public void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        //获取请求的参数
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        // 调用 userService.login()登录处理业务
        User loginUser = userService.login(new User(null, username, password));
        //if等于null,说明登录失败
        if(loginUser==null){
            //把错误信息回写到表单项中
            req.setAttribute("msg","用户名或密码错误");
            req.setAttribute("username",username);
            //跳回登录页面
            req.getRequestDispatcher("/xiec/登录.jsp").forward(req,resp);
        }else {
            //登录成功页面
            req.getSession().setAttribute("User",loginUser);
            req.getRequestDispatcher("/xiec/登录成功.jsp").forward(req,resp);
        }
    }

    /**
     * 注册
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @RequestMapping(value = "regist",method = RequestMethod.POST)
    public void regist(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
        //获取请求的参数
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        String code= req.getParameter("scord");
        resp.setContentType("application/json;charset=utf-8");
        Map<String,Object> map=new HashMap<>();
        //检查验证码是否正确
        if("jgmxj".equalsIgnoreCase(code)){
          userService.registUser(new User(null,username,password));
          req.getRequestDispatcher("/xiec/注册成功.jsp").forward(req,resp);
        }else {
            // 把回显信息，保存到 Request 域中
            req.setAttribute("msg", "验证码错误！！");
            req.setAttribute("username", username);
            System.out.println("验证码[" + code + "]错误");
            req.getRequestDispatcher("/xiec/旅游注册页面.jsp").forward(req, resp);
        }
    }
    @RequestMapping("exist")
    public void exist(HttpServletRequest req,HttpServletResponse resp) throws IOException {
        String username=req.getParameter("username");
        resp.setContentType("application/json;charset=utf-8");
        Map<String,Object> map=new HashMap<>();
        if(userService.existUsername(username)) {
            System.out.println("用户名[" + username + "]已存在!");
            // 把回显信息，保存到 Request 域中
            map.put("userExsit", true);
            map.put("msg", "此用户名已注册");
        }else {
            //不存在
            map.put("userExsit",false);
            map.put("msg","用户名可用");
        }
        ObjectMapper mapper=new ObjectMapper();
        mapper.writeValue(resp.getWriter(),map);
    }
}
