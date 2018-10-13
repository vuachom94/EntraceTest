package com.framgia.services;

import com.framgia.utility.DBUtil;
import com.framgia.utility.Query;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class WebCrawler {

    private static DBUtil db = new DBUtil();
    private Query query = new Query();

    public void getPostFeedItem(String URL) throws SQLException {
        try {
            Document document = Jsoup.connect(URL).get();
            Elements post_feed_item = document.getElementsByClass("post-feed-item");
            for (Element page : post_feed_item) {
                if (page.text().matches("^.*?(Java|java|JAVA).*$")) {
                    System.out.println("Don't save");
                } else {
                    PreparedStatement ps = db.con.prepareStatement(query.INSERT_QUERY);
                    ps.setString(1, page.select("div.user--inline>a").text());
                    ps.setString(2, page.select("div.text-muted>span").text());
                    ps.setString(3, page.select("div.post-title--inline>h3").text());
                    ps.setString(4, page.select("div.tags").text());
                    ps.setString(5, page.select("div.stats>span.stats-item[title='Views']").text());
                    ps.execute();
                }
            }
        } catch (IOException e) {
            System.err.println("For '" + URL + "': " + e.getMessage());
        }
    }
}
