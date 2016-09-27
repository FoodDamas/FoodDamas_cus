<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>나만의 맛집 검색</title>
<base href="resources/">

<link rel="stylesheet" media="screen" href="css/app.css">
<link rel="stylesheet" media="screen" href="css/fooddamas.css">
</head>

<title>푸드다마스</title>

<body>
		<div class="nav-bar">
		<div class="LeeBack">← 뒤로</div>
		<div class=" leer">우리청년컵밥</div>
	</div>


<div class="container-fluid ng-scope" id="content" >

	<div class="pg-restaurant">
		<section class="restaurant-detail">
			<header>
				<div>
					<div class="wannago_wrap">
						<button class="btn-type-icon favorite wannago_btn "></button>
						<p class="wannago_txt ng-binding">가고싶다</p>
					</div>
		<div class="restaurant-detail">
			<ul class="nav nav-tabs">
				<li class="active"><a    href="/info">정 보</a></li>
				<li><a href="/menu">메 뉴</a></li>
				<li ><a href="/review">리 뷰</a></li>
				<li ><a href="/qna">QNA</a></li>
				
			</ul>
		</div>
					<h1 class="title">
						<span itemprop="name">우리청년컵밥</span> <strong class="rate-point">
							<span class="rate-point"> 3.9 </span> <span
							itemprop="reviewCount" style="display: none;">48</span>
						</strong>
						<p class="branch">본점</p>
					</h1>
				</div>

				<div class="status ">
					<span class="category"><span class="hidden">카테고리: </span></span> <span
						class="cnt hit"><span class="hidden">조회수: </span>6,765</span> <span
						class="cnt review"><span class="hidden">리뷰수: </span><span>48</span></span>
					<span class="cnt favorite ng-binding"><span class="hidden">가고싶다
							수: </span>190</span>
				</div>
			</header>


			<div>
				<script
					src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false">
					
				</script>
				<script>
					var myCenter = new google.maps.LatLng(37.494560, 127.027633);
					var marker;
					function initialize() {
						var mapProp = {
							center : myCenter,
							zoom : 15,
							mapTypeId : google.maps.MapTypeId.ROADMAP
						};
						var map = new google.maps.Map(document
								.getElementById("googleMap"), mapProp);
						marker = new google.maps.Marker({
							position : myCenter,
							// icon:'themes/assets/images/nepali-momo.png',
							animation : google.maps.Animation.BOUNCE
						});

						marker.setMap(map);

						// Info open
						var infowindow = new google.maps.InfoWindow({
							content : "Hello World!"
						});

						google.maps.event.addListener(marker, 'click',
								function() {
									infowindow.open(map, marker);
								});
					}
					google.maps.event
							.addDomListener(window, 'load', initialize);
				</script>
				<div id="googleMap" style="height: 200px;"></div>

			</div>
			<!-- 상세 정보 -->
			<table>
				<caption></caption>
				<tbody>
				<colgroup>
					<col width="110px;">

				</colgroup>
				<tr>
					<th style="width: 100px;">주소:</th>
					<td>인천시 중구 신포동 1-12</td>
				</tr>
				<tr>
					<th>전화번호:</th>
					<td>032-762-5800</td>
				</tr>
				<tr>
					<th>음식 종류:</th>
					<td>컵밥리</td>
				</tr>

				<tr>
					<th>가격대:</th>
					<td>만원 미만</td>
				</tr>

				<tr>
					<th>주차:</th>
					<td>주차공간없음</td>
				</tr>

				<tr>
					<th>영업시간:</th>
					<td> 월-금: 10:00 - 21:00<br> 토-일: 09:30 - 21:00</td>
				</tr>


				<tr>
					<th>휴일:</th>
					<td>월</td>
				</tr>


				<!--<tr class="more">-->
				<!--<td colspan="2"><a href="#" class="btn-more">펼치기</a></td>-->
				<!--</tr>-->
				</tbody>
			</table>
		</section>


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