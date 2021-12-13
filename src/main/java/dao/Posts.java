package dao;

import models.Post;
import java.util.List;

public interface Posts {

    List<Post> all();

    Long insert(Post post);

    void delete(Post post);

    Post uniquePostId(Long post);

	List<Post> searchPost(String searchString);
}
