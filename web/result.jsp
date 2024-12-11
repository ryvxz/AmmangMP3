<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Character Count Result</title>
        <link href="https://fonts.googleapis.com/css?family=Raleway:400,700" rel="stylesheet">
        <style>
            body {
                background: #1A1A2E;
                font-family: Raleway, sans-serif;
                color: #EEE;
                display: flex;
                flex-direction: column;
                justify-content: space-between;
                height: 100vh;
                margin: 0;
            }

            header, footer {
                background: #2A1F4F; 
                color: #D4A5FF; 
                text-align: center;
                padding: 10px 0; 
            }

            .content {
                text-align: center;
                flex-grow: 1;
                display: flex;
                flex-direction: column;
                justify-content: center;
                max-width: 350px; /* Set a maximum width to match the login form */
                margin: 0 auto; /* Center the content */
            }

            h1 {
                color: #D4A5FF;
                margin: 20px 0;
            }

            p {
                margin: 10px 0;
            }
        </style>
    </head>
    <body>
        <!-- Header Section -->
        <header>
            <p><%= application.getAttribute("header") %></p>
        </header>

        <!-- Main Content Section -->
        <div class="content">
            <h1>Character Count Results</h1>
            <p>String Length: <%= request.getAttribute("length") %></p>
            <p>Number of Digits: <%= request.getAttribute("digits") %></p>
            <p>Number of Vowels: <%= request.getAttribute("vowels") %></p>
            <p>Number of Consonants: <%= request.getAttribute("consonants") %></p>
            <p>Number of Symbols: <%= request.getAttribute("symbols") %></p>
        </div>

        <!-- Footer Section -->
        <footer>
            <p><%= application.getAttribute("footer") %></p>
        </footer>
    </body>
</html>
