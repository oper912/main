<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sign Up Page - Material Kit by Creative Tim</title>

  <link href="https://fonts.googleapis.com/css?family=Abril+Fatface|Alfa+Slab+One|Indie+Flower|Lobster|Pacifico|Pangolin|Roboto:900i" rel="stylesheet">

    <style>
  @import url('https://fonts.googleapis.com/css?family=Lato:300,400,700');

        * {
            box-sizing: border-box;
        }

        html,
        body {
            margin: 0;
            padding: 0;
            height: 100%;
        }

        body {
            font-family: 'Lato', sans-serif;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: center;
            -webkit-justify-content: center;
            -ms-flex-pack: center;
            justify-content: center;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -ms-flex-align: center;
            align-items: center;
/*              background: linear-gradient(243.87deg, #F28FE5 30.6%, #371933 130.6%);  */
            overflow: hidden;
            
            background: url('/resources/HTML/img/login.gif');
/*             -webkit-background-size: cover; */
/* 		    -moz-background-size: cover; */
		    /* -o-background-size: cover; */
		    background-size: cover;
}

        input {
            font-family: inherit;
            -webkit-appearance: none;
            -moz-appearance: none;
            border: 0;
            border-bottom: 1px solid #AAAAAA;
            font-size: 16px;
            color: #000;
            border-radius: 0;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            height: 40px;
        }

        button,
        input:focus {
            outline: 0;
        }

        ::-webkit-input-placeholder {
            font-size: 16px;
            font-weight: 300;
            letter-spacing: -0.00933333em;
        }

        .form-group {
            position: relative;
            padding-top: 15px;
            margin-top: 10px;
        }

        label {
            position: absolute;
            top: 0;
            opacity: 1;
            -webkit-transform: translateY(5px);
            transform: translateY(5px);
            color: #aaa;
            font-weight: 300;
            font-size: 13px;
            letter-spacing: -0.00933333em;
            transition: all 0.2s ease-out;
        }

        input:placeholder-shown  + label {
            opacity: 0;
            -webkit-transform: translateY(15px);
            transform: translateY(15px);
        }

        #memberlogo {
            color: #000;
            opacity: 0.8;
            font-size: 20px;
            font-weight: 400;
            text-transform: uppercase;
            letter-spacing: 0.2405em;
            transition: all 770ms cubic-bezier(0.51, 0.04, 0.12, 0.99);
            text-align: center;
            cursor: pointer;
            position: absolute;
           font-family: 'Alfa Slab One', cursive;
        }

        .open  #memberlogo {
            -webkit-transform: translateX(200px) translateZ(0);
            transform: translateX(200px) translateZ(0);
        }

        .h2 {
            color: #000;
            font-size: 20px;
            letter-spacing: -0.00933333em;
            font-weight: 600;
            padding-bottom: 15px;
        }

        .login-wrapper {
            width: 730px;
            height: 380px;
            background-color: #fff;
            box-shadow: 0px 2px 50px rgba(0, 0, 0, 0.2);
            border-radius: 4px;
            overflow: hidden;
            position: relative;
            border-radius: 10px;
        }

        .login-left {
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            transition: all 770ms cubic-bezier(0.51, 0.04, 0.12, 0.99);
        }

        .login-left img {
            object-fit: cover;
            width: 500px;
            height: 100%;
            display: block;
            transition: all 770ms cubic-bezier(0.51, 0.04, 0.12, 0.99);
            object-position: left;
        }

        .open .login-left img {
            -webkit-transform: translateX(280px) translateZ(0);
            transform: translateX(200px) translateZ(0);
        }

        .open .login-left {
            -webkit-transform: translateX(-400px) translateZ(0);
            transform: translateX(-400px) translateZ(0);
        }

        .login-right {
            padding: 40px;
            position: absolute;
            top: 0;
            right: 0;
            width: 400px;
            -webkit-transform: translateX(400px) translateZ(0);
            transform: translateX(400px) translateZ(0);
            transition: all 770ms cubic-bezier(0.51, 0.04, 0.12, 0.99);
        }

        .open .login-right {
            -webkit-transform: translateX(0px) translateZ(0);
            transform: translateX(0px) translateZ(0);
        }

        .checkbox-container {
            display: flex;
            margin-top: 35px;
        }

        .text-checkbox {
            color: #aaa;
            font-size: 16px;
            letter-spacing: -0.00933333em;
            font-weight: 300;
            margin-left: 15px;
        }

        input[type="checkbox"] {
            cursor: pointer;
            margin: 0;
            height: 22px;
            position: relative;
            width: 22px;
            -webkit-appearance: none;
            transition: all 180ms linear;
        }

        input[type="checkbox"]:before {
            border: 1px solid #aaa;
            background-color: #fff;
            content: '';
            width: 20px;
            height: 20px;
            display: block;
            border-radius: 2px;
            transition: all 180ms linear;
        }

        input[type="checkbox"]:checked:before {
            background: linear-gradient(198.08deg, #B4458C 45.34%, #E281E7 224.21%);
            border: 1px solid #C359AA;
        }

        input[type="checkbox"]:after {
            content: '';
            border: 2px solid #fff;
            border-right: 0;
            border-top: 0;
            display: block;
            height: 4px;
            left: 4px;
            opacity: 0;
            position: absolute;
            top: 6px;
            -webkit-transform: rotate(-45deg);
            transform: rotate(-45deg);
            width: 12px;
            transition: all 180ms linear;
        }

        input[type="checkbox"]:checked:after {
            opacity: 1;
        }

        .button-area {
            display: flex;
            justify-content: space-between;
            margin-top: 30px;
        }

        .btn {
            font-family: inherit;
            -webkit-appearance: none;
            -moz-appearance: none;
            background-color: transparent;
            border: none;
            border-radius: 2px;
            height: 40px;
            width :100px;
            display: flex;
             padding: 0 23px; 
            cursor: pointer;
            font-size: 16px;
            text-transform: uppercase;
            letter-spacing: -0.00933333em;
            text-align: center;
        }

        .btn-primary {
            color: #fff;
            background: linear-gradient(198.08deg, #B4458C 45.34%, #E281E7 224.21%);
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
        }

        .btn-secondary {
            color: #C359AA;
        }
    </style>
</head>

<body>

<div class="login-wrapper">
    <div class="login-left">
<!--         <img src="http://res.cloudinary.com/dzqowkhxu/image/upload/v1513679279/bg-login_bxxfkf.png"> -->
			<!-- 	<img src="/resources/HTML/img/dot.png"> -->
        <div> <img id="memberlog" src="/resources/HTML/img/memlogo.gif"></div>  <br>
    </div>
    <div class="login-right">
        <div class="h2">LOG IN</div>

        <div class="form-group">
            <input type="text" id="id" placeholder="Id">
            <label for="id">Id</label>
        </div>
        <div class="form-group">
            <input type="password" id="pw" placeholder="Password">
            <label for="pw">Password</label>
        </div>
        <div class="checkbox-container">
            <input type="checkbox" id="remember">
            <div class="text-checkbox">remember me</div>
        </div>
        <div class="button-area">
            <button class="btn btn-secondary" id="gologin">JOIN
            <button class="btn btn-secondary" id="find">FIND</button></button>
            
            <button class="btn btn-primary" id="loginBtn">LOG IN</button>
        </div>
    </div>
</div>
<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous">
</script>
       
<script src="https://www.gstatic.com/firebasejs/4.8.1/firebase.js"></script>
<script>

    // Initialize Firebase
    var config = {
        apiKey: "AIzaSyAD_qm6cmfsf6dMmTqXPDYlylDq5yGZLSQ",
        authDomain: "oneday-1123.firebaseapp.com",
        databaseURL: "https://oneday-1123.firebaseio.com",
        projectId: "oneday-1123",
        storageBucket: "oneday-1123.appspot.com",
        messagingSenderId: "360329597510"
    };
    firebase.initializeApp(config);
</script>


<script>

    var openLoginRight = document.querySelector('#memberlog');
    var loginWrapper = document.querySelector('.login-wrapper');

    openLoginRight.addEventListener('click', function(){
        loginWrapper.classList.toggle('open');
    });

</script>

<script>

// 회워가입 으로 이동
$('#gologin').click(function() {
	location.href = '/member/login';
	});

// 비밀번호 찾기로 이동
$('#find').click(function() {
	window.open("/member/passwordfind","","width=1100,height=650");
	});
	
$("#loginBtn").on("click" ,function () {	
    var member = firebase.database().ref().child("/member");
    var id = $("#id").val();
    
    member.on("value", function (e) {
        var list = e.val();
        for(keyStr in list){
            if(keyStr == id) {
            	pwcheck(keyStr);
            }else{
            	console.log("아이디가 없거나 잘못 입력하셨습니다.");
            }
        }
    });
});

function pwcheck(keyStr){
	var data = firebase.database().ref("/member/" + keyStr);
	data.on("value", function (e) {
		var pw2 = e.val();
		var pw = $("#pw").val();
	
		if(pw == pw2.pw){
			$.ajax({
				url:"/main/loginProcess",
				type:"POST",
				data :{
					"id" :$("#id").val(),
					"remember" : $("#remember")[0].checked
				} ,
				success: function(){
					location.href="/main/index";
				}
			});
		}else{
			console.log("비밀번호를 다시 입력해 주세요");
		}
	});
}


</script>

</body>
</html>
