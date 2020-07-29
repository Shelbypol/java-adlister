package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();

    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

   byte[] convertFileContentToBlob(String filePath) throws IOException;

    List<Ad> category(long id);
    Ad findOne(long id);

    List<Ad> findAdsForProfileByUserId(long profileId);

    Ad deleteAd(long id);

    List<Ad> adByID(long ads_id);

    FileInputStream img(String adImg) throws FileNotFoundException;
}
