package entity;

/**
 * @author: 我的袜子都是洞
 * @description: 房产处理类
 * @path: web-entity-HouseDaoInterface
 * @date: 2019-01-07 21:55
 */
public interface HouseDaoInterface
{
    /**
     * 添加房产信息
     * @param house 房产实体
     * @return 创建结果
     */
    boolean addHouse(House house);

    /**
     * 获得指定房产号的房产信息
     * @param hid
     * @return 房产实体
     */
    House getHouse(int hid);
}
