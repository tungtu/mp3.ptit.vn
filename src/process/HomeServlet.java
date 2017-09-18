package process;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import static process.URL.toURLFriendly;

public class HomeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");

        String q = request.getParameter("q");

        if(q == null){
            Processor processor = new Processor();

            String url_audio_format = "http://mp3.zing.vn/json/charts?op=get&type=song&id=";

            request.setAttribute("lists_vn", processor.getListBXH(url_audio_format + "IWZ9Z08I"));
            request.setAttribute("lists_aumy", processor.getListBXH(url_audio_format + "IWZ9Z0BW"));
            request.setAttribute("lists_hq", processor.getListBXH(url_audio_format + "IWZ9Z0BO"));

            request.getRequestDispatcher("template/home.jsp").forward(request, response);
        }
        else {

            String q_search = "http://mp3.zing.vn/tim-kiem/bai-hat.html?q=" + toURLFriendly(q) ;

            Processor processor = new Processor();

            request.setAttribute("rs_search", processor.getDataSearch(q_search));
            request.getRequestDispatcher("template/search.jsp").forward(request, response);
        }


    }
}
