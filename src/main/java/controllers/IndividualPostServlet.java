package controllers;

import dao.DaoFactory;
import models.Post;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "IndividualPostServlet", urlPatterns = "/single")
public class IndividualPostServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long onePost = Long.parseLong(request.getParameter("singlePost"));
        Post singlePost = DaoFactory.getPostsDao().uniquePostId(onePost);

        request.getRequestDispatcher("WEB-INF/single.jsp").forward(request, response);

    }
}
