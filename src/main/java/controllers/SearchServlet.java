package controllers;

import dao.DaoFactory;
import models.Post;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.ServerServlet", urlPatterns = "/search")
public class SearchServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String searchString = request.getParameter("s");
		List<Post> postList = DaoFactory.getPostsDao().searchPost(searchString);
		request.setAttribute("posts", postList);

		request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
	}
}

