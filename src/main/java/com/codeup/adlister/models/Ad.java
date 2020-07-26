package com.codeup.adlister.models;

import java.util.Date;

public class Ad {
    private long id;
    private long userId;
    private String title;
    private String description;
    private boolean saved;
    private Date created_date;

    public Ad(){}

    public Ad(long id, String title, String description) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.created_date = new Date();
    }

    public Ad(long id, String title, String description, boolean saved) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.saved = saved;
        this.created_date = new Date();
    }

    public Ad(long id,long userId, String title, String description, Date created_date) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.created_date = new Date();
    }

    public Ad(long id,long userId, String title, String description, boolean saved) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.saved = saved;
        this.created_date = new Date();
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

    public Date getCreated_date() {
        return created_date;
    }

    public void setCreated_date(Date created_date) {
        this.created_date = created_date;
    }

    public boolean isSaved() {
        return saved;
    }

    public void setSaved(boolean saved) {
        this.saved = saved;
    }
}
