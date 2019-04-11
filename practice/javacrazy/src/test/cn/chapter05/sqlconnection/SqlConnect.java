package test.cn.chapter05.sqlconnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

public class SqlConnect {
    public static void main(String[] args) throws SQLException{



        Properties info = new Properties();
        info.put("host","localhost");
        info.put("port",8080);
        info.put("database","student");
        info.put("username","rungle");
        info.put("password","123");

        String url = "localhost:8080";
        Connection conn = DriverManager.getConnection("mysql",info);
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("select * from dabe");

        List<SqlConnect> sqlConnectList = new ArrayList<SqlConnect>();



    }
}