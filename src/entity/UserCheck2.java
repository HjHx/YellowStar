package entity;

/**
 * @Author: 我的袜子都是洞
 * @Description: 无数据库测试类
 * @Date: Created in 2019/1/4 14:29
 */
public class UserCheck2
{
    public static User getUser(String username)
    {
        User user = new User();
        user.setUid(1);
        user.setUsername("admin");
        user.setPassword("admin");
        user.setType(1);
        user.setCrate_time("2019-01-04");
        System.out.println("没有使用数据库，直接使用的测试类");
        System.out.println("用户ID:"+user.getUid()+",username:"+user.getUsername());
        return user;
    }
}
