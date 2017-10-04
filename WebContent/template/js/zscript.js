$(function() {
    ajax = "";
	//==============VN=
	bxh('IWZ9Z08I|IWZ9Z08O',1)
	//==============AM=
	bxh('IWZ9Z0BW|IWZ9Z0B6',2);
	//==============HQ=
	bxh('IWZ9Z0BO|IWZ9Z0B7',3);

	$('#search').submit(function(e) {
		search($('#query').val());
		e.preventDefault();
	})
});
function search(query) {
    ajax!=""?ajax.abort():'';
    $('#search-page')[0].style.display = 'block';
    $('#search-page').html("<li class=\"list-group-item\">Từ khóa :<span>" + query + "</span></li><ul class=\"item_search\"></ul>");
    ajax = $.ajax({
		method: "POST",
		url: "?zing=search",
		dataType: "json",
		data: {
			data: query
		},
		success: function(data) {
			search_w(data,query);
		}
	});
}
function bxh(id,op) {
	$.ajax({
		method: "POST",
		url: "?zing=bxh",
		dataType: "json",
		data: {
			data: id,
		},
		success: function(data) {
			bxh_w(data,op);
		}
	});
}
function musicplay(id) {
    ajax!=""?ajax.abort():'';
    $('#music-page')[0].style.display = 'block';
	$('#stt-page')[0].style.display = 'none';
	$('#album-page')[0].style.display = 'none';
	$('#music-page').html('<div id="music" class="info-top-play group"></div>');
    ajax=$.ajax({
		type: "POST",
		url: "?zing=music",
        dataType: "json",
		data: {
			data: id
		},
		success: function(data) {
			music_w(data, id);
		}
	});
}
function albumplay(id) {
    ajax!=""?ajax.abort():'';
    $('#album-page')[0].style.display = 'block';
	$('#music-page')[0].style.display = 'none';
	$('#stt-page')[0].style.display = 'none';
    $('#album-page').html("<div id=\"albumdiv\" class=\"info-top-play group\"><h3 id=\"title\" class=\"text-center text-danger\">DANH SÁCH CÁC BÀI HÁT NẰM TRONG ALBUM</h3><br /><table class=\"table table-bordered table-hover table-striped\"><thead class=\"text-info\"><tr><th><span class=\"glyphicon glyphicon-music\"></span><span> Tên Bài Hát</span></th><th><span class=\"glyphicon glyphicon-user\"></span><span> Nghệ si</span></th><th><span class=\"glyphicon glyphicon-cog\"></span><span> Tải Nhạc</span></th></tr></thead><tbody class=\"result\"></tbody></table>");
	ajax = $.ajax({
		method: "POST",
		url: "?zing=album",
		dataType: "json",
		data: {
			data: id
		},
		success: function(data) {
			album_w(data, id);
		}
	});
}
function search_w(json,query) {
	sdata = '';
    if (json['errorcode']!=1){
    for (var i = 0; i < json['song'].length; i++) {
		detail = json['song'][i]['name'];
		id = json['song'][i]['id'];
		sdata += "<li><zing title =\"" + detail + "\" href=\"javascript:void(0)\" onclick=\"musicplay('" + id + "');\"> <span class= \"glyphicon glyphicon-music\" > </span> " + detail + "</zing ></li>";
	}
	for (var i = 0; i < json['album'].length; i++) {
		detail = json['album'][i]['name'];
		id = json['album'][i]['id'];
		sdata += "<li><zing title =\"" + detail + "\" href=\"javascript:void(0)\" onclick=\"albumplay('" + id + "');\"> <span class= \"glyphicon glyphicon-record\" > </span> " + detail + "</zing ></li>";
	}
        sdata = sdata==''?'<li>Không Có Dữ Liệu</li>':sdata
    }else{
        sdata = '<li>Không Có Dữ Liệu</li>'
    }
	$('.item_search').html(sdata);
}
function bxh_w(json,op) {
    lidata='';
	op = op == 2 ? '.listbxh_aumy' : (op == 3) ? '.listbxh_hanquoc' : '.listbxh_vietnam';
	$(op).html('');
    album = json['album'];music = json['music'];
    for (var i = 0; i < music.length; i++) {
        id = music[i]['id'];
        code=music[i]['code'];
        detail = music[i]['name'] + " - " + music[i]['artist'];
        lidata += "<li><zing title =\"" + detail + "\" href=\"javascript:void(0)\" onclick=\"musicplay('"+id+"');\"> <span class= \"glyphicon glyphicon-music\" > </span> "+detail+"</zing > | <zing download href=\"//api.mp3.zing.vn/api/mobile/source/song/"+code+"\"><span class=\"glyphicon glyphicon-download-alt\"></span></zing></li>";
    }
    for (var i = 0; i < album.length; i++) {
        id = album[i]['id'];
        detail = album[i]['name'] + " - " + album[i]['artist'];
        lidata += "<li><zing title =\"" + detail + "\" href=\"javascript:void(0)\" onclick=\"albumplay('"+id+"');\"> <span class= \"glyphicon glyphicon-record\" > </span> "+detail+"</zing ></li>";
    }
	$(op).html(lidata);
}
function music_w(json, id) {
	title = json['title'];
	artist = json['artist'];
	composer = json['composer'];
	album = json['album'];
	duration = json['duration'];
	total_play = json['total_play'];
	thumbnail = json['thumbnail'];
	l128 = json[128];
	l320 = json[320];
	genre_name = json['genre_name'];
	likes = json['likes'];
	mdata = "<h3 id=\"title\" class=\"text-success\"><strong>" + title + "</strong> -" + artist + "</h3> <img src=\"" + thumbnail + "\" width=\"80\" height=\"80\" />  <span id=\"detail\" class=\"text-danger\">Sáng tác : " + composer + " - Album : " + album + " </span> <br/> <span id=\"detail\" class=\"text-muted\">Lượt nghe : " + total_play + " Người - Thích : " + likes + " Người</span><br/><span id=\"detail\" class=\"text-warning\">Thể loại : " + genre_name + " - Ðộ dài : " + duration + " giây</span><br/> <span id=\"ico-tai\" class=\"glyphicon glyphicon-download-alt\"> Link-tải :</span><zing href=\"" + l128 + "\" download>128kbps</zing> - <zing href=\"" + l320 + "\" download>320kbps</zing><iframe scrolling=\"no\" src=\"http://mp3.zing.vn/embed/song/" + id + "?start=true\" frameborder=\"0\" allowfullscreen=\"true\" width=\"525\"></iframe>"
	$('#music').html(mdata);
}
function album_w(json, id) {
	adata = '';
    if (json['error']==""){
        json=json['data'];
	for (i = 0; i < json.length; i++) {
		title = json[i]['title'];
		artist = json[i]['artist'];
		l128 = json[i][128];
		l320 = json[i][320];
		link = json[i]['link'];
		adata += "<tr><td><zing href=\"" + link + "\" target=\"_blank\" title=\"" + title + "\">" + title + "</zing></td><td>" + artist + "</td><td><div class=\"btn-group\"><button type=\"button\" class=\"btn dropdown-toggle btn-primary\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"><span class=\"glyphicon glyphicon-download-alt\"></span><span> Tải Về Máy </span><span class=\"caret\"></span></button><ul class=\"dropdown-menu\"><li><zing href=\"" + l128 + "\" download=\"\" title=\"Click to download this song!\">128 kbps</zing></li><li><zing href=\"" + l320 + "\" download title=\"Click to download this song!\">320 kbps</zing></li></ul></div></td></tr>"
	}
	$('.result').html(adata);
    $('#albumdiv')[0].innerHTML+="<iframe scrolling=\"no\" width=\"525\" src=\"//mp3.zing.vn/embed/playlist/" + id + "?start=true\" frameborder=\"0\" allowfullscreen=\"true\"></iframe></div>";
    }else{alert(json['error']);}
}