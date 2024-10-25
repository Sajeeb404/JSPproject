package com.example.CRUD.dao;

import com.example.CRUD.model.UserModel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserDao {


    public static Connection getConnection(){
        Connection connection = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp","root","root");

        } catch (Exception e) {
            e.printStackTrace();

        }

return connection;
    }


    public static int save(UserModel userModel){

        int status = 0;
        String insertSQL = "insert into regi (name, password, email, gender, country) values (?,?,?,?,?)";


        try (Connection connection = getConnection();
            PreparedStatement preparedStatement =connection.prepareStatement(insertSQL)
        ){
            preparedStatement.setString(1, userModel.getName());
            preparedStatement.setString(2, userModel.getPassword());
            preparedStatement.setString(3, userModel.getEmail());
            preparedStatement.setString(4, userModel.getGender());
            preparedStatement.setString(5, userModel.getCountry());

            status = preparedStatement.executeUpdate();


        } catch (Exception e) {
            e.printStackTrace();

        }


        return status;
    }



    public static boolean isValidate(String n, String p){

        boolean status = false;

        String verifySQL = "select password from regi where name = ? ";

        try (Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(verifySQL)){

            preparedStatement.setString(1, n);

            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                String storedPasswrod = resultSet.getString("password");
                if (storedPasswrod.equals(p)){
                status = true;
                }else {
                    status= false;
                }
            }

        } catch (Exception e) {
            e.printStackTrace();

        }


        return status;
    }


    public static List<UserModel> getAllRecords(){
            List<UserModel> userModelList = new ArrayList<>();
            String getAllSQL ="select * from regi";

        try(Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(getAllSQL)) {

            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                UserModel userModel = new UserModel();
                userModel.setId(resultSet.getInt(1));
                userModel.setName(resultSet.getString(2));
                userModel.setPassword(resultSet.getString(3));
                userModel.setEmail(resultSet.getString(4));
                userModel.setGender(resultSet.getString(5));
                userModel.setCountry(resultSet.getString(6));
                userModelList.add(userModel);
            }


        } catch (Exception e) {
            e.printStackTrace();

        }


        return userModelList;

    }


    public static int delete(int id){
        int status = 0;
        String deleteSQL ="delete FROM regi where id =? ";

        try (Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(deleteSQL)){
            preparedStatement.setInt(1, id);
            status = preparedStatement.executeUpdate();
            if (status>0) {
                System.out.println("Delete succssfully.");
            }else {
                System.out.println("not Deleted!");

            }


        } catch (Exception e) {
            e.printStackTrace();

        }


        return status;

    }


    public static UserModel getUserById(int id){

        UserModel userModel = null;
        String getByIdSQL ="select * from regi where id = ?";
        try (Connection connection = getConnection();
        PreparedStatement preparedStatement =connection.prepareStatement(getByIdSQL)){
            preparedStatement.setInt(1, id);

            ResultSet status = preparedStatement.executeQuery();
            while (status.next()) {
                userModel = new UserModel();
                userModel.setId(status.getInt(1));
                userModel.setName(status.getString(2));
                userModel.setPassword(status.getString(3));
                userModel.setEmail(status.getString(4));
                userModel.setGender(status.getString(5));
                userModel.setCountry(status.getString(6));
            }


        } catch (Exception e) {
            e.printStackTrace();

        }


        return userModel;

    }


    public static int updates(UserModel u){
        int status = 0;
        String updateSQL= "update regi set name=?, password=?, email=?, gender=?, country=? where id =?";
        try (Connection connection =getConnection();
        PreparedStatement preparedStatement =connection.prepareStatement(updateSQL)){
            preparedStatement.setString(1, u.getName());
            preparedStatement.setString(2, u.getPassword());
            preparedStatement.setString(3, u.getEmail());
            preparedStatement.setString(4, u.getGender());
            preparedStatement.setString(5, u.getCountry());
            preparedStatement.setInt(6, u.getId());

            status = preparedStatement.executeUpdate();

            if (status>0) {
                System.out.println("Data updated successfully.");
            }else {
                System.out.println("Data not updated! .");

            }


        } catch (Exception e) {
            e.printStackTrace();

        }


        return status;

    }

}
