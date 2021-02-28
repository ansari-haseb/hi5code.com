package servlets;

import utils.KeycloakTokenUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/internal/salary", name = "Salary")
public class SalaryServlet extends HttpServlet {

    private static final String INTERNAL_SALARY = "/WEB-INF/internal/salary.jsp";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher(INTERNAL_SALARY);
        req.setAttribute("username", KeycloakTokenUtil.getPreferredUsername(req));
        requestDispatcher.forward(req, resp);
    }
}