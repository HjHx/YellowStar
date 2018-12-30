<%@ page import="entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="entity.UserCheck" %>
<%
    request.setCharacterEncoding("utf-8");
    String username = "";
    String password = "";
    username = (String)request.getParameter("username");
    password = (String)request.getParameter("password");
    System.out.println("POST过来的username:"+username+",password:"+password);

    if( "".equals(username) )
    {
        out.print("用户名为空");
    }else
    {
        if ("".equals(password))
        {
            out.print("密码为空");
        }else
        {
            User user =  UserCheck.getUser(username);
            // 账户不存在
            if (user == null)
            {
                out.print("用户:"+username+"不存在");
            }else
            {
                if(user.getUsername().equals(username) && user.getPassword().equals(password))
                {
                    // 密码正确
                    System.out.println("账户密码验证成功，允许登陆");
                    out.print("登陆成功");
                }else
                {
                    // 密码错误
                    System.out.println("账户存在，密码错误，禁止登陆");
                    out.print("密码错误");
                }
            }
        }
    }


%>