package no.hvl.dat104.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Adminlogout",urlPatterns = "/adminlogout")
public class Adminlogout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sesjon = request.getSession(false);
        if (sesjon == null || sesjon.getAttribute("loggedInAdmin") == null) {
            response.sendRedirect("adminlogin"  + "?requiresLogin");
        } else {
        	sesjon.invalidate();
    		request.getRequestDispatcher("adminlogin").forward(request, response);
        }	
	}
}
