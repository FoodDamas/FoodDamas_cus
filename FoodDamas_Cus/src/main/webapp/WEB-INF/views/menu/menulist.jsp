<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>푸드다마스</title>
<!-- <base href="../resources/"> -->
<base href="../resources/">
<link rel="stylesheet" media="screen" href="css/app.css">
<link rel="stylesheet" media="screen" href="css/fooddamas.css">
</head>
<style>
#menuList li IMG {width: 130px; height: 130px;text-align: center}
    li {border: 1px solid #cccccc; list-style:none; width: 48%;float: left; margin: 2px; text-align: center}
    .imgtext {color: #00a7d0; text-align: center;}
    .imgtitle {color: black; text-align: center;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/menu.js"></script>
<script >
$(document).ready(function(){
	var u_id = $(".u_id").val();
	console.log(u_id);
	menuManager.menuListAll(u_id, displayData);
	
	function displayData(data){
		console.log(data);
		var menuList="";
		var list = data.list;
		for(var i=0; i<list.length; i++){
			menuList +="<a href='/menu/menudetail?mno="+list[i].mno+"'><li>"
				+"<img src='http://192.168.0.19/displayFile?fileName="+list[i].m_img+"'>"
			    +"<div class='imgtitle'><Strong>"+list[i].m_name+"</Strong></br></div>"
			    +"<div class='radi-box imgtext'>"+list[i].m_price+"</div></br>"
			 	+"</li></a>";
		}
		$("#menuList").html(menuList);
		
		
	}//end display
	
	
});//end document
	
</script>
<body>
		<div class="nav-bar">
		<div class="LeeBack" style="clear:both;"><a href="http://localhost/home"><img src="img/back.png" style="height:50% ;width: 35%"></a></div>
		<div class=" leer">우리청년컵밥</div>
		</div>

	<input value="${u_id}" class='u_id' hidden>
	<input value="${sno}" calss= 'sno' hidden>
	<div class="restaurant-detail row">

		<div class="col-sm-8">
		<h1 class="title">
			<span itemprop="name">메뉴</span>
			 <strong class="rate-point"></strong></h1>
		
			<div id="menu" class="menu-list">
					<div class="panel-collapse collapse in">
							<ul class="sub-list" id="menuList">

							</ul>
					</div>
			</div>
			<div style="clear: both; ">
            </a> <a class="btn btn-lg btn-ygy1 btn-right" style="width: 100%" href="/store/cart?u_id=${u_id}&sno=${sno}">장바구니</a>
			</div>
				
		</div>
	</div>



	<!-- 하단 영역 -->
	<footer class="footer">
		<div class="inner" style="font-size: 16px;">

			<div style="color: #ffffff; margin-bottom: 15px;">푸드다마스</div>

			<div class="language-copyrights">
				<p class="select-language">
					<a href="/" class="selected">한국어</a> <a href="/">English</a>
				</p>
				<small>
					<p>
						푸드다마스 대표이사: 이성현 | 사업자 등록번호: 000-00-0000 <br class="only-mobile">
						서울특별시 강남구 역삼동 12, 8층<br> <span class="copyrights">©
							2016 zzennam. All rights reserved.</span>
					</p>
				</small>
			</div>
		</div>
	</footer>
</body>
</html>