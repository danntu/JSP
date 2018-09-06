package main.java.pagination;

import main.java.customtag.Loop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EmpDAO {
    public static Connection getConnection(){
        Connection connection = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","","");
        } catch (Exception e){
            System.out.println(e);
        }
        return connection;
    }

    public static List<Emp> getRecords(int start,int total){
        List<Emp> list = new ArrayList<>();
        try{
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(
                    "select * from emp limit " +(start-1)+","+total);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                Emp emp = new Emp();
                emp.setId(resultSet.getInt(1));
                emp.setName(resultSet.getString(2));
                emp.setSalary(resultSet.getFloat(3));
                list.add(emp);
            }
            connection.close();
        } catch (Exception e){
            System.out.println(e);
        }
        return list;
    }
}
