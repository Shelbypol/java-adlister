package com.codeup.adlister.models;

public class Cat {
    private long id;
    private String catName;

    public Cat(long id, String catName) {
        this.id = id;
        this.catName = catName;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getCatName() {
        return catName;
    }

    public void setCatName(String catName) {
        this.catName = catName;
    }

}
