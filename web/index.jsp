<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
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
                align-items: center;
            }

            .login {
                background: #2A1F4F;
                color: #EEE;
                border-radius: 8px;
                padding: 40px;
                max-width: 350px;
                width: 100%;
                box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.5);
                text-align: center;
            }

            .login h2 {
                color: #D4A5FF;
                margin-bottom: 10px;
                font-size: 26px;
            }

            .login p {
                margin-bottom: 20px;
            }

            .login input[type="text"],
            .login input[type="password"] {
                background: #2D2D3A;
                border: none;
                border-radius: 4px;
                width: calc(100% - 24px);
                padding: 12px;
                margin: 10px 0;
                color: #D4A5FF;
                font-size: 16px;
            }

            .login input[type="text"]:hover,
            .login input[type="password"]:hover {
                background: #403F55;
                outline: none;
            }

            .login input[type="submit"] {
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

            .login input[type="submit"]:hover {
                background: #A064FF;
                cursor: pointer;
            }

            .links {
                display: flex;
                justify-content: space-between;
                border-top: 1px solid #EEE;
                padding-top: 10px;
                margin-top: 20px;
                font-size: 0.9em;
            }

            .links a {
                color: #D4A5FF;
                text-decoration: none;
            }

            .links a:hover {
                text-decoration: underline;
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
            <form class="login" action="LoginServlet" method="POST">
                <h2>Welcome, User!</h2>
                <p>Please log in</p>
                <input type="text" name="username" placeholder="Username" required />
                <input type="password" name="password" placeholder="Password" required />
                <input type="submit" value="Log In" />
                <div class="links">
                    <a href="#">Forgot password</a>
                    <a href="#">Register</a>
                </div>
            </form>
        </div>
        <!-- Footer Section -->
        <footer>
            <p><%= application.getAttribute("footer") %></p>
        </footer>
    </body>
</html>