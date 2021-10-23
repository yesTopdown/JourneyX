package dao.impl;

import org.junit.jupiter.api.Test;
import pojo.User;

class UserDaoimplTest {
    UserDaoimpl userDaoimpl=new UserDaoimpl();

    @Test
    void queryUserByUsername() {
        User user = userDaoimpl.queryUserByUsername("abcdefg");
        System.out.println(user);
    }

    @Test
    void queryUserByUsernameAndPassword() {
        User user = userDaoimpl.queryUserByUsernameAndPassword("abcdefg", "123456");
        System.out.println(user);
    }

    @Test
    void saveUser() {
        User user=new User(null,"qwerty","123456");
        int i = userDaoimpl.saveUser(user);
        System.out.println(i);

    }
}