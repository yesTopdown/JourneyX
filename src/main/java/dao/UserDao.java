package dao;

import pojo.User;

public interface UserDao {
    /**
     * 查询用户名
     */
    public User queryUserByUsername(String name);
    /**
     * 查询用户名和密码
     */
    public User queryUserByUsernameAndPassword(String username,String password);
    /**
     * 保存用户
     */
    public int saveUser(User user);
}
