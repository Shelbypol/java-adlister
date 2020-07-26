package com.codeup.adlister.dao;

import models.Config;

public class DaoFactory {
    private static Ads adsDao;
    private static Users usersDao;
    private static Cats catsDao;
    private static Config config = new Config();

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config);
        }
        return usersDao;
    }

    public static Cats getCatsDao() {
        if (catsDao == null) {
            catsDao = new MySQLCatsDao(config);
        }
        return catsDao;
    }
}
