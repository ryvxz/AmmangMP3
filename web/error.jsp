<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
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
                align-items: center; /* Center items horizontally */
            }

            .error {
                background: #C44D58;
                color: white;
                border-radius: 8px;
                padding: 20px;
                text-align: center;
                max-width: 350px;
            }

            h1 {
                 margin-bottom: 10px;
            }
            
            p {
                margin: 10px 0;
            }

            footer {
                margin-top: 20px;
                font-size: 0.9em;
                color: #C0C0C0;
            }
        </style>
    </head>
    <body>
        <!-- Header Section -->
        <header>
            <p><%= application.getAttribute("header")%></p>
        </header>

        <!-- Main Content Section -->
        <div class="content">
            <div class="error">
                <h1>Error!</h1>
                <p><%= request.getAttribute("errorMessage") %></p>
                <p><a href="index.jsp" style="color: white; text-decoration: underline;">Go back to login</a></p>
            </div>
        </div>

        <!-- Footer Section -->
        <footer>
            <p><%= application.getAttribute("footer") %></p>
        </footer>
    </body>
</html>
