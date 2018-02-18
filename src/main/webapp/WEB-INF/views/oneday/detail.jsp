<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<link rel="apple-touch-icon" sizes="76x76" href="/resources/img/apple-icon.png">
	<link rel="icon" type="image/png" href="/resources/img/favicon.png">	

		<!-- GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" type="text/css">
        <link href="/resources/HTML/vendor/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
        <link href="/resources/HTML/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

        <!-- PAGE LEVEL PLUGIN STYLES -->
        <link href="/resources/HTML/css/animate.css" rel="stylesheet">
        <link href="/resources/HTML/vendor/swiper/css/swiper.min.css" rel="stylesheet" type="text/css"/>

        <!-- THEME STYLES -->
        <link href="/resources/HTML/css/layout.min.css" rel="stylesheet" type="text/css"/>

        <!-- Favicon -->
        <link rel="shortcut icon" href="favicon.ico"/>
        
        
<style>
.testClass{
  background: linear-gradient(to bottom, #68d8d6, #ffffff);
  color: #454749;
  display: flex;
  align-items: center;
}
.bg-reply-color{
	background:#888888
}

hr{
	height: 2px;
	background: #ccc;
}
/* test */
h2 {
  font: 33px sans-serif;
  margin-top: 30px;
  text-align: center;
  text-transform: uppercase;
}

.board{
	width: 100%;
	height: 100%;
	background: #fff;
	box-shadow: 12px 8px 0 rgba(0, 0 ,0, 0.2); 
	border-right: 1px solid black;
	border-bottom: 1px solid black;
	border-left: 1px solid rgba(0, 0, 0, 0.2);
	border-top: 1px solid rgba(0, 0, 0, 0.2);
	margin-top: 20px;
	margin-bottom: 20px;
	border-top-left-radius: 8px;
	border-top-right-radius: 8px;
}

.padTest{
	padding-top: 10px;
	padding-bottom: 10px;
}
.imgtest{
	border: 2px solid #ffcccc;
	border-radius: 7px;
	-moz-border-radius: 7px;
	-khtml-border-radius: 7px;
	-webkit-border-radius: 7px;
}

.box {
    color:#000;
    margin:auto;
    padding:40px;
    width: 100%;
    height:100%;
    background:#fff;
    border-radius:3px;
    border-bottom:4px solid #5e95cd;
    /* box-shadow: 0px 0px 30px #888888; */
}
.overlimit{color: red;}

.replytest{
 	width: 90%;
	height: 100%;
/* 	margin-top: 20px;
	margin-bottom: 20px; */
	margin: 20px 50px;
	padding-top: 10px;
	padding-bottom: 10px;
	border-radius:3px;
	background:#fff;
	box-shadow: 0px 0px 30px #888888; 
}

.poptut{

  animation: poptut 1s .4s forwards;

}
/* img{
	border: 2px solid #ffcccc;
	border-radius: 7px;
	-moz-border-radius: 7px;
	-khtml-border-radius: 7px;
	-webkit-border-radius: 7px;
} */
</style>
<title>Insert title here</title>
</head>
<body class="profile-page">

	<c:import url="../includes/header.jsp"></c:import>
	
	<!--========== PARALLAX ==========-->
       <div class="parallax-window" data-parallax="scroll" data-image-src="/resources/HTML/img/gogogogo.gif">
            <div class="parallax-content container">
                <h1 class="carousel-title">BOARD</h1>
<!--                 <p>한 달여 동안 조 이름을 네 번 바꿨지만 우리는 아직도 마음에 들지 안항서 새로 지은 조 이름은 <br/> 와사비</p> -->
            </div>
        </div>
        
        <div class="bg-color-sky-light">
        	<div class="padTest container">
	        	<div class="row">
	        			<div class="board" style="padding: 0 20px;">
	        				<div class="row" style="background-color: #22a2ea; border-radius: 8px;margin-bottom: 15px;">
	        					<h2 style="color: #fff;">글제목</h2>
								<hr>
	        				</div>
							<div class="row">
								<div id="mark" class="col-sm-6">
								</div>
								<div class="col-sm-6" id="wrap">
									<!-- <p align="center" id="contentData" style="color:black;"></p> -->
									<div class="dummy"></div>
									<textarea id="contentData"  rows="15" style="width:100%; border:none; resize:none;" readonly="readonly"></textarea>
								</div>
							</div>
							<div class="row" style="padding-bottom: 10px;">
	
				              		<hr>
					           		<button id="list" class="searchBtn btn btn-primary" 
					           		style="float: right; color:black;background-color: #6b9f2c;">목록</button>
					         		<button id="modify" class="searchBtn btn btn-primary" type="button" 
					         		style="float: right; color:black;background-color: #00356a;">수정</button>
					         		<button id="remove" class="searchBtn btn btn-primary" 
					         		style="float: right; color:black;background-color: #cc191a;">삭제</button>
									
							</div>
							
							<div class="row">
								<hr>
							</div>
							
							<div class="row">
								<section class="box">
									<h3>What's up?</h3>
									<textarea id="status" rows="5" style="width:100%; resize:none; margin-right: 20px;"></textarea>
									<button class="btn btn-large btn-primary pull-right" type="submit">등록</button>
								</section>
							</div>
							
	
								<div class="replytest row">
									<div class="col-sm-10">
										<div style="width: 100%; margin-left: 20px;">작성자명</div>
										<hr style="margin-top: 5px;">
										<div  style="width: 100%; margin-left: 20px;">댓글내용</div>
									</div>
									<div class="col-sm-1">
										<div class="row" style="margin-bottom: 3px;" align="center">
											<button class="btn btn-large btn-primary pull" type="submit">수정</button>
										</div>
										<div class="row" align="center">
											<button class="btn btn-large btn-primary pull" type="submit">삭제</button>
										</div>
									</div>
								</div>
								
								<div id="reportPage" style="text-align: center;">
									<ul class="pagination mypage" style="margin: 0 auto;">
						<!-- 				<li class="page-item"><a class="page-link" href="#">Prev</a></li> -->
						<!-- 				<li class="page-item"><a class="page-link" href="#">Next</a></li> -->
									</ul>
								</div>
						</div>
	        	</div> 	
			</div>
			
        </div>

        <!-- <div class="bg-reply-color">
        	<div class="row">
        			<div class="col-sm-1">
        			</div>
               		<div class="col-sm-5 sm-margin-b-30">
	               		<h2 class="color-white">Reply</h2>
	               		<input type="text" id="title" name="title">
	                	<input type="text" id="content" name="content">
						<button id="testBtn" type="button">눌러봐</button>
                  	</div>
              	</div>     	
              	<div class="row">
              		<div class="col-sm-1">
        			</div>
              		<div class="col-sm-8 sm-margin-b-30">
              			<div id="listReply">
              			</div>
              		</div>
             	</div>	
        </div> -->
	
	<form action="/oneday/modify" method=get id="testForm">
		<input type="hidden" name="no">
	</form>

	<!-- Back To Top -->
	<a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

	<!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- CORE PLUGINS -->
	<script src="/resources/HTML/vendor/jquery.min.js"	type="text/javascript"></script>
	<script src="/resources/HTML/vendor/jquery-migrate.min.js"	type="text/javascript"></script>
	<!-- <script src="/resources/HTML/vendor/bootstrap//resources/HTML/js/bootstrap.min.js"	type="text/javascript"></script> -->

	<!-- PAGE LEVEL PLUGINS -->
	<script src="/resources/HTML/vendor/jquery.easing.js" type="text/javascript"></script>
	<script src="/resources/HTML/vendor/jquery.back-to-top.js"	type="text/javascript"></script>
	<script src="/resources/HTML/vendor/jquery.smooth-scroll.js"	type="text/javascript"></script>
	<script src="/resources/HTML/vendor/jquery.wow.min.js"	type="text/javascript"></script>
	<script src="/resources/HTML/vendor/jquery.parallax.min.js"	type="text/javascript"></script>
	<!-- <script src="/resources/HTML/vendor/swiper/resources/HTML/js/swiper.jquery.min.js"	type="text/javascript"></script> -->

	<!-- PAGE LEVEL SCRIPTS -->
	<script src="/resources/HTML/js/layout.min.js" type="text/javascript"></script>
	<!-- <script src="/resources/HTML/js/components/swiper.min.js"	type="text/javascript"></script> -->
	<script src="/resources/HTML/js/components/wow.min.js" type="text/javascript"></script>

	<script src="https://www.gstatic.com/firebasejs/4.8.1/firebase.js"></script>

	<script>

		var testForm = $("#testForm");
	
		$("#modify").on("click", function(){
			testForm.find("input[name='no']").val(${no});
			testForm.submit();
		});
		
		$("#list").on("click", function(){
			location.href="/main/boardlist";
		});
		var testStr = "";
		var arr = [];
		
		// 댓글 넘버
		var replyNo = 0;
		
		(function(){
			
			// ------------Initialize Firebase---------------
			
			var config = {
				apiKey : "AIzaSyCHAm0uDpjUGUPNPptNtoFStgFX3yWsrqs",
				authDomain : "likethis-35671.firebaseapp.com",
				databaseURL : "https://likethis-35671.firebaseio.com",
				projectId : "likethis-35671",
				storageBucket : "likethis-35671.appspot.com",
				messagingSenderId : "637146865404"
			};
			firebase.initializeApp(config);
			
			// ------------Initialize Firebase---------------
			
			$("#remove").on("click", function(){
				firebase.database().ref('/Board/' + ${no}).remove();
			});
			
			// 사진하고 글 띄우기
			showDetail();
			// 댓글 띄우기
			replyReset();
		}());

		function showDetail(){
			firebase.database().ref('/Board/' + ${no} + '/path').once('value', function(snapshot){
				if(snapshot.val() != null){
					// 사진이 있다는 거니 사진 띄우라 알았니?
					console.log(snapshot.val());
					
					if(Array.isArray(snapshot.val())) {
						
						for(var i = 0; i < snapshot.val().length; i++){
							console.log(snapshot.val()[i]);

							testStr += "<img class='imgtest' src='displayFile?fileName=";
							testStr += snapshot.val()[i];
							testStr += "' width='300px' height='300px' align='center' style='display:block; margin: auto;'/><br>";

						}
						$("#mark").html(testStr);
						
					}
					else{
						
						testStr += "<img class='imgtest' src='displayFile?fileName=";
						testStr += snapshot.val();
						testStr += "' width='300px' height='300px' align='center' style='display:block; margin: auto;'/><br>";
						
						$("#mark").html(testStr);
						
					}
				}
			});
			
			// 이제 글을 띄우면 됨
			firebase.database().ref('/Board/' + ${no} + '/content').once('value', function(snapshot){
				console.log("들어오나?");
				if(snapshot.val() != null){
					$("#contentData").text(snapshot.val());
				}
			});
		}
		
//------------------------------순호 소스----------------------------------------
		
		/* // 한페이지에 보여지는 글목록 수와 페이징 사이즈 수
		var listSize = 10;
		var pageSize = 5;
		
		// 페이징 변수
		var listCount = 0;
		var page = 1;
		var listEnd;  // var listEnd = page * 2;  페이지에 보여주는 글목록의 시작부터 끝
		var listStart; // var listStart = listEnd - 1;
		
		// 페이지 번호 클릭시 받아서 처리(버튼 생성할때 처리하는 부분 만들어야함)
		var pageNum = 1;
		var prev = false;
		var next = true;
			
		// 페이징
		function paging(listCount) {
			var str = "";
			var pagingEnd = pageNum + (pageSize - 1); // var pagingEnd = pageNum + 2;
			var count = (listCount / listSize) + 1;  
			// var count = (listCount / 2) + 1;
			
			if(pagingEnd > count){
				pagingEnd = count;
				next = false;
			}
			
			if(pageNum != 1){
				prev = true;
			} else {
				prev = false;
			}
			
			if(listCount <= (listSize * pageSize)){ next = false; }
			
			if(prev){str += "<li class='page-item' id='prev'><a class='page-link' href='#'>Prev</a></li>"};
			
			for(var i = pageNum; i <= pagingEnd; i++){
				if(page != i){
					str += "<li class='page-item'><a class='page-link' href='/main/boardlist?page=" + i + "&pageNum=" + pageNum + "'>" + i + "</a></li>";	
				} else {
					str += "<li class='page-item active'><a class='page-link' href='/main/boardlist?page=" + i + "&pageNum=" + pageNum + "'>" + i + "</a></li>";
				}
			}
			
			if(next){str += "<li class='page-item' id='next'><a class='page-link' href='#'>next</a></li>"};
			
			$(".mypage").html(str);
		}; */
		
		//---------------------------------------------------
		
		function replyReset(){
			firebase.database().ref('/Board/' + ${no} + '/replyData/').once('value', function(snapshot){
				if(snapshot.val() != null){
					
					var output = "";
					
					if(Array.isArray(snapshot.val())) {
						
						listCount = snapshot.val().length - 1;
						
						for(var i = 1; i < snapshot.val().length; i++){
							
							/* 
							<div class="replytest row">
								<div class="col-sm-10">
									<div style="width: 100%; margin-left: 20px;">작성자명</div>
									<hr style="margin-top: 5px;">
									<div  style="width: 100%; margin-left: 20px;">댓글내용</div>
								</div>
								<div class="col-sm-1">
									<div class="row" style="margin-bottom: 3px;" align="center">
										<button class="btn btn-large btn-primary pull" type="submit">수정</button>
									</div>
									<div class="row" align="center">
										<button class="btn btn-large btn-primary pull" type="submit">삭제</button>
									</div>
								</div>
							</div> 
							*/
							output += "<div class='col-sm-10'>";
							
							output += "		<span>" + i + "</span><br>";
							output += "		<div style='width: 100%; margin-left: 20px;'>" + snapshot.val()[i].replyTitle + "</span>";
							output += "		<hr style='margin-top: 5px;'>"
							output += "		<span>내용 : " + snapshot.val()[i].replyContent + "</span>";
							output += "		<button style='display:block;float: right;'>삭제</button>";
							
							output += "</div>";
						}
						
						
					}else{
						
						listCount = snapshot.val().length - 1;
						
						output += "<div class='testClass'>";
						
						output += "		<span>1</span><br>";
						output += "		<span>제목 : " + snapshot.val().replyTitle + "</span>";
						output += "		<span>내용 : " + snapshot.val().replyContent + "</span>";
						output += "		<button style='display:block;float: right;'>삭제</button>";
							
						output += "</div>";
					}
					$(".replytest").html(output);
					if(listEnd > listCount){
						listEnd = listCount;
					}
					listEnd = page * listSize;
					listStart = listEnd - (listSize - 1);
					
					paging(listCount);
				}
			});
			
		}
		
		//---------------------------------------------
		
		// 이미지는 /List/글번호/path
		// 댓글이 글 안에 저장되어서 가져오는 형태로
		$("#testBtn").click(function(){
			
			var data = {
				replyTitle : $("#title").val(),
				replyContent : $("#content").val()
			};
			
			// 리스트에서 글을 클릭하면 넘겨주는 글번호를 가지고 등록해야함
			replyNo++;
			firebase.database().ref('/Board/' + ${no} + '/replyNo').set(replyNo);
			firebase.database().ref('/Board/' + ${no} + '/replyData/' + replyNo).set(data);
			
			replyReset();
        });
		
		
		
	</script>


</body>
</html>