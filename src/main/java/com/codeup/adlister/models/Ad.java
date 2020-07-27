package com.codeup.adlister.models;

import java.text.SimpleDateFormat;
import java.util.Date;
//import java.util.Date;

public class Ad {
    private long id;
    private long userId;
    private String title;
    private String description;
    private boolean saved;
    private String created_date;

//    String pattern = "yyyy-MM-dd";
//    SimpleDateFormat formatter = new SimpleDateFormat(pattern);
//    String mysqlDateString = formatter.format(created_date);

    public Ad() {}

    public Ad(long id, String title, String description, String created_date) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.created_date =created_date;
    }

    public Ad(long id, String title, String description, boolean saved, String created_date) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.saved = saved;
        this.created_date =created_date;
    }

    public Ad(long id, long userId, String title, String description, boolean saved, String created_date) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.saved = saved;
        this.created_date = created_date;
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

    public String getCreated_date() {
        return created_date;
    }

    public void setCreated_date(String created_date) {
    }

    public boolean isSaved() {
        return saved;
    }

    public void setSaved(boolean saved) {
        this.saved = saved;
    }
}
