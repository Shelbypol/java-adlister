package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import static java.lang.Long.parseLong;

@WebServlet(name ="controllers.CatsSearchServlet", urlPatterns = "/cat-search")
public class CatsSearchServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        long cat = Long.parseLong((request.getParameter("category")));
        System.out.println(cat);

        List<Ad> category = DaoFactory.getAdsDao().category(cat);
        request.setAttribute("category", category);
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }
}