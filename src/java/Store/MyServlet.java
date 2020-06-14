/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Store;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
public class MyServlet extends HttpServlet {

   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try{
            Class.forName("driverName");
            response.setContentType("text/html;charset=utf-8");
            PrintWriter out=response.getWriter();
            out.print("加载驱动程序成功。");
        }catch(ClassNotFoundException e){
            e.printStackTrace();
        }
        
        //获得数据库连接
        String url="jdbc:mysql://localhost:3306/store?verifyServerCertificate=false&useSSL=false";
         //String url="jdbc:sqlserver://localhost:1433;DatabaseName=CC网上商城";
        String user="root";
        String password="123456";
//        String user="root";
//        String password="601690133";
        
        try(Connection connection=DriverManager.getConnection(url,user,password);){
            System.out.println("数据库连接成功:"+connection);
        }catch(SQLException e){
            e.printStackTrace();
            System.out.println("数据库连接失败......");
        }
    }    
    
}
   
    

    


