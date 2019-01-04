package entity;

/**
 * @Author: 我的袜子都是洞
 * @Description: 无数据库测试类
 * @Date: Created in 2019/1/4 14:29
 */
public class UserCheck2
{
    private static User user = null;
    public static User getUser(String username)
    {
        getAdmin();
        System.out.println("正在使用账户测试类，未连接数据库");
        System.out.println("测试账户信息：[uid:"+user.getUid()+",username:"+user.getUsername()+",password"+user.getPassword()+"]");
        return user;
    }

    /**
     * @Description: 获取管理员用户
     * @author: 我的袜子都是洞
     * @date: 2019-01-05 01:30
     */
    public static void getAdmin()
    {
        user = new User();
        user.setUid(1);
        user.setUsername("admin");
        user.setPassword("admin");
        user.setType(1);
        user.setCrate_time("2019-01-04");
    }
    /**
     * @Description: 获取物业账户
     * @author: 我的袜子都是洞
     * @date: 2019-01-05 01:30
     */
    public static void getproperty()
    {
        user = new User();
        user.setUid(2);
        user.setUsername("admin");
        user.setPassword("admin");
        user.setType(2);
        user.setCrate_time("2019-01-04");
    }
    /**
     * @Description: 获取业主账户
     * @author: 我的袜子都是洞
     * @date: 2019-01-05 01:30
     */
    public static void getOwner()
    {
        user = new User();
        user.setUid(3);
        user.setUsername("admin");
        user.setPassword("admin");
        user.setType(3);
        user.setCrate_time("2019-01-01");
    }
}
