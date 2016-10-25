<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="img/favicon.ico">
<base href="resources/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>나만의 맛집 검색</title>
<!-- 메뉴 -->
<link rel='stylesheet prefetch'
	href='https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="css/menuStyle.css">
<!-- 메뉴 -->

<script src="http://s.codepen.io/assets/libs/modernizr.js"
	type="text/javascript"></script>
<!-- 911ffa91ef92e4018ca8e381432dccea -->
<!-- d76d3b667738eb709c0fdad4f29b259e -->
<!-- 07803719751f68ea187b3847f10d30e8 -->
<script type="text/javascript"
	src="//apis.daum.net/maps/maps3.js?apikey=d76d3b667738eb709c0fdad4f29b259e"></script>
<script type="text/javascript"
	src="//apis.daum.net/maps/maps3.js?apikey=d76d3b667738eb709c0fdad4f29b259e&libraries=LIBRARY"></script>
<!-- services 라이브러리 불러오기 -->
<script type="text/javascript"
	src="//apis.daum.net/maps/maps3.js?apikey=d76d3b667738eb709c0fdad4f29b259e&libraries=services"></script>
<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
<script type="text/javascript"
	src="//apis.daum.net/maps/maps3.js?apikey=d76d3b667738eb709c0fdad4f29b259e&libraries=services,clusterer,drawing"></script>


<link rel="stylesheet" media="screen" href="css/fooddamas.css">
<link rel="stylesheet" href="css/dropbox.css">

</head>
<body class="home_page">


	<!-- 상단 영역 -->
	<header class="header">
		<!-- mode-scroll, searching -->

		<%@include file="header.jsp"%>


		<!-- <nav class="nav-menus">
         <div class="menus">
            로그인 후
            <button class="btn-user">
               <figure class="user">
                  <span class="badge"><em class="count">1</em><span
                     class="hidden">개의 알림이 있습니다.</span></span>

                  <div class="is_login_status_btn ng-hide" ng-show="is_login">
                     <div class="thumb"></div>
                  </div>

                  <div class="thumb no-profile" ng-show="!is_login"></div>
               </figure>
            </button>
         </div>

      </nav> -->
	</header>

	<!-- 본문 영역 -->
	<main class="pg-main">
	<article class="contents main-padding">
		<!-- Carousel
    ================================================== -->
		<div>
			<div id="map" style="width: 100%; height: 250px;"></div>

		</div>


		<style>
.nav-dropdown li {
	width: 100%;
}

.nav-dropdown li a {
	width: 100%;
}
</style>

		<script
			src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>


		<!--이가영-->

		<!-- 인기 식당 -->

		<div class="slider-container" style="margin-left: 10px;">
			<p class="tags">
				<button href="#" class="tag-item tag-item selected" id="disBtn">거리순</button>
				<button href="#" class="tag-item tag-item selected" id="graBtn">평점순</button>
				<button href="#" class="tag-item tag-item selected" id="revBtn">리뷰순</button>
			</p>
		</div>

		<div class="slider-container popular_restaurant_container" id="listCont">
			<ul class="list-restaurants type-main" id="list">
			</ul>
			<button class="more_btn" id="disMore">더보기</button>
		</div>

		<div class="slider-container popular_restaurant_container"
			id="graCont" style="display: none">
			<ul class="list-restaurants type-main" id="gradeList">
			</ul>
			<button class="more_btn" id="graMore">더보기</button>
		</div>

		<div class="slider-container popular_restaurant_container"
			id="revCont" style="display: none">
			<ul class="list-restaurants type-main" id="reviewList">
			</ul>
			<button class="more_btn" id="revMore">더보기</button>
		</div>
		
	</article>
	</main>

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

	<!--이가영-->



	<script>
		// on document ready
		$(document).ready(function() {

							/////////////////////////////////////////////////////////////////////////////////////////////
							///////////////////////////////////////*성현*//////////////////////////////////////////////////
							/////////////////////////////////////////////////////////////////////////////////////////////

							//map

							// List & Map Create
							var orderBy = new Object();
							var dP = 0;
							var gP = 0;
							var rP = 0;
							var mP = 0;
							orderBy.page = dP;
							orderBy.orderBy = "distance";
							homeManager.getPosition(orderBy);
							console.log("-------------------------");
							// 생성자 써야될것 같음
							function getList(data, callback) {
							}

							// 더보기
							$("#disMore").on("click", function() {
								console.log("disMore more data");
								orderBy.orderBy = "distance";
								dP += 8;
								orderBy.page = dP;
								homeManager.getPosition(orderBy);
							});

							$("#graMore").on("click", function() {
								console.log("graMore more data");
								orderBy.orderBy = "grade";
								gP += 8;
								orderBy.page = gP;
								homeManager.getPosition(orderBy.page);
							});

							$("#revMore").on("click", function() {
								console.log("revMore more data");
								orderBy.orderBy = "review";
								rP += 8;
								orderBy.page = rP;
								homeManager.getPosition(orderBy.page);
							});

							// Btn List      1 able 0 disable
							var d = 0;
							var g = 1;
							var r = 1;
							var m = 1;

							$("#disBtn").on("click", function() {
												// console.log("dis click");
												// 중복 방지
												if (d == 0) {
													console.log("중복 방지");
													return;
												}
												if (d == 1) {
													d = 0;
													g = 1;
													r = 1;
													m = 1;
													orderBy.orderBy = "distance";
													homeManager
															.getPosition(orderBy);

													document
															.getElementById("listCont").style.display = "block";
													document
															.getElementById("graCont").style.display = "none";
													document
															.getElementById("revCont").style.display = "none";
													document
															.getElementById("menCont").style.display = "none";
												}

											});

							$("#graBtn")
									.on(
											"click",
											function() {
												//console.log("graBtn click");
												// 중복 방지
												if (g == 0) {
													console.log("중복 방지");
													return;
												}
												if (g == 1) {
													d = 1;
													g = 0;
													r = 1;
													m = 1;

													orderBy.orderBy = "grade";
													homeManager
															.getPosition(orderBy);

													document
															.getElementById("listCont").style.display = "none";
													document
															.getElementById("graCont").style.display = "block";
													document
															.getElementById("revCont").style.display = "none";
													document
															.getElementById("menCont").style.display = "none";
												}
											});
							$("#revBtn")
									.on(
											"click",
											function() {
												// 중복 방지
												if (r == 0) {
													console.log("중복 방지");
													return;
												}
												if (r == 1) {
													d = 1;
													g = 1;
													r = 0;
													m = 1;
													console.log("revBtn click");
													orderBy.orderBy = "review";
													homeManager
															.getPosition(orderBy);
													document
															.getElementById("listCont").style.display = "none";
													document
															.getElementById("graCont").style.display = "none";
													document
															.getElementById("revCont").style.display = "block";
													document
															.getElementById("menCont").style.display = "none";
												}
											});

							$("#menBtn")
									.on(
											"click",
											function() {
												// 중복 방지
												if (m == 0) {
													console.log("중복 방지");
													return;
												}
												if (r == 1) {
													d = 1;
													g = 1;
													r = 1;
													m = 0;
													console.log("menBtn click");
													orderBy.orderBy = "menu";
													homeManager
															.getPosition(orderBy);
													document
															.getElementById("listCont").style.display = "none";
													document
															.getElementById("graCont").style.display = "none";
													document
															.getElementById("revCont").style.display = "none";
													document
															.getElementById("menCont").style.display = "block";
												}
											});

							/////////////////////////////////////////////////////////////////////////////////////////////
							///////////////////////////////////////*성현*//////////////////////////////////////////////////
							/////////////////////////////////////////////////////////////////////////////////////////////

							var typeSelect = 0;
							$('.nav-dropdown > .type').on("click", function(e) {//분류별
								e.preventDefault();
								if (typeSelect == 0) {
									typeSelect++;
									$(".typeSelect").show(100);
									$(".typeFoodSelect").hide(100);
								} else {
									typeSelect--;
									$(".typeSelect").hide(100);
								}
							});
							var typeFoodSelect = 0;
							$('.nav-dropdown > .typeFood').on("click",
									function(e) {//종류별
										e.preventDefault();
										if (typeFoodSelect == 0) {
											typeFoodSelect++;
											$(".typeFoodSelect").show(100);
											$(".typeSelect").hide(100);
										} else {
											typeFoodSelect--;
											$(".typeFoodSelect").hide(100);
										}
									});

						});
	</script>
	<!--이가영-->

	<script src="js/home.js"></script>
</body>
</html>