package servlet;

import manager.GenreManager;
import manager.MovieManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(urlPatterns = "/about")
public class aboutServlet extends HttpServlet {

    private MovieManager movieManager = new MovieManager();
    private GenreManager genreManager = new GenreManager();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setAttribute("movies",movieManager.getAllMovies());
        req.setAttribute("genres",genreManager.getAllGenres());
        req.getRequestDispatcher("about.jsp").forward(req,resp);

    }
}
