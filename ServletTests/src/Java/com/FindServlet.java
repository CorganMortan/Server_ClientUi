package com;



import database.ItemsCRUD;
import model.PcStatistics;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

/**
 * Created by mihai on 1/17/2018.
 */
public class FindServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html");
        PrintWriter resp_write=resp.getWriter();
      /*  resp_write.println("<h1>method:POST</h1>");
            resp_write.println("<h1>ip:" + req.getParameter("ipaddres") + "</h1>");
            resp_write.println("<h1>mac:" + req.getParameter("macaddres") + "</h1>");
            resp_write.println("<h1>bicointwallet:" + req.getParameter("bitcoinwallet") + "</h1>");*/
        resp_write.println("<h1>method:POST</h1>");
        resp_write.println("<h1>cpu:" +req.getParameter("cpu") + "</h1>");
        resp_write.println("<h1>videocontroller:" +req.getParameter("videocontroller") + "</h1>");
        resp_write.println("<h1>macaddress:" +req.getParameter("macaddress") + "</h1>");
        resp_write.println("<h1>totalphysicalmemory:" +req.getParameter("totalphysicalmemory") + "</h1>");
        resp_write.println("<h1>osversion:" +req.getParameter("osversion") + "</h1>");
        resp_write.println("<h1>ipaddress:" +req.getParameter("ipaddress") + "</h1>");
    }



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html");
        PrintWriter resp_write=resp.getWriter();
        resp_write.println("<h1>method:GET</h1>");
        resp_write.println("<h1>cpu:" +req.getParameter("cpu") + "</h1>");
        resp_write.println("<h1>videocontroller:" +req.getParameter("videocontroller") + "</h1>");
        resp_write.println("<h1>macaddress:" +req.getParameter("macaddress") + "</h1>");
    }

}
