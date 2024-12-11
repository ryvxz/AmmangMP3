package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "CharacterCountingServlet", urlPatterns =
{
    "/CharacterCountingServlet"
})
public class CharacterCountingServlet extends HttpServlet
{

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");

        // Retrieve the input string from the request parameter
        String inputString = request.getParameter("inputString");

        // Check if inputString is null or empty, and handle the error if so
        if (inputString == null || inputString.trim().isEmpty())
        {
            request.setAttribute("errorMessage", "Input string cannot be empty.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
            dispatcher.forward(request, response);
            return; // Exit if there's an error to avoid further processing
        }

        // Calculate character counts
        int length = inputString.length();
        int digits = inputString.replaceAll("[^0-9]", "").length();
        int vowels = inputString.replaceAll("[^aeiouAEIOU]", "").length();
        int consonants = inputString.replaceAll("[^bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]", "").length();
        int symbols = length - digits - vowels - consonants;

        // Set character count results as request attributes
        request.setAttribute("length", length);
        request.setAttribute("digits", digits);
        request.setAttribute("vowels", vowels);
        request.setAttribute("consonants", consonants);
        request.setAttribute("symbols", symbols);

        // Forward the results to result.jsp for display
        RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
        dispatcher.forward(request, response);
    }

    // Handles the HTTP GET method.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        processRequest(request, response);
    }

    // Handles the HTTP POST method.
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        processRequest(request, response);
    }

    // Returns a short description of the servlet.
    @Override
    public String getServletInfo()
    {
        return "Servlet for counting characters in an input string";
    }
}
