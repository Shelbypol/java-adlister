package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();

    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    List<Ad> category(long id);
    Ad findOne(long id);

    List<Ad> findAdsForProfileByUserId(long profileId);

    Ad deleteAd(long id);

    List<Ad> adByID(long ads_id);

}
