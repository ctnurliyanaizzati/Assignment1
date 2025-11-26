package com.app.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ProfileServlet", urlPatterns = {"/ProfileServlet"})
public class ProfileServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 1. Retrieve data using the input names from the HTML form
        String name = request.getParameter("name");
        String studentId = request.getParameter("studentId");
        String program = request.getParameter("program");
        String email = request.getParameter("email");
        String hobbies = request.getParameter("hobbies");
        String intro = request.getParameter("intro");

        // 2. Store the data in the request scope using setAttribute()
        // The JSP page will access these attributes.
        request.setAttribute("profileName", name);
        request.setAttribute("profileId", studentId);
        request.setAttribute("profileProgram", program);
        request.setAttribute("profileEmail", email);
        request.setAttribute("profileHobbies", hobbies);
        request.setAttribute("profileIntro", intro);
        
        // 3. Forward the request to the JSP display page.
        RequestDispatcher view = request.getRequestDispatcher("profileDisplay.jsp");
        view.forward(request, response);
    }
}