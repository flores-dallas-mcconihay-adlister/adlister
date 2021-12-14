package dao;

import com.mysql.cj.jdbc.Driver;
import models.Post;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLPostsDao implements Posts {
    //    private static Connection connection;
    private Connection connection = null;

    public MySQLPostsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Post> all() {
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement("SELECT * FROM posts");
            ResultSet resultSet = statement.executeQuery();
            return createPostFromResults(resultSet);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all posts.", e);
        }
    }

    @Override
    public List<Post> searchPost(String searchField) {
        try {
            List<Post> postList = new ArrayList<>();
            String searchQuery = "SELECT id FROM posts WHERE title LIKE ?";
            PreparedStatement statement = connection.prepareStatement(searchQuery, Statement.NO_GENERATED_KEYS);
            statement.setString(1, "%" + searchField + "%");
            statement.executeQuery();
            ResultSet resultSet = statement.getResultSet();
            while (resultSet.next()) {
                postList.add(uniquePostId(resultSet.getLong("id")));
            }
            return postList;
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving searched Post", e);
        }
    }

    @Override
    public Long insert(Post post) {
        try {
            String insertQuery = "INSERT INTO posts(user_id, title, description, category) VALUES (?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            statement.setLong(1, post.getUserId());
            statement.setString(2, post.getTitle());
            statement.setString(3, post.getDescription());
            statement.setString(4, post.getCategory());
            statement.executeUpdate();
            ResultSet resultSet = statement.getGeneratedKeys();
            resultSet.next();
            return resultSet.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new post.", e);
        }
    }

    @Override
    public Post uniquePostId(Long post) {
        String query = "SELECT * FROM posts WHERE id = ? LIMIT 1";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setLong(1, post);
            ResultSet resultSet = statement.executeQuery();
            if (!resultSet.next()) {
                return null;
            }
            return extractPost(resultSet);
        } catch (SQLException e) {
            throw new RuntimeException("Error finding post ID", e);
        }
    }

    public List<Post> allById(Long id) {
        String query = "SELECT * FROM posts WHERE user_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setLong(1, id);
            ResultSet resultSet = statement.executeQuery();
            if (!resultSet.next()) {
                return null;
            }
            return createPostFromResults(resultSet);
        } catch (SQLException e) {
            throw new RuntimeException("Error finding user ID", e);
        }
    }

    @Override
    public void delete(Post post) {
        try {
            String deleteQuery = "DELETE FROM posts WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(deleteQuery, Statement.RETURN_GENERATED_KEYS);
            statement.setLong(1, post.getId());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error deleting post", e);
        }
    }

    private Post extractPost(ResultSet resultSet) {
        try {
            return new Post(
                    resultSet.getLong("id"),
                    resultSet.getLong("user_id"),
                    resultSet.getString("title"),
                    resultSet.getString("description"),
                    resultSet.getString("category")
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error extracting post", e);
        }
    }

    private List<Post> createPostFromResults(ResultSet resultSet) {
        try {
            List<Post> posts = new ArrayList<>();
            while (resultSet.next()) {
                posts.add(extractPost(resultSet));
            }
            return posts;
        } catch (SQLException e) {
            throw new RuntimeException("Error creating post", e);
        }
    }

    public void update(Post post) {

        try {
            String updateQuery = "UPDATE posts set title = ?, description = ?, category = ? WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(updateQuery);
            statement.setString(1, post.getTitle());
            statement.setString(2, post.getDescription());
            statement.setString(3, post.getCategory());
            statement.setLong(4, post.getId());
        } catch (SQLException e) {
            throw new RuntimeException("Error updating Post!", e);
        }

    }

}