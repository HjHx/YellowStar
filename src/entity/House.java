package entity;

/**
 * @author: 我的袜子都是洞
 * @description: 房产实体
 * @path: web-entity-House
 * @date: 2019-01-07 21:25
 */
public class House
{
    // 房产id
    private int hid;
    // 房产持有人
    private String username;
    // 房产类型
    private String house_type;
    // 住房面积
    private double area;
    // 购房时间
    private String buy_time;
    // 楼号
    private String building_no;
    // 小区单元
    private String unit;
    // 门牌号
    private int card_id;
    // 手机号码
    private String phone;
    // 停车区域编号
    private String car_id;

    public House() {
    }

    public int getHid() {
        return hid;
    }

    public void setHid(int hid) {
        this.hid = hid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getHouse_type() {
        return house_type;
    }

    public void setHouse_type(String house_type) {
        this.house_type = house_type;
    }

    public double getArea() {
        return area;
    }

    public void setArea(double area) {
        this.area = area;
    }

    public String getBuy_time() {
        return buy_time;
    }

    public void setBuy_time(String buy_time) {
        this.buy_time = buy_time;
    }

    public String getBuilding_no() {
        return building_no;
    }

    public void setBuilding_no(String building_no) {
        this.building_no = building_no;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public int getCard_id() {
        return card_id;
    }

    public void setCard_id(int card_id) {
        this.card_id = card_id;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCar_id() {
        return car_id;
    }

    public void setCar_id(String car_id) {
        this.car_id = car_id;
    }
}
