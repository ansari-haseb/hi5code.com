<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Download Slip</title>
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

        <h3 align="center">Download Salary Slip</h3>

        <table align="center">
            <tr>
                <th style="text-align:center;">Download</th>
            </tr>
            <tr>
                <td style="text-align:center;"><a href="#">January 2020</a></td>
            </tr>
            <tr>
                <td style="text-align:center;"><a href="#">February 2020</a></td>
            </tr>
            <tr>
                <td style="text-align:center;"><a href="#">March 2020</a></td>
            </tr>
            <tr>
                <td style="text-align:center;"><a href="#">April 2020</a></td>
            </tr>
            <tr>
                <td style="text-align:center;"><a href="#">May 2020</a></td>
            </tr>
            <tr>
                <td style="text-align:center;"><a href="#">June 2020</a></td>
            </tr>
            <tr>
                <td style="text-align:center;"><a href="#">July 2020</a></td>
            </tr>
            <tr>
                <td style="text-align:center;"><a href="#">August 2020</a></td>
            </tr>
            <tr>
                <td style="text-align:center;"><a href="#">September 2020</a></td>
            </tr>
            <tr>
                <td style="text-align:center;"><a href="#">October 2020</a></td>
            </tr>
            <tr>
                <td style="text-align:center;"><a href="#">November 2020</a></td>
            </tr>
            <tr>
                <td style="text-align:center;"><a href="#">December 2020</a></td>
            </tr>
        </table>

        <p><span>Goto: </span><a href="http://localhost:8082/IntSchool/internal/time">Time Section</a></p>
        <p><span>Goto: </span><a href="http://localhost:8082/IntSchool/internal/salary">Salary Section</a></p>
        <a href="http://localhost:8082/IntSchool/logout">Logout</a>
    </body>
</html>
