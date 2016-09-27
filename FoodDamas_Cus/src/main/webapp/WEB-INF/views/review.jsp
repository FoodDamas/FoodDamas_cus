<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>푸드다마스</title>
<base href="resources/">

<link rel="stylesheet" media="screen" href="css/app.css">
<link rel="stylesheet" media="screen" href="css/fooddamas.css">
<link rel='stylesheet prefetch'
	href='http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.min.css'>

</head>


<body>
	<div class="nav-bar">
		<div class="LeeBack">← 뒤로</div>
		<div class=" leer">우리청년컵밥</div>
	</div>

	<div class="container-fluid ng-scope">

		<div class="restaurant-detail">
			<ul class="nav nav-tabs">
				<li><a href="/info">정 보</a></li>
				<li><a href="/menu">메 뉴</a></li>
				<li class="active"><a href="/review">리 뷰</a></li>
				<li ><a href="/qna">QNA</a></li>
				
			</ul>
		</div>
		<div class="pg-restaurant" style="padding: 0px;">
			<section class="restaurant-detail" style="padding: 0px">
				<header>
					<div>
						<div class="wannago_wrap">
							<button class="btn-type-icon favorite wannago_btn "></button>
							<p class="wannago_txt">평점쓰기</p>
						</div>

						<h1 class="title">
							<span itemprop="name">청년컵밥</span> <strong class="rate-point">
								<span class="rate-point"> 3.9 </span> <span
								itemprop="reviewCount" style="display: none;">48</span>
							</strong>
							<p class="branch">본점</p>
						</h1>
					</div>
				</header>
			</section>
		</div>

		<div
			style="padding: 5px 10px; border: 1px solid #cccccc; margin-bottom: 10px;">
			<script src='http://cdn.jsdelivr.net/vue/0.12.16/vue.js'></script>

			<ul id="review" class="list-group" style="margin: 0px;">
				<!--  별 평점 시작 -->

				<div id="app">
					<star-rating></star-rating>
				</div>

				<script type="text/x-template" id="template-star-rating">
  <div class="star-rating">
    <label
      class="star-rating__star"
      v-repeat="rating in ratings"
      v-class="is-selected: ((value >= rating) && value != null), is-disabled: disabled"
      v-on="mouseover: star_over(rating), mouseout: star_out, click: set(rating)">
      <input
        class="star-rating star-rating__checkbox"
        type="radio"
        v-attr="name: name, value: rating, required: required, id: id, disabled: disabled"
        v-model="value">
      ★
    </label>
  </div>
</script>
				<link rel='stylesheet prefetch'
					href='https://cdnjs.cloudflare.com/ajax/libs/vue/0.12.16/vue.min.js'>
				<script src="js/index.js"></script>
				<!--  별 평점  끝 -->

				<textarea
					style="height: 46px; float: left; width: 80%; padding: 5px; font-size: 14px;">hjkhjkh</textarea>
				<a class="btn btn-lg btn-ygy1 btn-right" style="width: 20%;">등록</a>
		</div>

		<li class="list-group-item ng-scope"><span class="ico-star">★★★★☆</span>

			<span class="ico-clean-review"></span> <br> <span
			class="re_date">2016년 8월 18일</span> <span> <span
				class="re_name">be**님</span>
		</span>
			<p class="re_content">배달해주시는 분 항상 친절하셔서 기분좋네요. 맛도 좋은데 이번에 마늘강정
				주문했는데 사진의 강정이 왔어요.</p></li>
		<li class="list-group-item ng-scope"><span class="ico-star">★★★★☆</span>

			<span class="ico-clean-review"></span> <br> <span
			class="re_date">2016년 8월 18일</span> <span> <span
				class="re_name">be**님</span>
		</span>
			<p class="re_content">배달해주시는 분 항상 친절하셔서 기분좋네요. 맛도 좋은데 이번에 마늘강정
				주문했는데 사진의 강정이 왔어요.</p></li>
		<li class="list-group-item ng-scope"><span class="ico-star">★★★★☆</span>

			<span class="ico-clean-review"></span> <br> <span
			class="re_date">2016년 8월 18일</span> <span> <span
				class="re_name">be**님</span>
		</span>
			<p class="re_content">배달해주시는 분 항상 친절하셔서 기분좋네요. 맛도 좋은데 이번에 마늘강정
				주문했는데 사진의 강정이 왔어요.</p></li>
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