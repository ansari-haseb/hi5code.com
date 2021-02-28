<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<html>
    <head>
        <title>Salary</title>
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

        <h3 align="center">Salary Info</h3>

        <table align="center">
            <tr>
                <th style="text-align:center;">Month</th>
                <th style="text-align:center;">Euros</th>
            </tr>
            <tr>
                <td style="text-align:center;">December 2021</td>
                <td style="text-align:center;">1500 EUR</td>
            </tr>
            <tr>
                <td style="text-align:center;">January 2021</td>
                <td style="text-align:center;">2000 EUR</td>
            </tr>
            <tr>
                <td style="text-align:center;">February 2021</td>
                <td style="text-align:center;">2100 EUR</td>
            </tr>
        </table>

        <p><span>Goto: </span><a href="http://localhost:8181/hi5code/internal/time">Time Section</a></p>
        <p><span>Goto: </span><a href="http://localhost:8181/hi5code/internal/download">Download Salary Slip</a></p>
        <a href="http://localhost:8181/hi5code/logout">Logout</a>
    </body>
</html>
