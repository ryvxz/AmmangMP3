package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

@WebServlet(name = "LoginServlet", urlPatterns =
{
    "/LoginServlet"
})
public class LoginServlet extends HttpServlet
{

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    String CorrectUsername = getInitParameter("username");
    String CorrectPassword = getInitParameter("password");
    
    //Login Servlet Captures the values given by the user
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    // Check for blank username or password
    if (username == null || username.trim().isEmpty() || password == null || password.trim().isEmpty()) {
        request.setAttribute("errorMessage", "Username and password cannot be blank.");
        // Forward to error.jsp if credentials are incorrect
        RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
        dispatcher.forward(request, response);
        return; 
    }

    // Check if the provided username and password match the correct credentials
    if (!CorrectUsername.equals(username) && !CorrectPassword.equals(password)) {
        request.setAttribute("errorMessage", "Invalid username and password.");
    } else if (!CorrectUsername.equals(username)) {
        request.setAttribute("errorMessage", "Invalid username.");
    } else if (!CorrectPassword.equals(password)) {
        request.setAttribute("errorMessage", "Invalid password.");
    } else {
        // Forward to success.jsp if credentials are correct
        RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
        dispatcher.forward(request, response);
        return; 
    }

    // If we reach this point, there was an error
    RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
    dispatcher.forward(request, response);
}


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo()
    {
        return "Short description";
    }
}
