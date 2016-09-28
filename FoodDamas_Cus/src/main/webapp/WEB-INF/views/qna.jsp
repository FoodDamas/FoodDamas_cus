<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>푸드다마스</title>
<base href="resources/">

<link rel="stylesheet" media="screen" href="css/app.css">
<link rel="stylesheet" media="screen" href="css/fooddamas.css">
<link rel="stylesheet" media="screen" href="css/bootstrap.min.css">
<link rel='stylesheet prefetch'
	href='http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.min.css'>

</head>


<body>
	<div class="nav-bar">
		<div class="LeeBack">← 뒤로</div>
		<div class="leer">우리청년컵밥</div>
	</div>

	<div class="container-fluid">

		<div class="restaurant-detail">
			<ul class="nav nav-tabs">
				<li><a href="/info">정 보</a></li>
				<li><a href="/menu">메 뉴</a></li>
				<li><a href="/review">리 뷰</a></li>
				<li class="active"><a href="/qna">QNA</a></li>
			</ul>
		</div>
		<div class="pg-restaurant" style="padding: 0px;">
			<section class="restaurant-detail" style="padding: 0px">
				<header style="min-height: 0px; padding-bottom: 0px">
					<div>


					<!-- 	<h1 class="title">
							<span itemprop="name">QNA</span> <strong class="rate-point">
						</h1> -->
					</div>
				</header>
			</section>
		</div>

		<div style="padding: 5px 10px; border: 1px solid #cccccc; margin-bottom: 10px;">

			<ul id="review" class="list-group" style="margin: 0px;">

<table class="table bb1" >
					<colgroup>
						<col width="20%">
						<col width="80%">
					</colgroup>
					<tr>
						<th>푸드트럭</th>
						<td><input class="form-control Bid" value="청년컴밥" readonly="readonly"></td>
					</tr>
					<tr>
						<th>제 목</th>
						<td><input class="form-control Bid"></td>
					</tr>
					<tr>
						<th>내 용</th>
						<td><textarea class="form-control teB"></textarea></td>
					</tr>
					
				</table>
<button type="button" class="btn btn-default">취소</button>
<button type="button" class="btn btn-ygy1">등록</button>
		</div>

		<li class="list-group-item">
		
		<span class="">청년컵밥</span> <span
			class="re_date">2016년 8월 18일</span> <span class="re_name">이성현 님</span>
			<p class="re_content"> 곱창컵밥 소문만 들었는뎅 너무나 맛있네여 추천이요</p>
				
			<div style="border-bottom:1px dotted #cccccc"></div>	
				
				<span class="ico-star">답변</span> <span
			class="re_date">2016년 8월 18일</span> <span class="re_name">권예진 님</span>
			<p class="re_content"> 너무맛있어요 스팸마요에 스팸 완전많이 들었어요 기회가되면 또먹고싶네요 ㅎㅎㅎㅎㅎㅎㅎ.</p>
				
				
				
				
				
				</li>
				
				
				
				


		<li class="list-group-item btn-more"><a><span>더 보기<i
					class="arr-down"></i></span></a></li>
		</ul>
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