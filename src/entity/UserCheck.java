package entity;
import util.DBHelp;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * @author: 我的袜子都是洞
 * @description: 操作用户的实体类
 * @path: web-entity-UserCheck
 * @date: 2018-12-30 20:13
 */
public class UserCheck
{
    public static User getUser(String username)
    {
        Connection conn = null;
        ResultSet rs = null;
        PreparedStatement sql;
        Statement stmt = null;
        User user = null;
        if(username != null)
        {
            try
            {
                conn = DBHelp.getConnection();
                sql = conn.prepareStatement("SELECT * FROM yw_users WHERE username=?");
                sql.setString(1,username);
                rs = sql.executeQuery();
                if(rs.next())
                {
                    System.out.println("用户存在");
                    user = new User();
                    user.setUid(rs.getInt("uid"));
                    user.setUsername(rs.getString("username"));
                    user.setPassword(rs.getString("password"));
                    user.setType(rs.getInt("type"));
                    user.setCrate_time(rs.getString("create_time"));
                    System.out.println("用户ID:"+user.getUid()+",username:"+user.getUsername());
                }
                return user;
            }catch (Exception e)
            {
                e.printStackTrace();

            }finally
            {
                // 及时关闭资源
                if(rs != null)
                {
                    try
                    {
                        rs.close();
                        rs = null;
                    }catch(Exception e)
                    {
                        e.printStackTrace();
                    }
                }
                if(stmt != null)
                {
                    try
                    {
                        stmt.close();
                        stmt = null;
                    }catch(Exception e)
                    {
                        e.printStackTrace();
                    }
                }
                return user;
            }
        }
        return null;
    }
}
