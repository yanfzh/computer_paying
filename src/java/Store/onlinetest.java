package Store;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Administrator
 */
public class onlinetest {
    public static void main(String [] args)
    {   String driverName="com.mysql.cj.jdbc.Driver";
        String dbURL="jdbc:mysql://localhost:3306/store";
        String userName="root";
        String userPwd="123456";
        try
       {   Class.forName(driverName);
	   System.out.println("加载驱动成功！");
       }catch(Exception e){
	   e.printStackTrace();
	   System.out.println("加载驱动失败！");
       }
       try{
	   Connection dbConn=DriverManager.getConnection(dbURL,userName,userPwd);
           System.out.println("连接数据库成功！");
      }catch(Exception e)
      {    e.printStackTrace();
	   System.out.print("SQL Server连接失败！");
      }		
    }
}
