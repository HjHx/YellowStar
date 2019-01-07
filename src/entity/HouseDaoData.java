package entity;

import util.DBHelp;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

/**
 * @author: 我的袜子都是洞
 * @description:
 * @path: web-entity-HouseDaoData
 * @date: 2019-01-07 21:59
 */
public class HouseDaoData implements HouseDaoInterface
{
    private Connection conn = null;
    private PreparedStatement sql = null;
    private Statement stmt = null;
    @Override
    public boolean addHouse(House house)
    {
        if (house != null)
        {
            try
            {
                conn = DBHelp.getConnection();
                if(conn != null)
                {
                    System.out.println("获取连接成功");
                }else
                {
                    System.out.println("获取连接失败");
                }
                sql = null;
                String SQL = "INSERT INTO yw_houses (username,house_type,area,buy_date,building_no,unit,card_id,phone) VALUES (";
                SQL += "'" + house.getUsername() + "'";
                SQL += ",'"+ house.getHouse_type();
                SQL += "',"+ house.getArea();
                SQL += ",'"+ house.getBuy_time();
                SQL += "','"+ house.getBuilding_no();
                SQL += "','"+ house.getUnit();
                SQL += "',"+ house.getCard_id();
                SQL += ",'"+ house.getPhone()+"'";
                SQL += ")";
                System.out.println("SQL语句："+SQL);
                stmt = conn.createStatement();
                boolean f = stmt.execute(SQL);
                if(f)
                {
                    System.out.println("房产信息添加成功");
                }else
                {
                    System.out.println("!!!m没用！");
                }
                return true;
            }catch (Exception e)
            {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override
    public House getHouse(int hid)
    {
        return null;
    }

}
