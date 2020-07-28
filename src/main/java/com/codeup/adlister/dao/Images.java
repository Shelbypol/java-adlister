package com.codeup.adlister.dao;

import jdk.internal.util.xml.impl.Input;

import java.io.FileInputStream;
import java.io.InputStream;

public interface Images {
     byte[] insert(long adId, InputStream adImg);
}
