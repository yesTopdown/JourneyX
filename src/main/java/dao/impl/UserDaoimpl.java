package dao.impl;

import dao.UserDao;
import pojo.User;

public class UserDaoimpl extends BaseDao implements UserDao {
    /**
     * 用户名查询
     * @param username
     * @return
     */
    @Override
    public User queryUserByUsername(String username) {
        String sql="select `id`,`username`,`password` from user where `username`=?";
        return queryForone(User.class,sql,username);
    }

    /**
     * 根据用户名和密码查询
     * @param username
     * @param password
     * @return
     */
    @Override
    public User queryUserByUsernameAndPassword(String username, String password) {
        String sql="select `id`,`username`,`password` from user where `username`=? and `password`=?";
        return queryForone(User.class,sql,username,password);
    }

    /**
     * 保存用户名信息
     * @param user
     * @return
     */
    @Override
    public int saveUser(User user) {
        String sql="insert into user(`username`,`password`) value(?,?)";
        return update(sql,user.getUsername(),user.getPassword());
    }
}
