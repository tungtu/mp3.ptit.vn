package zing;

public class Zing {
    protected String name;
    protected String url;
    protected String data;

    public Zing(String name, String url, String data) {
        this.name = name;
        this.url = url;
        this.data = data;
    }

//    public String getPageLinks(String URL) {
//        //4. Check if you have already crawled the URLs
//        //(we are intentionally not checking for duplicate content in this example)
//        if (!links.contains(URL)) {
//            try {
//                //4. (i) If not add it to the index
//                if (links.add(URL)) {
//                    out.print(URL);
//                }
//
//                //2. Fetch the HTML code
//                Document document = Jsoup.connect(URL).get();
//                //3. Parse the HTML to extract links to other URLs
////                Elements linksOnPage = document.select("a[href]");
//
//            } catch (IOException e) {
//                System.err.println("For '" + URL + "': " + e.getMessage());
//            }
//        }
//    }
}

