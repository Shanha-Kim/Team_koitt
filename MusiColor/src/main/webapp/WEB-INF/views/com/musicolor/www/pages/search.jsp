<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>searchbefore</title>
<link rel="stylesheet" href="/www/css/bootstrap.custom.css" >
<link rel="stylesheet" href="/www/css/bootstrap-lux.css" >
<link rel="stylesheet" href="/www/css/random.css" >
<!-- Font Awesome 5 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->


</head>
 <body class="bg-primary">
    <jsp:include page="nav.jsp" flush="false" />
	
    <div class="container" id="main">
      <form id="search_frm" class="form-inline my-lg-0" method="post" action="/www/searchAfter.mr">
      	<input id="search_key" class="form-control col-sm text-center" type="text" placeholder="Search" name="key_main">
      	<input id="search_tab" type="hidden" name="key_tab">
      	
      </form>
      <!-- 감정 선택 버튼 -->
      <div class="btn-group btn-block mb-2" role="group" aria-label="Basic example" id="tab">
        <button id="All" type="button" class="btn btn-primary text-muted" >All</button>
        <button id="Song" type="button" class="btn btn-primary text-muted" >Song</button>
        <button id="Artist" type="button" class="btn btn-primary text-muted" >Artist</button>
        <button id="User" type="button" class="btn btn-primary text-muted" >User</button>
        <button id="Hashtag" type="button" class="btn btn-primary text-muted" >Hashtag</button>
      </div>

      <div class="text-center mb-3" id="refresh">
        <a class="badge badge-pill badge-danger hover">REFRESH THIS PAGE</a>
      </div>

      <!-- 앨범 이미지 -->
      <div class="row">
      	<c:forEach var="data" items="${LIST}" begin="0" end="2">
        <div class="col-4 big-square">
          <div class="square small-angry" id="${data.no}"><img class="album" src="/www/album/${data.sname}" /></div>
        </div>
		</c:forEach>
      </div>

      <div class="row">
      	<c:forEach var="data" items="${LIST}" begin="3" end="5">
        <div class="col-4 big-square">
          <div class="square small-angry" id="${data.no}"><img class="album" src="/www/album/${data.sname}" /></div>
        </div>
		</c:forEach>
      </div>

      <div class="row">
      	<c:forEach var="data" items="${LIST}" begin="6" end="8">
        <div class="col-4 big-square">
          <div class="square small-angry" id="${data.no}"><img class="album" src="/www/album/${data.sname}" /></div>
        </div>
		</c:forEach>
      </div>
	</div>
    <!-- modal, content detail -->
    <div class="modal" id="myModal1">
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content bg-primary">
          <!-- Modal body -->
          <div class="modal-body">
            <div class="row">
              <!-- Modal left, 일정 크기 이상 작아지면 안보이는 유튜브 -->
              <div class="col desktop-youtube" style="padding: 10px; border-right: 1px solid #282828;">
                <div style="height: 25%; width:100%;"></div>
                <div class="youtube text-left" style="height: 50%; width:100%;">
                  <iframe id="ylink1"  src="" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div> 
              </div>
              <!-- Modal right -->
              <div class="col text-left" style="padding: 10px;">
                <h3 id="mid" class="card-header" style="padding: 10px;">
                </h3>
                <!-- 일정 크기 이상 작아지면 보이는 유튜브-->
                <div class="youtube mobile-youtube mb-3">
                  <iframe id="ylink2" src="" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
                <div class="card-body" style="padding: 0px;">
                  <span class="ml-auto"><i id="heart" class="far fa-heart"></i><span id="blike"></span></span>
                  <h6 id="stitle" class="card-subtitle text-muted mb-2 mt-2"></h6>
                  <div class="body-scroll mb-3">
                    <p id="bbody" class="card-text">
                    </p>
                  </div>
                </div>
                <!-- comment -->
                <div class="bg-primary comment-scroll">
                  <ul id="comt" class="list-group list-group-flush p-0 m-p">
                    <li data-cno=""  data-user="rmccuish5" class="list-group-item pt-0 pb-1 pl-0 ml-0 active"><strong class="user">USERNAME</strong> Cras justo odio</li>
                    <li class="list-group-item pt-0 pb-1 pl-0 ml-0 active"><strong>USERNAME</strong> Dapibus ac facilisis in</li>
                  </ul>
                </div>
                <div class="pt-3">
                  <input id="c_body" class="comment-write-dark" type="text" placeholder="댓글을 입력해주세요" />
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
	//세션 ID 저장
	var sid = '<c:out value="${SID}"/>';
	
	//리프레쉬버튼
	$('#refresh').click(function(){
		$(location).attr("href", "/www/searchBefore.mr");
	});
	
	//포스트 상세보기
	var bno = "";
	$('.square').click(function(){
		bno = $(this).attr('id');
		
		$('#myModal1').modal("show");
		$.ajax({
			url : "/www/showDetail.mr",
			type : "post",
			dataType : "json",
			data : {
				b_no : bno
			},
			success : function(vo){
				$('#mid').html('<img id="psname" class="profile"  />'+vo.m_id);
				$('#bbody').html(vo.b_body);
				$('#blike').html('<strong> ' + vo.b_like + " likes</strong>");
				$('#stitle').html(vo.s_title);
				$('#psname').attr("src", "/www/profile/" + vo.sname);
				$('#ylink1').attr("src", "https://www.youtube.com/embed/" + vo.y_link);
				$('#ylink2').attr("src", "https://www.youtube.com/embed/" + vo.y_link);
				for(ComtVO cmVO : vo.comt){
					$('#comt').append('<li data-cno="'+cVO.c_no+'data-user="'+cVO.c_mid+'"  " class="list-group-item pt-0 pb-1 pl-0 ml-0 active"><strong class="user">'+cVO.c_mid+'</strong> '+cVO.c_body+'</li>');
				} 
				
				//좋아요 누르기
				$('#heart').click(function(){
					$.ajax({
						url : "/www/likeProc.mr",
						type : "post",
						dataType : "json",
						data : {
							b_no : bno,
							m_id : sid
						},
						success : function(data){
							$('#blike').html('<strong> ' + data.b_like + " likes</strong>");
						},
						error : function(){
							alert('### 통신 에러 ###');
						}
					});
				});
				
				//댓글기능
				$("#c_body").keyup(function(e){
					if(e.keyCode == 13){
						var cbody = $('#c_body').val();
						var upno = '';
						var upid = '';
						$('.list-group-item').click(function(){
							upno = $(this).attr('data-cno');
							upid = $(this).attr('data-user');
						});
						$.ajax({
							url : "/www/comtWrite.mr",
							type : "post",
							dataType : "json",
							data : {
								c_bno : bno,
								c_mid : sid,
								c_body : cbody
							},
							success : function(cVO){
								$('#comt').append('<li data-cno="'+cVO.c_no+'data-user="'+cVO.c_mid+'"  " class="list-group-item pt-0 pb-1 pl-0 ml-0 active"><strong class="user">'+cVO.c_mid+'</strong> '+cVO.c_body+'</li>');
							},
							error : function(){
								alert('### 통신 에러 ###');
							}
						});
					}
				});
			},
			error : function(){
				alert('### 통신 에러 ###');
			}
		});
	});
	
	
// 	검색시 탭 반영 
	var tabmenu="";
	$('#tab').each(function(){
		var tab = $(this).children("button")
		tab.click(function(){
			tab.removeClass("selected");
			tab.removeClass("text-muted");
			tab.addClass("text-muted");
			$(this).removeClass("text-muted");
			$(this).addClass("selected");
			tabmenu = $(this).text();
		});
	});
	
	//검색 엔터
	$("#search_key").keydown(function(e){
		if(e.keyCode == 13){
			e.preventDefault();
			if(tabmenu==""){
				tabmenu="All";
			}
			$('#search_tab').val(tabmenu);	
			$("#search_frm").submit();
		}
	});
	//검색전에 누른 tab 유지
	tabmenu = '<c:out value="${tabnow}"/>'+"";
	if(tabmenu==""){
		tabmenu = "All";
	}
	var tab = $('#tab').children('button');
	tab.removeClass("selected");
	tab.removeClass("text-muted");
	tab.addClass("text-muted");
	$('#'+tabmenu).removeClass("text-muted");
	$('#'+tabmenu).addClass("selected");
	
	//검색 프리뷰
// 	$("#search_key").keyup(function(e){
// 		$('#myModal1').modal("show");
// 		$.ajax({
// 			url : "/www/preView.mr",
// 			type : "post",
// 			dataType : "json",
// 			data : {
// 				b_no : bno
// 			},
// 			success : function(vo){
// 				alert("success");
// 				$('#mid').append(vo.m_id);
// 				$('#bbody').html(vo.b_body);
// 				$('#blike').append("<strong>" + vo.b_like + "likes</strong>");
// 				$('#stitle').html(vo.s_title);
// 				$('#psname').attr("src", "/www/profile/" + vo.sname);
// 				$('#ylink1').attr("src", "https://www.youtube.com/embed/" + vo.y_link);
// 				$('#ylink2').attr("src", "https://www.youtube.com/embed/" + vo.y_link);
// 			},
// 			error : function(){
// 				alert('### 통신 에러 ###');
// 			}
// 		});
// 	});

	
})
	
</script>
   
</body>
</html>