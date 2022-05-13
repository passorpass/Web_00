package com.yotam.servlet;

import com.yotam.bean.User;
import com.yotam.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet("/users")
public class AllUsersServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        /*********Begin*********/
        UserDao userDao = new UserDao();
        Collection<User> users = userDao.getAllUsers();
        req.setAttribute("model",users);
        req.getRequestDispatcher("index.jsp").forward(req,resp);

        /*********End*********/
    }
}
