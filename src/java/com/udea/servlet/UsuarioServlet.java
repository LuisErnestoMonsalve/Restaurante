/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.servlet;

import com.udea.ejb.UsuarioFacadeLocal;
import com.udea.entity.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JuanDavid
 */
public class UsuarioServlet extends HttpServlet {
   @EJB
   private UsuarioFacadeLocal usuarioFacade;
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
        try {
                String action=request.getParameter("action");
                String url="index.jsp";
                if("list".equals(action)){
                    List<Usuario> findAll= usuarioFacade.findAll();
                    request.getSession().setAttribute("usuario", findAll);
                    url="listAccounts.jsp";
                }else if("login".equals(action)){
                    String u=request.getParameter("nombre");
                    String p=request.getParameter("clave");
                    
                    request.getSession().setAttribute("login", u);
                    url="manager.jsp";
                    
                    }
                    else if("insert".equals(action)){
                    Usuario u= new Usuario();
                    u.setNombre(request.getParameter("nombre"));
                    u.setClave(request.getParameter("clave"));
                    u.setCedula(request.getParameter("cedula"));
                    u.setTelefono(request.getParameter("telefono"));
                    u.setCorreo(request.getParameter("correo"));
                    usuarioFacade.create(u);
                    url="login.jsp";
                   }
                    else if ("delete".equals(action))
                        {
                        String id=request.getParameter("cedula");
                        Usuario a=usuarioFacade.find(Integer.valueOf(id));
                        usuarioFacade.remove(a);
                        url="UsuarioServlet?action=list";
                        
                        }
                        else if ("logout".equals(action)){
                        request.getSession().removeAttribute("login");
                        url="index.jsp";
                        }   
                response.sendRedirect(url);
                
    
        } finally
                {
            
                 out.close();
           
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
