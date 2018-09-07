package main.java.registration;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class RegisterDao {
    public static int register(User user){
        int status = 0;
        try{
            Connection connection = ConnectionProvider.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("insert into user432 values(?,?,?)");
            preparedStatement.setString(1,user.getUname());
            preparedStatement.setString(2,user.getUemail());
            preparedStatement.setString(3,user.getUpass());
            status = preparedStatement.executeUpdate();
        } catch (Exception e){
            System.out.println(e);
        }
        return status;
    }
}
