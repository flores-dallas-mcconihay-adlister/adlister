package controllers;

import dao.DaoFactory;
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
		request.getRequestDispatcher("WEB-INF/index.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Long postId = Long.parseLong(request.getParameter("deletePost"));
		Post post = DaoFactory.getPostsDao().uniquePostId(postId);
		DaoFactory.getPostsDao().delete(post);
		response.sendRedirect("/index");



	}
}
