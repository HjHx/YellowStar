package util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * @author: 我的袜子都是洞
 * @description: 获取数据库连接对象的工具类
 * @path: web-util-DBHelp
 * @date: 2018-12-30 20:05
 */
public class DBHelp
{
    // 数据库
    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String DB_URL = "jdbc:mysql://localhost:3306/YellowStar?useSSL=false&serverTimezone=UTC";

    // 数据库用户名和密码
    private static final String USER = "root";
    private static final String PASS = "";

    private static Connection conn = null;

    // 静态初始化块负责加载驱动
    static
    {
        try
        {
            Class.forName(JDBC_DRIVER);
        }catch(Exception e)
        {
            e.printStackTrace();
        }
    }

    // 单例模式：保证只返回一个Connection
    public static Connection getConnection() throws Exception
    {
        if(conn == null)
        {
            conn = DriverManager.getConnection(DB_URL,USER,PASS);
            return conn;
        }
        return conn;
    }
}
