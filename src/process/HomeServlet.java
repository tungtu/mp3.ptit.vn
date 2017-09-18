package process;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class HomeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();


//        <iframe scrolling="no" width="640" height="180" src="http://mp3.zing.vn/embed/song/ZW8IZECW" frameborder="0" allowfullscreen="true"></iframe>
        String data_json = "{\"msg\":0,\"data\":[{\"id\":\"ZW8IZECW\",\"name\":\"Em GÃ¡i MÆ°a\"," +
                "\"artist\":\"HÆ°Æ¡ng TrÃ m\",\"link\":\"/bai-hat/Em-Gai-Mua-Huong-Tram/ZW8IZECW.html\",\"cover\":\"http://zmp3-photo-td.zadn.vn/cover_artist/0/4/0417f097512a1ec840fc584899529a7a_1489400760.jpg\",\"msg\":\"Do váº¥n Ä‘á»\u0081 káº¿t ná»‘i, trÃ¬nh duyá»‡t táº¡m thá»\u009Di khÃ´ng load Ä‘Æ°á»£c. Báº¡n vui lÃ²ng gá»\u00ADi pháº£n há»“i vá»\u0081 Zing MP3 Ä‘á»ƒ nháº\u00ADn Ä‘Æ°á»£c há»— trá»£ tá»‘t nháº¥t.\",\"qualities\":[\"128\",\"320\"],\"source_list\":[\"http://zmp3-mp3-s1.zadn.vn/2daa5beb81af68f131be/3246869633634662863?authen=exp=1505687983~acl=/2daa5beb81af68f131be/*~hmac=193da89a7b6f0d4c7e057f871df78021\",\"\"],\"source_base\":\"http://\",\"lyric\":\"http://static.mp3.zdn.vn/lyrics/2017/09/11/3ebde5d98e1e131a4bff6adb12b4ce66_1076366914.lrc\",\"mv_link\":\"/video-clip/Em-Gai-Mua-Huong-Tram/ZW8IZECW.html\"}]}";

//        String data = request.getParameter("data");
//
//        String action =  request.getParameter("a");

        String data = "";
        String action = "";

        Processor processor = new Processor();

        String url_audio_format = "http://mp3.zing.vn/json/charts?op=get&type=song&id=";

//        JsonArray array = processor.getListBXH(url_audio_format + "IWZ9Z0BW");

        request.setAttribute("lists_vn", processor.getListBXH(url_audio_format + "IWZ9Z08I"));
        request.setAttribute("lists_aumy", processor.getListBXH(url_audio_format + "IWZ9Z0BW"));
        request.setAttribute("lists_hq", processor.getListBXH(url_audio_format + "IWZ9Z0BO"));

        request.getRequestDispatcher("template/home.jsp").forward(request,response);

    }


}
