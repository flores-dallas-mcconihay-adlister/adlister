package controllers;

import dao.DaoFactory;
import models.Post;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.CreatePostServlet", urlPatterns = "/create")
public class CreatePostServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/partials/createModal.jsp")
                .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Post post = new Post(
                1,
                request.getParameter("title"),
                request.getParameter("description"),
                request.getParameter("category")
        );
        DaoFactory.getPostsDao().insert(post);
        response.sendRedirect("/profile");
    }
}
