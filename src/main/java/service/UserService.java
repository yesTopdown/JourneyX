package service;

import pojo.User;

public interface UserService {
    /**
     * 注册用户
     */
    public void registUser(User user);
    /**
     * 登录
     */
    public User login(User user);
    /**
     * 检查 用户名是否可用
     */
    public boolean existUsername(String username);
}
