package servlets;

import util.KeycloakTokenUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/internal/time", name = "Time")
public class TimeServlet extends HttpServlet {

    private static final String INTERNAL_TIME = "/WEB-INF/internal/time.jsp";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher(INTERNAL_TIME);
        req.setAttribute("username", KeycloakTokenUtil.getPreferredUsername(req));
        requestDispatcher.forward(req, resp);
    }
}
