package controllers;

import dao.DaoFactory;
import models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "controllers.ProfileServlet", urlPatterns = "/profile")
public class ProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User registeredUser = (User) request.getSession().getAttribute("user");
        User userPost = DaoFactory.getUsersDao().findByUsername(registeredUser.getUsername());
        request.setAttribute("post", DaoFactory.getPostsDao().allById(userPost.getId()));
        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }
}

