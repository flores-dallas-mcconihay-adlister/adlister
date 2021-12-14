package controllers;

import dao.DaoFactory;
import models.Post;
import models.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UpdatePostServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       request.getRequestDispatcher("WEB-INF/index.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String updatedTitle = request.getParameter("title");
        String updatedDescription = request.getParameter("description");
        String updatedCategory = request.getParameter("category");
        Long updatedId = Long.parseLong(request.getParameter("id"));

        boolean updateHasErrors = updatedTitle.isEmpty()
                || updatedDescription.isEmpty()
                || updatedCategory.isEmpty();
        if(updateHasErrors){
            response.sendRedirect("/index");
            return;
        }
        User user =  (User) request.getSession().getAttribute("user");
        request.getSession().setAttribute("user", user);
                Post post = new Post(
                        user.getId(),
                        updatedId,
                        updatedTitle,
                        updatedDescription,
                        updatedCategory
                );

        DaoFactory.getPostsDao().update(post);
        response.sendRedirect("/index");

    }
}
