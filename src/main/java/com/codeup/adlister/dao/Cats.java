package com.codeup.adlister.dao;

import com.codeup.adlister.models.Cat;

import java.util.List;

public interface Cats {
    List<Cat> All();

//    List<Cat> cat();

    Long insert(Long adsIdFk , Long catsIdFk);

    void deleteAd(long id);

}
