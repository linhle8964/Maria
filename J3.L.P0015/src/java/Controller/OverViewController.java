
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entity.Cake;
import Entity.NumberPagination;
import Model.GetData;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author duydnse04661
 */
public class OverViewController extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            try {
               
                
                String text = (String) request.getParameter("CurrentPage");
                ArrayList<Cake> arrBlog;
                int currentPage = Integer.parseInt(text);
                int totalPage;
                ArrayList<NumberPagination> arrNumPagin = new ArrayList<NumberPagination>();
                if (currentPage > 0) {
                    GetData dataController = new GetData();
                    totalPage = dataController.getTotalPages();
                    arrBlog = dataController.getDataList(currentPage);
                    if (!arrBlog.isEmpty()) {
                        for (int i = 1; i <= totalPage; i++) {
                            if (i == currentPage) {
                                arrNumPagin.add(new NumberPagination(1, Integer.toString(i)));
                            } else {
                                arrNumPagin.add(new NumberPagination(2, Integer.toString(i)));
                            }
                        }
                    }
                     String page = "OverView";
                    request.setAttribute("arrBlog", arrBlog);
                    request.setAttribute("arrNumPagination", arrNumPagin);
                    request.setAttribute("page", page);
                    request.getRequestDispatcher("/Web-Content/OverView.jsp").forward(request, response);
                }
            } catch (Exception e) {
                request.getRequestDispatcher("/Web-Content/Error.jsp").forward(request, response);
            }
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
