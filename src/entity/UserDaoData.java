package entity;
import util.DBHelp;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * @author: 我的袜子都是洞
 * @description: 操作用户的实体类
 * @path: web-entity-UserDaoData
 * @date: 2018-12-30 20:13
 */
public class UserDaoData implements UserDaoInterface
{
    private Connection conn = null;
    private ResultSet rs = null;
    private Statement stmt = null;
    private PreparedStatement sql = null;

    @Override
    public User getUser(String username)
    {
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
                    user = new User();
                    user.setUid(rs.getInt("uid"));
                    user.setUsername(rs.getString("username"));
                    user.setPassword(rs.getString("password"));
                    user.setUser_type(rs.getInt("user_type"));
                    user.setCrate_time(rs.getString("create_time"));
                    System.out.println("用户ID:"+user.getUid()+",username:"+user.getUsername());
                }
                return user;
            }catch (Exception e)
            {
                e.printStackTrace();

            }finally
            {
                close();
                return user;
            }
        }
        return null;
    }

    @Override
    public boolean createUser(User user) {
        if (user != null)
        {
            // 判断用户是否已经存在
            User has_user = null;
            has_user = getUser(user.getUsername());
            if (has_user == null)
            {
                try
                {
                    conn = DBHelp.getConnection();
                    sql = null;
                    sql = conn.prepareStatement("INSERT INTO yw_users (username,password,user_type,create_time) VALUES (?,?,?,?)");
                    sql.setString(1,user.getUsername());
                    sql.setString(2,user.getPassword());
                    sql.setInt(3,user.getUser_type());
                    sql.setString(4,user.getCrate_time());
                    sql.execute();
                    System.out.println("用户"+user.getUsername()+"创建成功");
                    // 关系资源
                    close();
                    return true;
                } catch (Exception e)
                {
                    e.printStackTrace();
                }
            }else
            {
                // 用户已存在，禁止创建
                System.out.println("用户" + has_user.getUsername() + "已存在");
                return false;
            }
        }
        System.out.println("创建用户失败,UserDaoDate");
        return false;
    }

    public ArrayList<User> getAll()
    {
        ArrayList<User> list = new ArrayList<User>();
        try
        {
            conn = DBHelp.getConnection();
            sql = conn.prepareStatement("SELECT * FROM yw_users");
            rs = sql.executeQuery();
            while (rs.next())
            {
                User u = new User();
                u.setUsername(rs.getString("username"));
                u.setUid(rs.getInt("uid"));
                u.setCrate_time(rs.getString("create_time"));
                u.setUser_type(rs.getInt("user_type"));
                list.add(u);
            }
            System.out.println("用户数据获取成功");
            return list;
        }catch (Exception e)
        {
            e.printStackTrace();
        }finally
        {
            close();
        }
        return null;
    }

    /**
     * 及时关闭资源
     */
    private void close()
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
        if(conn !=null)
        {
            try
            {
                conn.close();
            }catch (Exception e)
            {
                e.printStackTrace();
            }
        }
    }

}
