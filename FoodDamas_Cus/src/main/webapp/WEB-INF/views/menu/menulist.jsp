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
	var u_id = "food1";
	
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
		<div class="LeeBack">← 뒤로</div>
		<div class=" leer">우리청년컵밥</div>
	</div>


	<div class="restaurant-detail row">

		<div class="col-sm-8">
		<h1 class="title">
			<span itemprop="name">메뉴</span>
			 <strong class="rate-point"></strong></h1>
		
			<div id="menu" class="menu-list">
				
						<div class="panel-collapse collapse in">
								<ul class="sub-list" id="menuList">
									<!-- <li class="ng-scope">
									here
									<div class="menui"><img src=" img/1.JPG" width="80px; "></div>
									<div class="menuu">
										<div class="menu-name">놀부부대찌개（2인）</div>
										<div class="menu-price ">15,000원</div>
										<div class="menu-desc ">놀부부대찌개＋놀부사리＋음료1병</div>
									</div>
									</li> -->
								   <!-- 
								    <li>
        								<img src="http://192.168.0.19/displayFile?fileName=/2016/09/21/9a3016d8-806a-422c-8f7d-ccead65561c0_4.png" >
       								     <div class="imgtitle"><Strong>놀부세트</Strong></br></div>
      									      <div class="radi-box imgtext">2인 \20,000</div></br>
   									 </li> -->
								    <!-- <li>
								       <img src="img/hbooset.jpg"   >
								            <div class="imgtitle"><Strong>흥부세트</Strong></br></div>
								            <div class="radi-box imgtext" >2인 \20,000</div></br>
								    </li>
								    <li>
								        <img src="img/YMset.jpg" >
								        <div class="imgtitle"><Strong>양반세트</Strong></br></div>
								        <div class="radi-box imgtext">2인 \20,000</div></br>
								    </li>
								    <li>
								        <img src="img/44.jpg" >
								        <div  class="imgtitle"><Strong>토토로세트</Strong></br></div>
								        <div class="radi-box imgtext">2개 \40,000</div></br>
								    </li>
								    <li>
								        <img src="img/44.jpg" >
								        <div class="imgtitle"><Strong>fgfg</Strong></br></div>
								        <div class="radi-box imgtext" >2개 \40,000</div></br>
								    </li>
								    <li>
								        <img src="img/44.jpg" >
								        <div  class="imgtitle"><Strong>fgfg</Strong></br></div>
								        <div class="radi-box imgtext">2개 \40,000</div></br>
								    </li> -->
									<!-- <li class="ng-scope"><span class="menu-name ">놀부부대찌개SET</span>
										<span class="menu-price ">20,000원</span>
										<div class="menu-desc ">놀부부대찌개＋놀부사리＋음료1병</div></li>
									<li class="ng-scope"><span class="menu-name ">옛맛부대찌개SET</span>
										<span class="menu-price ">19,000원</span>
										<div class="menu-desc ">옛맛부대찌개＋놀부사리＋음료1병</div></li>
									<li class="ng-scope"><span class="menu-name ">햄
											듬뿍</span> <span class="menu-price ">3,000원</span>
										<div class="menu-desc "></div></li>
									<li class="ng-scope"><span class="menu-name ">놀부사리</span>
										<span class="menu-price ">5,000원</span>
										<div class="menu-desc ">생라면사리＋만두＋햄4종＋조랭이떡＋감자수제비</div>
									</li> -->

								</ul>
						</div>
					</div>

				
		</div>
	</div>

	<div class="btm-btn-set ng-scope">
		<div class="cart-btn clearfix type-a">
			<a class="btn btn-lg btn-ygy2 btn-left  touch-cart-btn-disabled">주문표(1)</a>
			<a class="btn btn-lg btn-ygy1 btn-right touch-order-btn-disabled">바로주문하기</a>
		</div>
	</div>


	<!-- 하단 영역 -->
	<footer class="footer">
		<div class="inner" style="font-size: 16px;">

			<div style="color: #ffffff; margin-bottom: 15px;">푸드다마스</div>
			<nav class="links-external">
				<ul class="list-links">
					<li><a href="/">회사소개</a></li>
					<li><a href="/">직원내용</a></li>
					<li><a href="/">이용약관</a></li>
					<li><a class="only-desktop" href="/">브랜드</a></li>
				</ul>
			</nav>
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