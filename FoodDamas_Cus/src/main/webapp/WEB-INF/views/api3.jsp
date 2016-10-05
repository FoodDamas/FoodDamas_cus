<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<html>
<head>
<title>푸드다마스</title>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css'>
<base href="../resources/">
<link rel="stylesheet" media="screen" href="css/app.css">
<link rel="stylesheet" media="screen" href="css/fooddamas.css">
<link rel="stylesheet" media="screen" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/menuStyle.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript"
	src="//apis.daum.net/maps/maps3.js?apikey=ddecf6bf572bbacdeb670a2ae1f4b445"></script>
<script type="text/javascript" src="js/api3.js"></script>

<style>
table {
	font-size: 11px;
	width: 100%;
}

th {
	border-bottom: 1px dotted #cccccc
}

td {
	padding-left: 10px;
	border-bottom: 1px dotted #cccccc
}
</style>

</head>

<body>


	<script>
	
		$(document)
				.ready(
						function() {
							$(".leer").html("API");	

							/* 서울시  API 부분  시작  */

							var positionAll = [];

							var start;
							var end;
							// ApiManager.ApiList(display+i+j);
							ApiManager.ApiCount(displayCount);
							function displayCount(data) {
								var infolist = "";
								var total = data.PublicParkingAvaliable.list_total_count;
								var totalPage = Math.ceil(total / 1000);
								console.log(totalPage);
								for (var i = 1; i < totalPage + 1; i++) {
									end = i * 1000;
									if (i != 1) {
										start = (1000 * (i - 1)) + 1;
									} else {
										start = 1;
									}
									ApiManager.ApiList(display, start, end);
									console.log(position)
								}
							}
							function display(data) {

								console.log(data);
								var list = data.PublicParkingAvaliable.row;

								console.log(list);
								var apilist = ""

								for (var i = 0; i < list.length; i++) {

									apilist += "<div style='margin-top:10px; margin-bottom:5px; color:#eb6100'>[ " + list[i].PARK_NAME + " ]</div>"
									        + "<table style='margin:0px;'><caption></caption><tbody><colgroup><col width='110px;'></colgroup><tr>"

											+ "<th style='width: 100px;''> 주차장주소</th><td>"

											+ list[i].PARK_ADDRESS
											+ "</td></tr>"
											+ "<th style='width: 100px;''>총 주차수</th><td>"

											+ list[i].MAX_PARKING_CNT
											+ "</td></tr>"
											+ "<th style='width: 100px;''> 가능주차수</th><td>"

											+ list[i].PARKING_CNT
											+ "</td></tr>"
											+ "<th style='width: 100px;''> 전화번호</th><td>"

											+ list[i].TEL_NO + "</td></tr>"

											+ "</tbody></table>"

								}
								;

								$("#apilist").html(apilist);
							}

						});

		/* GEOLOCATION 현재 위치 가져오는것  */
	</script>

	<ul style="display: none">
		<li>위도:<span id="latitude"></span></li>
		<li>경도:<span id="longitude"></span></li>
	</ul>

		<div class="nav-bar">
		<div class="LeeBack">← 뒤로</div>
		<div class=" leer">우리청년컵밥</div>
	</div>

			<%@include file="headersub.jsp"%>
	<div class="container-fluid">

		<div class="restaurant-detail">
			<ul class="nav nav-tabs">
				<li ><a href="../../api1">공용화장실</a></li>
				<li><a href="../../api2">산책로</a></li>
				<li  class="active"><a href="../../api3">주차정보</a></li>
			</ul>
		</div>
		<div class="pg-restaurant" style="padding: 0px;">
			<section class="restaurant-detail" style="padding: 0px">
				<header style="min-height: 0px; padding-bottom: 0px">
					<div>


						<h1 class="title">
							<span itemprop="name">주차정보</span> <strong class="rate-point">
						</h1>
					</div>
				</header>
			</section>
		</div>

		<div id="apilist"></div>


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