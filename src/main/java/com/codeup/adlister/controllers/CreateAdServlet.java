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
import java.io.*;
import java.nio.file.Paths;
import java.util.Date;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
@MultipartConfig
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/ads/create.jsp")
                .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        User user = (User) request.getSession().getAttribute("user");

//trying

//        if (request.getContentType()==null) return;
        // for input type=text controls
//        String image = (new BufferedReader(new InputStreamReader(request.getPart("ad-image").getInputStream()))).readLine();

//         for input type=file controls
//        InputStream inStr = request.getPart("ad-image").getInputStream();
//        char[] charArray = new char[inStr.available()];
//        new InputStreamReader(inStr).read(charArray);
//        String contents = new String(charArray);
//
////  end trying
//
//        Part filePart = request.getPart("ad-image"); // Retrieves <input type="file" name="file">
//        String fileName = (Paths.get(String.valueOf(filePart.getInputStream())).getFileName().toString()); // MSIE fix.
//        InputStream fileContent = filePart.getInputStream();

        Ad ad = new Ad(
                user.getId(),
                request.getParameter("title")),
                request.getParameter("description"),

        );


        DaoFactory.getAdsDao().insert(ad);
        response.sendRedirect("/ads");
    }
}
