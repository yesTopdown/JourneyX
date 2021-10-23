package service.impl;

import dao.UserDao;
import dao.impl.UserDaoimpl;
import pojo.User;
import service.UserService;

public class UserServiceimpl implements UserService {
    private UserDao userDao=new UserDaoimpl();

    /**
     * 注册
     * @param user
     */
    @Override
    public void registUser(User user) {
        userDao.saveUser(user);
    }

    /**
     * 登录
     * @param user
     * @return
     */
    @Override
    public User login(User user) {
        return userDao.queryUserByUsernameAndPassword(user.getUsername(),user.getPassword());
    }

    /**
     * 判断用户名是否可用
     * @param username
     * @return
     */
    @Override
    public boolean existUsername(String username) {
        User user1=userDao.queryUserByUsername(username);
        if(user1==null) {
            return false;
        }
        return true;
    }
}
