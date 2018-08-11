package user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Set;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
    
    String uid, pwd;
    public void init(){
       ServletContext context =  getServletConfig().getServletContext();
       uid = context.getInitParameter("username");
       pwd  = context.getInitParameter("password");
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String user, pass;
            user = request.getParameter("username");
            pass = request.getParameter("password");
            
            if(user.equals(uid) && pass.equals(pwd)){
                //creating cookie
                Cookie cook = new Cookie("user",user);
                //set cookie expiry of 30 mins
                cook.setMaxAge(30*60);
                response.addCookie(cook);
                response.sendRedirect("welcome");
            }
            else{
                out.println(user);
                out.println(pass);
                out.println(uid);
                out.println(pwd);
                RequestDispatcher view = request.getRequestDispatcher("/login.html");
                out.println("<font color='red'>Invalid username or password</font>");
                view.include(request, response);
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
