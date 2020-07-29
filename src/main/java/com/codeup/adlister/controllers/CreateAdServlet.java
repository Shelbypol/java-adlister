package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

import static java.lang.Integer.parseInt;
import static java.lang.Long.parseLong;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
@MultipartConfig(maxFileSize = 16177215)
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

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {


        User user = (User) request.getSession().getAttribute("user");

        Date now = new Date();
        String pattern = "yyyy-MM-dd";
        SimpleDateFormat formatter = new SimpleDateFormat(pattern);
        String mysqlDateString = formatter.format(now);

//        byte[] adImg = DaoFactory.getAdsDao().convertFileContentToBlob(request.getParameter("adImg"));

        Ad ad = new Ad(
            user.getId(),
            request.getParameter("title"),
            request.getParameter("description"),
            mysqlDateString
        );

        long category = Long.parseLong((request.getParameter("category")));
        long insert = (DaoFactory.getAdsDao().insert(ad));

        DaoFactory.getAdsDao().insert(ad);

        DaoFactory.getCatsDao().insert(insert, category);
        response.sendRedirect("/ads");
    }
}

