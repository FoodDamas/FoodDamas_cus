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
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=ddecf6bf572bbacdeb670a2ae1f4b445"></script>
<script type="text/javascript" src="js/api2.js"></script>
</head>

<body>


	<script>
	
	$(document).ready(function() {

	 /* 서울시  API 부분  시작  */
	 
	 		var positionAll=[];

	var start;
	 var end;
	// ApiManager.ApiList(display+i+j);
	ApiManager.ApiCount(displayCount);
		function displayCount(data) {
						var infolist = "";
						var total = data.GeoInfoWalkwayWGS.list_total_count;
						var totalPage=Math.ceil(total/1000);
						console.log(totalPage);
						for(var i=1; i<totalPage+1; i++){
							end=i*1000;
							if(i!=1){
								start=(1000*(i-1))+1;
							}else
							{
								start=1;
							}
							ApiManager.ApiList(display, start, end);
						console.log(position)
						}		
						positionAll.push(position);

						map(positionAll);
						
					}
		var position=[];
		function display(data) {
			var list= data.GeoInfoWalkwayWGS.row;
			
			console.log(list);
			console.log(data);

			for(var i =0 ; i<list.length; i++){
				position.push({
					latlng : new daum.maps.LatLng(list[i].LAT, list[i].LNG)
				});
 		//console.log(position);
			}  
		 
		}
	
	});
	
	
	
	
	 /* GEOLOCATION 현재 위치 가져오는것  */

	

	 /* 다음 API 시작  */
	function map(positionAll)
	 {
		 console.log(positionAll)
		 $(function() {  
		        // Geolocation API에 액세스할 수 있는지를 확인
		        if (navigator.geolocation) {
		            //위치 정보를 얻기
		            navigator.geolocation.getCurrentPosition (function(pos) {
		                $('#latitude').html(pos.coords.latitude);   // 위도
		                $('#longitude').html(pos.coords.longitude); // 경도
		                getList();
		             
		                
		            });
		        } else {
		            alert("이 브라우저에서는 Geolocation이 지원되지 않습니다.")
		        }
		    });
		 var getList = function(){
				var mapContainer = document.getElementById('map') // 지도를 표시할 div  

				var aa = $('#latitude').text();
				var bb = $('#longitude').text();

				console.log(aa);
				console.log(bb);
				 
				    mapOption = { 
						
				        center: new daum.maps.LatLng(aa, bb), // 지도의 중심좌표
				        level: 4 // 지도의 확대 레벨
				    };

				var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
				

				// 마커 이미지의 이미지 주소입니다
				var imageSrc = "img/walk.png"; 


					for(var j=0; j<positionAll[0].length; j++){
	

				    // 마커 이미지의 이미지 크기 입니다
				    var imageSize = new daum.maps.Size(30, 35); 
				    
				    // 마커 이미지를 생성합니다    
				    var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
				    // 마커를 생성합니다
				    var marker = new daum.maps.Marker({
				        map: map, // 마커를 표시할 지도
				        position: positionAll[0][j].latlng, // 마커를 표시할 위치
				        title : positionAll[0][j].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
				        image : markerImage // 마커 이미지 
				    });
				} 
					
					var markerPosition  = new daum.maps.LatLng(aa, bb); 

					// 마커를 생성합니다
					var myMarker = new daum.maps.Marker({
					    position: markerPosition
					});

					// 마커가 지도 위에 표시되도록 설정합니다
					myMarker.setMap(map);

	
			};
		 
	 }

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
				<li  class="active"><a href="../../api2">산책로</a></li>
				<li><a href="../../api3">주차정보</a></li>
			</ul>
		</div>
		<div class="pg-restaurant" style="padding: 0px;">
			<section class="restaurant-detail" style="padding: 0px">
				<header style="min-height: 0px; padding-bottom: 0px">
					<div>


						<h1 class="title">
							<span itemprop="name">API_산책로</span> <strong class="rate-point">
						</h1>
					</div>
				</header>
			</section>
		</div>

		<div id="map" style="width: 100%; height: 350px;"></div>
		<div id="after"></div>

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