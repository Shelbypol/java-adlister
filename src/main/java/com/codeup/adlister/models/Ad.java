package com.codeup.adlister.models;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.InputStream;
@MultipartConfig
public class Ad {
//    public static byte created_date;
    private long id;
    private long userId;
    private String title;
    private String description;
    private Part ad_image;
//    public static Date created_date = new Date();

    public Ad(long id, long userId, String title, String description) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
    }

    public Ad(long userId, String title, String description, Part ad_image) {
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.ad_image = ad_image;
    }

    public Ad(long userId, String title, String description) {
        this.userId = userId;
        this.title = title;
        this.description = description;
    }

//    public Ad(long id, String title, String description, Part part) {
//    }

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

    public InputStream getAd_image() {
        return (InputStream) ad_image;
//        try {
//            return IOUtils.toByteArray(ad_image.getInputStream());
//        } catch (IOException ex) {
//            return null;
//        }
    }

    public void setAd_image(Part ad_image) {
        this.ad_image = ad_image;
    }

//    public Date getCreated_date() {
//        return created_date;
//    }
//
//    public static void setCreated_date() {
//        this.created_date = new Date();
//    }
}
