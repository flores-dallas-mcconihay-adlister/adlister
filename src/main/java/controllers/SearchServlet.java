package controllers;

import dao.DaoFactory;
import models.Post;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "controllers.ServerServlet", urlPatterns = "/index")
public class SearchServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String searchString = request.getParameter("s");
		try {
			List<Post> postList = DaoFactory.getPostsDao().searchPost(searchString);
			request.setAttribute("posts", postList);
		} catch (SQLException se) {
			se.printStackTrace();
		}

		request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
	}
}

