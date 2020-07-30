package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import java.io.IOException;
import java.util.List;

public interface Ads {
    List<Ad> all();

    Long insert(Ad ad);

    List<Ad> category(long id);

    Ad findOne(long id);

    List<Ad> findAdsForProfileByUserId(long profileId);

    Ad deleteAd(long id);

    List<Ad> adByID(long ads_id);

}
