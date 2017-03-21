/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.jaunt.Element;
import com.jaunt.Elements;
import com.jaunt.UserAgent;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modal.details;

/**
 *
 * @author Lenovo1
 */
public class Sports extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
        try{
         String name=request.getParameter("name");
            UserAgent user=new UserAgent();
            user.visit("http://ahmedabadmirror.indiatimes.com/getsearchdata.cms?query=sports");
            Elements element=user.doc.findFirst("<body>").findFirst("<div class=\"container-inner\">").findEach("<div class=\"left-part1 searchcontent\">").findEvery("<div style=\"border-bottom:1px solid #eeeeee;\">").findEach("<div style=\"padding:5px 5px;\">").findEach("<a href>");
            List<String> element2=user.doc.findFirst("<body>").findFirst("<div class=\"container-inner\">").findEach("<div class=\"left-part1 searchcontent\">").findEvery("<div style=\"border-bottom:1px solid #eeeeee;\">").findEach("<div style=\"padding:5px 5px;\">").findAttributeValues("<a href>");
            
//            request.setAttribute("el", element);
            
            user.visit("http://indianexpress.com/?s=sports");
            Elements element1=user.doc.findFirst("<body>").findFirst("<div id=\"section\">").findFirst("<div class=\"container\">").findFirst("<div class=\"row\">").findFirst("<div class=\"leftpanel\">").findFirst("<div class=\"search-result\">").findEach("<div class=\"details\">").findEach("<a href>");
            List<String> element3 =user.doc.findFirst("<body>").findFirst("<div id=\"section\">").findFirst("<div class=\"container\">").findFirst("<div class=\"row\">").findFirst("<div class=\"leftpanel\">").findFirst("<div class=\"search-result\">").findEach("<div class=\"details\">").findAttributeValues("<a href>");
            
            details d=new details();
            d.setAhmedabadmirror(element);
            d.setTheindianexpress(element1);
            d.setAhmurl(element2);
            d.setindurl(element3);
            request.setAttribute("el1",d);
            RequestDispatcher rd=request.getRequestDispatcher("Sports.jsp");
            rd.forward(request, response);
//            out.println(element.innerHTML());
        }
        catch(Exception e){
             out.println(e.getMessage());
    }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
