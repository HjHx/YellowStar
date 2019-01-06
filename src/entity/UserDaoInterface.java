package entity;

/**
 * @author: 我的袜子都是洞
 * @description: 根据用户名获取用户对象
 * @path: web-entity.userDao-UserDaoInterface
 * @date: 2019-01-06 14:30
 */
public interface UserDaoInterface
{
    /**
     * 获取用户对象方法
     * @param username 传入用户名
     * @return 用户对象
     */
    User getUser(String username);

    /**
     * 创建用户
     * @param user 传入用户对象
     * @return 创建结果
     */
    boolean createUser(User user);


}
