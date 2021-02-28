<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<html>
    <head>
        <title>Time Entry</title>
        <style>
            table {
                    font-family: arial, sans-serif;
                    border-collapse: collapse;
                    width: 500px;
            }

            td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even) {
                background-color: #94ab9e;
                color:black;
            }
        </style>

    </head>
    <body>
        <div id="header">
            <h1 id="headerLabel" align="center">Hello, <%= request.getAttribute("username") %></h1>
        </div>

        <h3 align="center">Time Entry</h3>

        <table align="center">
            <tr>
                <th style="text-align:center;">Date</th>
                <th style="text-align:center;">Start Time</th>
                <th style="text-align:center;">Hours</th>
            </tr>
            <tr>
                <td style="text-align:center;">01.01.2021</td>
                <td style="text-align:center;">08:00</td>
                <td style="text-align:center;">8</td>
            </tr>
            <tr>
                <td style="text-align:center;">02.01.2021</td>
                <td style="text-align:center;">08:30</td>
                <td style="text-align:center;">8</td>
            </tr>
            <tr>
                <td style="text-align:center;">03.01.2021</td>
                <td style="text-align:center;">09:00</td>
                <td style="text-align:center;">8</td>
            </tr>
        </table>

        <p><span>Goto: </span><a href="http://localhost:8082/IntSchool/internal/salary">Salary Section</a></p>
        <p><span>Goto: </span><a href="http://localhost:8082/IntSchool/internal/download">Download Salary Slip</a></p>
        <a href="http://localhost:8082/IntSchool/logout">Logout</a>
    </body>
</html>
