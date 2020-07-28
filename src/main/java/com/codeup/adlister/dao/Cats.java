package com.codeup.adlister.dao;

import com.codeup.adlister.models.Cat;

import java.util.List;

public interface Cats {
    List<Cat> All();

//    List<Cat> cat();

    Long insert(long adsIdFk , long catsIdFk);

    void deleteAd(long id);

}
