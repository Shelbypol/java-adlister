package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Cat;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import static java.lang.Integer.parseInt;
import static java.lang.Long.parseLong;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");

        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.setAttribute("userId", user.getId());
        request.getRequestDispatcher("/WEB-INF/ads/create.jsp")
            .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user = (User) request.getSession().getAttribute("user");

        Date now = new Date();
        String pattern = "yyyy-MM-dd";
        SimpleDateFormat formatter = new SimpleDateFormat(pattern);
        String mysqlDateString = formatter.format(now);

        Ad ad = new Ad(
            user.getId(),
            request.getParameter("title"),
            request.getParameter("description"),
            mysqlDateString
        );

        int category = Integer.parseInt((request.getParameter("category")));
//        long insert = (DaoFactory.getAdsDao().insert(ad));

        DaoFactory.getAdsDao().insert(ad);

//        DaoFactory.getCatsDao().insert(insert, category);
        response.sendRedirect("/ads");
    }
}






//        String category = (request.getParameter("category"));
//        int cat;
//        switch (category){
//            case "For Sale":
//                cat = 1;
//                break;
//            case "Community":
//                cat = 2;
//                break;
//            case "Housing":
//                cat = 3;
//                break;
//            case "Services":
//                cat = 4;
//                break;
//            case "Jobs":
//                cat = 5;
//                break;
//            default:
//                throw new IllegalStateException("Unexpected value: " + category);
//        }
