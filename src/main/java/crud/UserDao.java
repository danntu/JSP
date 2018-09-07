package main.java.crud;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;

public class UserDao {
    public static Connection getConnnection(){
        Connection connection = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
        } catch (Exception e){
            System.out.println(e);
        }
        return connection;
    }

    public static int save(User user){
        int status =0;
        try{
            Connection connection = getConnnection();
            PreparedStatement preparedStatement = connection.prepareStatement(
                    "insert into register(name,password,email,sex,country) values(?,?,?,?,?)");
            preparedStatement.setString(1,user.getName());
            preparedStatement.setString(2,user.getPassword());
            preparedStatement.setString(3,user.getEmail());
            preparedStatement.setString(4,user.getSex());
            preparedStatement.setString(5,user.getCountry());
            status= preparedStatement.executeUpdate();
        } catch ( Exception e){
            System.out.println(e);
        }
        return status;
    }

    public static int update(User user){
        int status =0;
        try{
            Connection connection = getConnnection();
            PreparedStatement preparedStatement = connection.prepareStatement(
                    "update register set name=?,password=?,email=?,sex=?,country=? where id=?");
            preparedStatement.setString(1,user.getName());
            preparedStatement.setString(2,user.getPassword());
            preparedStatement.setString(3,user.getEmail());
            preparedStatement.setString(4,user.getSex());
            preparedStatement.setString(5,user.getCountry());
            preparedStatement.setInt(6,user.getId());
            status = preparedStatement.executeUpdate();
        } catch (Exception e){
            System.out.println(e);
        }
        return status;
    }
    public static int delete(User user){
        int status = 0;
        try{
            Connection connection = getConnnection();
            PreparedStatement preparedStatement = connection.prepareStatement("delete from register where id=?");
            preparedStatement.setInt(1,user.getId());
            status = preparedStatement.executeUpdate();
        } catch (Exception e){
            System.out.println(e);
        }
        return status;
    }

    public static List<User> getAllRecords(){
        List<User> list = new ArrayList<>();
        try{
            Connection connection = getConnnection();
            PreparedStatement preparedStatement = connection.prepareStatement("select * from register");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                User user = new User();
                user.setId(resultSet.getInt("id"));
                user.setName(resultSet.getString("name"));
                user.setPassword(resultSet.getString("password"));
                user.setEmail(resultSet.getString("email"));
                user.setSex(resultSet.getString("sex"));
                user.setCountry(resultSet.getString("country"));
            }
        } catch (Exception e){
            System.out.println(e);
        }
        return list;
    }
    public static User getRecordById(int id){
        User user = null;
        try{
            Connection connection = getConnnection();
            PreparedStatement preparedStatement = connection.prepareStatement("select * from register where id=?");
            preparedStatement.setInt(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                user = new User();
                user.setId(resultSet.getInt("id"));
                user.setName(resultSet.getString("name"));
                user.setPassword(resultSet.getString("password"));
                user.setEmail(resultSet.getString("email"));
                user.setSex(resultSet.getString("sex"));
                user.setCountry(resultSet.getString("country"));
            }
        } catch (Exception e){
            System.out.println(e);
        }
        return user;
    }
}
