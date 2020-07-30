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
public class CatsSearchServlet extends HttpServlet{

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        request.getRequestDispatcher("/WEB-INF/ads/cat-search.jsp").forward(request, response);

        String catBtn = request.getParameter("catBtn");
        Long cats = null;
        if(catBtn.equalsIgnoreCase("all ads")){
            cats = 1L;
        } else if (catBtn.equalsIgnoreCase("for sale")) {
            cats = 2L;
        } else if (catBtn.equalsIgnoreCase("community")) {
            cats = 3L;
        } else if (catBtn.equalsIgnoreCase("housing")) {
            cats = 4L;
        }else if (catBtn.equalsIgnoreCase("services")) {
            cats = 5L;
        }else if (catBtn.equalsIgnoreCase("jobs")) {
            cats = 6L;
        }

        List<Ad> category = DaoFactory.getAdsDao().category(cats);
        request.setAttribute("category", category);
        request.getRequestDispatcher("/WEB-INF/ads/cat-search.jsp").forward(request, response);
    }

}