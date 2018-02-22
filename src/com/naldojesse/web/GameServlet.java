package com.naldojesse.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.concurrent.ThreadLocalRandom;

import javax.servlet.http.HttpSession;


@WebServlet("")
public class GameServlet extends HttpServlet {

    public static int numberGen() {
        return ThreadLocalRandom.current().nextInt(1, 100 + 1);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

//        int answer = (int) session.getAttribute("genNUmber");



        request.setAttribute("answer", session.getAttribute("genNumber"));
        request.setAttribute("number", request.getParameter("user_num"));

        String user_input = request.getParameter("user_num");
        System.out.println(user_input);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        if (session.getAttribute("genNumber") == null) {
            session.setAttribute("genNumber", numberGen());
            System.out.println(session.getAttribute("genNumber"));
        }

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
