package servlet;

import entity.House;
import entity.HouseDaoData;
import entity.HouseDaoInterface;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author: 我的袜子都是洞
 * @description:
 * @path: web-servlet-doaddhouse
 * @date: 2019-01-07 21:31
 */
public class doaddhouse extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        super.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        PrintWriter out = resp.getWriter();
        // 从session获取用户类型，判断是否是管理员操作
        int user_type;
        user_type = (int)(req.getSession().getAttribute("user_type"));
        if (user_type == 1)
        {
            String username,house_type,buy_date,building_no,unit,phone,car_id;
            int card_id;
            double area;
            username = req.getParameter("username");
            house_type = req.getParameter("house_type");
            area = Double.valueOf(req.getParameter("area"));
            buy_date  = req.getParameter("buy_date");
            building_no  = req.getParameter("building_no");
            unit  = req.getParameter("unit");
            card_id = Integer.valueOf(req.getParameter("card_id"));
            phone = req.getParameter("phone");
            car_id = req.getParameter("cad_id");
            if(!("".equals(username) || "".equals(house_type) || "".equals(buy_date) || "".equals(building_no)  || "".equals(unit) || "".equals(phone)  || "".equals(car_id) ))
            {
                House h = new House();
                h.setUsername(username);
                h.setHouse_type(house_type);
                h.setArea(area);
                h.setBuy_time(buy_date);
                h.setBuilding_no(building_no);
                h.setUnit(unit);
                h.setCard_id(card_id);
                h.setPhone(phone);
                h.setCar_id(car_id);
                HouseDaoInterface hd = new HouseDaoData();
                boolean f = hd.addHouse(h);
                if (f)
                {
                    System.out.println("添加成功");
                }else
                {
                    System.out.println("添加失败");
                }
                out.println("添加成功");
            }
        }
        // 创建失败，请检查输入是否完全
        String message = "房产信息添加失败，请检查输入是否完全";
        out.println(message);
        req.setAttribute("message",message);
        req.getRequestDispatcher("/comm/error.jsp").forward(req,resp);
    }
}
