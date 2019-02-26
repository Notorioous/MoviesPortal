package servlet;

import manager.GenreManager;
import manager.MovieManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/movieDetail")
public class MovieDetailServlet extends HttpServlet {

    private MovieManager movieManager = new MovieManager();
    private GenreManager genreManager = new GenreManager();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String movIdStr = req.getParameter("movId");
        int movId = Integer.parseInt(movIdStr);

        req.setAttribute("movie",movieManager.getMovieById(movId));
        req.setAttribute("allMovies",movieManager.getAllMovies());
        req.setAttribute("genres",genreManager.getAllGenres());
        req.getRequestDispatcher("movieDetails.jsp").forward(req,resp);



    }
}
