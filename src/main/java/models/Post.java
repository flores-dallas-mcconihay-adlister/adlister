package models;

public class Post {
    private long id;
    private long userId;
    private String title;
    private String description;
    private String category;


    public Post(long id, long userId, String title, String description, String category) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.category = category;
    }

    public Post(long userId, String title, String description, String category) {
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.category = category;
    }

    public Post(int i, String title, String description) {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}
