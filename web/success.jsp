<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success</title>
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

            h1 {
                color: #D4A5FF;
                margin: 20px 0;
            }

            p {
                margin: 10px 0;
            }

            textarea {
                background: #2D2D3A;
                border: none;
                border-radius: 4px;
                width: calc(100% - 24px);
                max-width: 350px;
                padding: 12px;
                margin: 10px 0;
                color: #D4A5FF;
                font-size: 16px;
            }

            input[type="submit"] {
                background: #8B5CFF;
                color: white;
                font-weight: bold;
                border: none;
                padding: 12px;
                width: 100%;
                border-radius: 4px;
                margin-top: 20px;
                transition: background 0.3s;
            }

            input[type="submit"]:hover {
                background: #A064FF;
                cursor: pointer;
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
            <h1>Login Successful!</h1>
            <p>Welcome to the Character Counting page!</p>

            <form action="CharacterCountingServlet" method="post">
                <label>Enter a string to analyze:</label><br>
                <textarea name="inputString" rows="5" cols="40"></textarea><br>
                <input type="submit" value="Count Characters"/>
            </form>
        </div>

        <!-- Footer Section -->
        <footer>
            <p><%= application.getAttribute("footer")%></p>
        </footer>
    </body>
</html>
