package entity;
/**
 * @author: 我的袜子都是洞
 * @description: 用户的实体类
 * @path: web-entity-User
 * @date: 2018-12-30 20:11
 */
public class User
{
    private int uid;
    private String username = "";
    private String password = "";
    private int user_type = 3;
    private String crate_time;

    public User() { }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public int getUser_type() {
        return user_type;
    }

    public void setUser_type(int user_type) {
        this.user_type = user_type;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCrate_time()
    {
        return this.crate_time;
    }

    public void setCrate_time(String crate_time)
    {
        this.crate_time = crate_time;
    }
}
