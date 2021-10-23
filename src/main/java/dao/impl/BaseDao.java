package dao.impl;

import Built.Uilt;
import com.alibaba.druid.util.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public abstract class BaseDao {
    private QueryRunner queryRunner=new QueryRunner();
    /**
     * update()方法执行sql 增删改
     */
    public int update(String sql,Object...args){
        Connection connection= Uilt.getConnection();
        try {
            return queryRunner.update(connection,sql,args);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        finally {
            JdbcUtils.close(connection);
        }
        return -1;
    }
    /**
     * 查询操作
     */
    public <T> T queryForone(Class<T> tClass,String sql,Object...args){
        Connection connection=Uilt.getConnection();
        try {
            return queryRunner.query(connection,sql,new BeanHandler<T>(tClass),args);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            JdbcUtils.close(connection);
        }
        return null;
    }
    /**
     * 多条查询
     */
    public <T> List queryForList(Class<T> tClass,String sql,Object...args){
        Connection connection=Uilt.getConnection();
        try {
            return queryRunner.query(connection,sql,new BeanListHandler<T>(tClass),args);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            JdbcUtils.close(connection);
        }
         return null;
    }
    /**
     *
     执行返回一行一列的sql语句
     * @param sql   执行的sql语句
     * @param args  sql对应的参数值
     * @return
     */
    public Object queryForSingleValue(String sql,Object...args){
        Connection connection=Uilt.getConnection();
        try{
            return queryRunner.query(connection,sql,new ScalarHandler(),args);
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            JdbcUtils.close(connection);
        }
         return null;
    }

    /**
     * 查询数量
     * @param sql
     * @return
     */
     public Object queryCount(String sql){
         Connection connection=Uilt.getConnection();
         try {
             return queryRunner.query(connection,sql,new ScalarHandler());
         } catch (SQLException throwables) {
             throwables.printStackTrace();
         }
         return 0;
     }
}
