package process;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class Processor {
    private String mp3 = "http://mp3.zing.vn";

    public Elements getPageBXH(String URL, String idBXH) {
        try {

            Document document = Jsoup.connect(URL).get();

            return document.getElementById(idBXH).getElementsByTag("li");

        } catch (IOException e) {
            System.err.println("For '" + URL + "': " + e.getMessage());
        }
        return null;
    }

    public String getUrlXML(String url_detail) throws IOException {

        Document document = Jsoup.connect(mp3 + url_detail).get();

        return document.getElementById("zplayerjs-wrapper").attr("data-xml");
    }

    public String getSrcAudioXML(String url_xml) throws IOException {

        Document document = Jsoup.connect(url_xml).ignoreContentType(true).get();

        return getSrcAudioFromData(document.text());

    }

    public String getSrcAudioFromData(String data) {

        JsonObject obj = new JsonParser().parse(data.trim()).getAsJsonObject();
        JsonObject shipper = (JsonObject) obj.getAsJsonArray("data").get(0);

        return String.valueOf(shipper.getAsJsonArray("source_list").get(0));
    }

    public String getDataXML(String url_xml) throws IOException {

        Document document = Jsoup.connect(url_xml).ignoreContentType(true).get();

        return getSrcAudioFromData(document.text());

    }

    public JsonArray getListBXH(String url) throws IOException {

        Document document = Jsoup.connect(url).ignoreContentType(true).get();

        JsonObject obj = new JsonParser().parse(document.text().trim()).getAsJsonObject();
        JsonObject shipper = obj.getAsJsonObject("data");

        return shipper.getAsJsonArray("items");
    }

    public List<String> show(String idBXH) throws IOException {
        String name_song, url_detail, src_song;
        List<String> list = new ArrayList<String>();

        Elements elements_li = getPageBXH(mp3, idBXH);

        for (Element element_li : elements_li) {
            Elements e = element_li.getElementsByClass("song-name");
            name_song = e.select("a").text();
            url_detail = e.select("a").attr("href");

            String link_xml = getUrlXML(url_detail);

            src_song = getSrcAudioXML("http://mp3.zing.vn" + link_xml);

            list.add(src_song);
        }

        return list;
    }

    public List<String> handleSearch(Elements elements_data) throws IOException {
        String name_song, url_detail, src_song;
        List<String> list = new ArrayList<String>();

        for (Element element : elements_data) {
            name_song = element.select("a").attr("title");
            url_detail = element.select("a").attr("title");

            src_song = element.attr("data-id");

            list.add(src_song);
        }

        return list;
    }

    public List<String> showTest(String data) {

        List<String> list = new ArrayList<String>();
        String src_song = getSrcAudioFromData(data);

        list.add(src_song);
        list.add(src_song);
        list.add(src_song);

        return list;
    }

    public Elements getDataSearch(String URL) {
        try {

            Document document = Jsoup.connect(URL).get();

            return document.getElementsByClass("item-song");

        } catch (IOException e) {
            System.err.println("For '" + URL + "': " + e.getMessage());
        }
        return null;
    }

}
