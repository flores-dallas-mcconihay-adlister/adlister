package dao;

//import com.codeup.adlister.models.Ad;
import models.Post;

import java.util.ArrayList;
import java.util.List;

public class ListPostsDao implements Posts {
    private List<Post> posts;

    public List<Post> all() {
        if (posts == null) {
            posts = generatePosts();
        }
        return posts;
    }

    public Long insert(Post post) {
        // make sure we have ads
        if (posts == null) {
            posts = generatePosts();
        }
        // we'll assign an "id" here based on the size of the ads list
        // really the dao would handle this
        post.setId((long) posts.size());
        posts.add(post);
        return post.getId();
    }




    private List<Post> generatePosts() {
        List<Post> posts = new ArrayList<>();
        posts.add(new Post(
            1,
            1,
            "playstation for sale",
            "This is a slightly used playstation",
                "Used"
        ));
        posts.add(new Post(
            2,
            1,
            "Super Nintendo",
            "Get your game on with this old-school classic!",
                "Used"
        ));
        posts.add(new Post(
            3,
            2,
            "Junior Java Developer Position",
            "Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript",
                "entry level"
        ));
        posts.add(new Post(
            4,
            2,
            "JavaScript Developer needed",
            "Must have strong Java skills",
                "entry level"
        ));
        return posts;
    }
}
