package com.codeup.adlister.dao;

import com.codeup.adlister.models.Cat;

public interface Cats {
    Cat findByCategory(String catName);
    Long insert(Cat cat);
}
