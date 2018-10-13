package com.framgia;

import com.framgia.utility.DBUtil;
import com.framgia.services.WebCrawler;

import java.sql.SQLException;

public class Main {

    private static DBUtil db = new DBUtil();

    public static void main(String[] args) throws SQLException {
        // Delete all record in DB
        db.runSql("TRUNCATE record;");
        new WebCrawler().getPostFeedItem("https://viblo.asia/");
    }
}
