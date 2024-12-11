package controllers;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebListener
public class HeaderFooterServlet implements ServletContextListener
{

    @Override
    public void contextInitialized(ServletContextEvent sce)
    {
        ServletContext context = sce.getServletContext();

        // Set the header information
        String header = "Subject: ICS2608 / Section: 2CSE / Name: Ammang, Jodimeer";
        context.setAttribute("header", header);

        // Set the footer information with the current date and time
        String mpNumber = "MP3";
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String currentDate = dateFormat.format(new Date());
        String footer = "Date and Time: " + currentDate + " / MP#: " + mpNumber;
        context.setAttribute("footer", footer);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce)
    {
        // Cleanup if necessary
    }
}
