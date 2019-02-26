package servlet;

import manager.GenreManager;
import manager.MovieManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/getMovieByCat")
public class GetMoviesByCategoryServlet extends HttpServlet {

    private MovieManager movieManager = new MovieManager();
    private GenreManager genreManager = new GenreManager();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String idStr = req.getParameter("id");
        int id = Integer.parseInt(idStr);

        req.setAttribute("genres",genreManager.getAllGenres());
        req.setAttribute("genre",genreManager.getGenreById(id));
        req.setAttribute("moviesByGen",movieManager.getMoviesByGenreId(id));
        req.getRequestDispatcher("moviesByGenre.jsp").forward(req,resp);

    }
}
