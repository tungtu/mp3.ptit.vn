<%@ page import="com.google.gson.JsonArray" %>
<%@ page import="com.google.gson.JsonElement" %>
<%@ page import="org.jsoup.nodes.Element" %>
<%@ page import="org.jsoup.select.Elements" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="utf-8">
    <link rel="icon" href="favicon.ico" type="image/x-icon"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>TRANG NGHE NHẠC MIỄN PHÍ</title>
    <link href="template/css/bootstrap.css" rel="stylesheet">
    <link href="template/css/style.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">
    <div class="row">
        <nav class="navbar navbar-default" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/"><span
                            class="glyphicon glyphicon-home"></span> Trang chủ</a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"></li>
                    </ul>
                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input required type="text" class="form-control"
                                   placeholder="Nhập Tên Bài Hát Hoặc Album" size="100" name="q">
                        </div>
                        <button type="submit" class="btn btn-primary">
                            <span class="glyphicon glyphicon-search"></span> Tìm kiếm
                        </button>
                    </form>
                </div>
            </div>
        </nav>
    </div>
</div>
<div class="container">
    <div class="col-md-4" id="stt-page">
        <div class="info-top-play group">
            <h1 class="text-center text-success">*** THÔNG BÁO ***</h1>
            <div class="col-md-6">
                <h3 class="text-primary">Hệ Thống Get Music</h3>
                <p class="text-warning">Trang web get link rất nhanh
                    cùng với 1 chất lượng nhạc tuyệt vời . Hiện đang hỗ trợ get nhạc 128 kbps và 320
                    kbps . Cảm ơn bạn đã sử dụng</p>
            </div>
            <div class="col-md-6">
                <h3 class="text-danger">Hệ Thống Get Album</h3>
                <p class="text-muted">Trang web được đánh giá cao về chất lượng và tốc độ get
                    nhạc. Với khả năng tải nhạc chất lượng , trang web còn mang đến bạn 1 danh
                    sách nhạc bản quyền .</p>
            </div>
            <span class="pull-right">Copyright © 2017 <strong>TTT</strong></span>
            Developed by
            <a href="http://fb.com/tungtt" target="_blank">TTT </a>.
        </div>
    </div>
    <div class="col-md-8">
        <div id="search-page"></div>
        <h3>Search result:</h3>

        <%  Elements rs_search = (Elements) request.getAttribute("rs_search");
            for (Element element : rs_search){
        %>
        <h3><%= element.select("a").attr("title") %></h3>
        <iframe scrolling="no" width="640" height="100"
                src="http://mp3.zing.vn/embed/song/<%=
                                element.attr("data-id") %>" frameborder="0"
                allowfullscreen="true" autoplay="false"></iframe>
        <%
            }
        %>

    </div>
</div>
<div class="panel-footer">
</div>
<script src="/template/js/jquery.min.js"></script>
<script src="/template/js/bootstrap.min.js"></script>
<script src="/template/js/zscript.js"></script>
<script src="/template/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
