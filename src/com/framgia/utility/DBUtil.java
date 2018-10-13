package com.framgia.utility;

import java.sql.*;

public class DBUtil {

    public Connection con = null;

    public DBUtil() {
        String DB_Username = "root";
        String DB_Password = "123456";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/framgia?useSSL=false";
            con = DriverManager.getConnection(url, DB_Username, DB_Password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public void runSql(String sql) throws SQLException {
        Statement st = con.createStatement();
        st.execute(sql);
    }

}