package com;

import java.io.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.lang.*;
import java.util.*;
import javax.servlet.RequestDispatcher;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet("/ready_sell")
public class SellNow extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        try {
            Con con=new Con();
           
            String pName = request.getParameter("pname");
            String pDetails = request.getParameter("pdetails");
            String pPrice = request.getParameter("pprice");
            String pPic=request.getParameter("pic");
            String image;
            String imagePath;
            int id=con.getId();
            
            
            
            
            int i=con.sellNow(pName, pDetails, id, pPrice);
            out.println(pName+pDetails+id+pPrice);
            if(i!=0)
            {
                RequestDispatcher dispatcer = request.getRequestDispatcher("Home.jsp");
                dispatcer.forward(request, response);
            }
            else
            {
                out.println("Somthing Went Wrong!!!");
            }

        } catch (Exception e) {
            out.print(e);
        }
    }
}