package com.yotam.servlet;

import com.yotam.bean.User;
import com.yotam.dao.UserDao;

import javax.jws.soap.SOAPBinding;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

// This servlet must be called: /showuser?id=<username>

@WebServlet("/showuser")
public class ShowUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /*********Begin*********/


        /*********End*********/
    }
}
