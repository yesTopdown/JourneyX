package Built;

import com.alibaba.druid.util.JdbcUtils;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class Uilt {
    private static final String dirverClassName;
    private static final String url;
    private static final String username;
    private static final String password;
    private static ThreadLocal<Connection> conns=new ThreadLocal<>();
   // private static DruidDataSource dataSource;
    static{
        //获取属性文件中的内容
        Properties properties=new Properties();
        try{
           InputStream inputStream= JdbcUtils.class.getClassLoader().getResourceAsStream("db.properties");
            properties.load(inputStream);
            //创建连接池
           // dataSource= (DruidDataSource) DruidDataSourceFactory.createDataSource(properties);
        }catch (Exception e){
            e.printStackTrace();
        }
        dirverClassName=properties.getProperty("DriverName");
        url=properties.getProperty("url");
        username=properties.getProperty("user");
        password=properties.getProperty("password");
    }
    /**
     * 注册驱动的方法
     */
    public static void loadDriver(){
        try{
            Class.forName(dirverClassName);
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    /**
     * 获得连接
     */
    public static Connection getConnection(){
        Connection conn=null;
      //  Connection conn=conns.get();
        try{
            loadDriver();
            conn= DriverManager.getConnection(url,username,password);
            //conn=dataSource.getConnection();
            //conns.set(conn); //保存到 ThreadLocal 对象中，供后面的 jdbc 操作使用
           // conn.setAutoCommit(false);//手动设置管理事务
        }catch(Exception e){
            e.printStackTrace();
        }
        return conn;
    }

    /**
     * 提交事务，并关闭释放连接
     */
    public static void commitAndClose(){
        Connection connection=conns.get();
        if(connection!=null){ //如果不等于null，说明 之前用过连接，操作过数据库
            try{
                connection.commit();//提交事务
            }catch (Exception e){
                e.printStackTrace();
            }finally {
                try {
                    connection.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
        }
        //移除此线程局部变量当前线程的值。
        conns.remove(); //一定要执行remove操作，否则出错，（因为Tomcat服务器底层使用了线程池技术）
    }

    /**
     * 回滚事务
     */
    public static void rollbackAndClose(){
        Connection connection=conns.get();
        if(connection!=null){
            try{
                connection.rollback();//回滚事务
            }catch (Exception e){
                e.printStackTrace();
            }finally {
                try {
                    connection.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
        }
        conns.remove();
    }
    /**
     * 释放资源
//     */
    public static void release(Connection con){
        if(con!=null){
            try{
                con.close();
            }catch (Exception e){
                e.printStackTrace();
            }
            con=null;
        }
    }
}
