<%@ page import="com.google.gson.JsonArray" %>
<%@ page import="com.google.gson.JsonElement" %>
<%@ page import="org.jsoup.nodes.Element" %>
<%@ page import="org.jsoup.select.Elements" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>TRANG NGHE NHẠC MIỄN PHÍ | Mp3.ptithcm.vn</title>

    <meta name="keywords" content="HTML5 Template"/>
    <meta name="description" content="Porto - Responsive HTML5 Template">
    <meta name="author" content="okler.net">

    <!-- Favicon -->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon"/>
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png">

    <!-- Mobile Metas -->
    <meta name="viewport"
          content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <!-- Web Fonts  -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CShadows+Into+Light"
          rel="stylesheet" type="text/css">

    <!-- Vendor CSS -->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="vendor/animate/animate.min.css">
    <link rel="stylesheet" href="vendor/simple-line-icons/css/simple-line-icons.min.css">
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.min.css">
    <link rel="stylesheet" href="vendor/magnific-popup/magnific-popup.min.css">

    <!-- Theme CSS -->
    <link rel="stylesheet" href="css/theme.css">
    <link rel="stylesheet" href="css/theme-elements.css">
    <link rel="stylesheet" href="css/theme-blog.css">
    <link rel="stylesheet" href="css/theme-shop.css">

    <!-- Current Page CSS -->
    <link rel="stylesheet" href="vendor/rs-plugin/css/settings.css">
    <link rel="stylesheet" href="vendor/rs-plugin/css/layers.css">
    <link rel="stylesheet" href="vendor/rs-plugin/css/navigation.css">

    <!-- Skin CSS -->
    <link rel="stylesheet" href="css/skins/skin-resume.css">

    <!-- Demo CSS -->
    <link rel="stylesheet" href="css/demos/demo-resume.css">

    <!-- Theme Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">

    <!-- Head Libs -->
    <script src="vendor/modernizr/modernizr.min.js"></script>

</head>
<body data-spy="scroll" data-target=".wrapper-spy">

<div class="body">
    <header id="header" class="header-floating "
            data-plugin-options="{'stickyEnabled': false, 'stickyEnableOnBoxed': false, 'stickyEnableOnMobile': false, 'stickyStartAt': 0, 'stickySetTop': '60px', 'stickyChangeLogo': false}">
        <div class="header-body">
            <div class="header-container container">
                <div class="header-row">
                    <div class="header-column">
                        <div class="header-row">
                            <div class="header-nav pt-xs">
                                <button class="btn header-btn-collapse-nav" data-toggle="collapse"
                                        data-target=".header-nav-main">
                                    <i class="fa fa-bars"></i>
                                </button>
                                <div class="header-nav-main collapse">
                                    <nav class="wrapper-spy">
                                        <ul class="nav" id="mainNav">
                                            <li>
                                                <a data-hash href="#about-me"
                                                   class="text-color-dark background-color-primary">
                                                    <i class="icon-home icons"></i>
                                                    <span class="custom-tooltip">Giới thiệu</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a data-hash href="#experience"
                                                   class="text-color-dark background-color-primary">
                                                    <i class="icon-star icons"></i>
                                                    <span class="custom-tooltip">BXH Việt Nam</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a data-hash href="#education"
                                                   class="text-color-dark background-color-primary">
                                                    <i class="icon-trophy icons"></i>
                                                    <span class="custom-tooltip">BXH Châu Âu</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a data-hash href="#skills"
                                                   class="text-color-dark background-color-primary">
                                                    <i class="icon-music-tone-alt icons"></i>
                                                    <span class="custom-tooltip">BXH Hàn Quốc</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <div role="main" class="main">

        <jsp:include page="layouts/header.jsp" />

        <section id="experience" class="section section-secondary section-no-border m-none center">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="text-color-primary text-uppercase font-weight-extra-bold">
                            BXH Việt Nam</h2>
                        <section class="timeline custom-timeline" id="timeline">
                            <%--<%  JsonArray lists_vn = (JsonArray) request.getAttribute("lists_vn");--%>
                                <%--for (JsonElement str1 : lists_vn){--%>
                            <%--%>--%>
                            <%--<div class="col-md-12 custom-sm-margin-bottom-1 mb-xlg">--%>
                            <%--<h4 class="mb-sm"><%= str1.getAsJsonObject().get("name") %></h4>--%>
                            <%--<iframe scrolling="no" width="640" height="150"--%>
                                    <%--src="http://mp3.zing.vn/embed/song/<%=--%>
                                <%--str1.getAsJsonObject().get("id").getAsString() %>" frameborder="0"--%>
                                    <%--allowfullscreen="true"--%>
                                    <%--autostart="false"--%>
                            <%--></iframe>--%>
                            <%--</div>--%>
                            <%--<%--%>
                                <%--}--%>
                            <%--%>--%>
                        </section>
                    </div>
                </div>
            </div>
        </section>

        <section id="education"
                 class="section section-no-border custom-background-color-1 m-none center">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="text-color-primary text-uppercase font-weight-extra-bold m-none">
                            BXH Châu Âu</h2>
                        <div class="nav-bottom">
                            <%--<%  JsonArray lists_aumy = (JsonArray) request.getAttribute("lists_aumy");--%>
                                <%--for (JsonElement str2 : lists_aumy){--%>
                            <%--%>--%>
                            <%--<div class="col-md-12 custom-sm-margin-bottom-1 mb-xlg">--%>
                            <%--<h4 class="mb-sm"><%= str2.getAsJsonObject().get("name") %></h4>--%>
                            <%--<iframe scrolling="no" width="640" height="150"--%>
                                    <%--src="http://mp3.zing.vn/embed/song/<%=--%>
                                <%--str2.getAsJsonObject().get("id").getAsString() %>" frameborder="0"--%>
                                    <%--allowfullscreen="true" autostart="false"></iframe>--%>
                            <%--</div>--%>
                            <%--<%--%>
                                <%--}--%>
                            <%--%>--%>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="skills" class="section section-no-border background-color-light m-none center">
            <div class="container">
                <div class="row custom-sm-flex-order">
                    <div class="col-md-12">
                        <h2 class="text-color-primary text-uppercase font-weight-extra-bold">
                            BXH Hàn Quốc</h2>
                        <div class="progress-bars custom-progress-bars">
                            <%--<%  JsonArray lists_hq = (JsonArray) request.getAttribute("lists_hq");--%>
                                <%--for (JsonElement str3 : lists_hq){--%>
                            <%--%>--%>
                            <%--<div class="col-md-12 custom-sm-margin-bottom-1 mb-xlg">--%>
                            <%--<h4 class="mb-sm"><%= str3.getAsJsonObject().get("name") %></h4>--%>
                            <%--<iframe scrolling="no" width="640" height="150"--%>
                                    <%--src="http://mp3.zing.vn/embed/song/<%=--%>
                                <%--str3.getAsJsonObject().get("id").getAsString() %>" frameborder="0"--%>
                                    <%--allowfullscreen="true" autostart="false"></iframe>--%>
                            <%--</div>--%>
                            <%--<%--%>
                                <%--}--%>
                            <%--%>--%>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <jsp:include page="layouts/footer.jsp" />
    </div>

        <!-- Vendor -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/jquery.appear/jquery.appear.min.js"></script>
        <script src="vendor/jquery.easing/jquery.easing.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="vendor/common/common.min.js"></script>
        <script src="vendor/jquery.lazyload/jquery.lazyload.min.js"></script>
        <script src="vendor/isotope/jquery.isotope.min.js"></script>
        <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
        <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

        <!-- Theme Base, Components and Settings -->
        <script src="js/theme.js"></script>

        <!-- Current Page Vendor and Views -->
        <script src="vendor/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
        <script src="vendor/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

        <!-- Current Page Vendor and Views -->
        <script src="js/views/view.contact.js"></script>

        <!-- Demo -->
        <script src="js/demos/demo-resume.js"></script>

        <!-- Theme Custom -->
        <script src="js/custom.js"></script>

        <!-- Theme Initialization Files -->
        <script src="js/theme.init.js"></script>


</body>
</html>
