package main.java.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDAO {
    public static boolean validate(LoginBean loginBean){
        boolean status =false;
        try{
            Connection connection = ConnectionProvider.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("select * from user432 where email=? and pass=?");
            preparedStatement.setString(1,loginBean.getEmail());
            preparedStatement.setString(2,loginBean.getPass());
            ResultSet resultSet = preparedStatement.executeQuery();
            status = resultSet.next();
        } catch (Exception e){
            System.out.println(e);
        }
        return status;
    }
}
