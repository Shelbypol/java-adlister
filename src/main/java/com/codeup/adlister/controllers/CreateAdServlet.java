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
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

import static java.lang.Integer.parseInt;
import static java.lang.Long.parseLong;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
@MultipartConfig
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
        FileInputStream fs = null;

        Date now = new Date();
        String pattern = "yyyy-MM-dd";
        SimpleDateFormat formatter = new SimpleDateFormat(pattern);
        String mysqlDateString = formatter.format(now);

//        File adImg = new File(request.getParameter("adImg"));
//        fs = new FileInputStream(adImg);
//        FileInputStream inputStream = new FileInputStream(adImg);
//        Part img = request.getPart("adImg");
//        FileInputStream img =  DaoFactory.getAdsDao().img(request.getParameter("adImg"));

        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("adImg");
        InputStream inputStream = null;
        if (filePart != null) {
            // debug messages
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }

//        String message = null; // message will be sent back to client


        Ad ad = new Ad(
            user.getId(),
            request.getParameter("title"),
            request.getParameter("description"),
            mysqlDateString,
            inputStream
//            request.getParameter("adImg")
        );

        long category = Long.parseLong((request.getParameter("category")));
        long insert = (DaoFactory.getAdsDao().insert(ad));

        DaoFactory.getAdsDao().insert(ad);

        DaoFactory.getCatsDao().insert(insert, category);
//        DaoFactory.getimgDao().insert(insert, adImg);
        response.sendRedirect("/ads");
    }
}

