package controllers;

import dao.DaoFactory;
import dao.MySQLPostsDao;
import models.Post;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.DeletePostServlet", urlPatterns = "/delete")
public class DeletePostServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/profile.jsp")
				.forward(request, response);
		if(request.getParameter("post-delete") != null) {
			try {
				MySQLPostsDao.delete(Integer.parseInt(request.getParameter("post-delete")));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
