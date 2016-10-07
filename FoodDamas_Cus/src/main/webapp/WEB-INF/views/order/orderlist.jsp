<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<html>
<head>
<title>푸드다마스</title>

<link rel='stylesheet prefetch'
	href='https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css'>

<base href="../resources/">


<link rel="stylesheet" media="screen" href="css/app.css">
<link rel="stylesheet" media="screen" href="css/fooddamas.css">
<link rel="stylesheet" media="screen" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/menuStyle.css">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel='stylesheet prefetch'
	href='http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.min.css'>

<script src="js/orderlist.js"></script>

<style>
.re_name {
	margin-left: 6px;
}
#write {
	display: none;
}
.faq-cat-content {
	margin-top: 25px;
}
.faq-cat-tabs li a {
	padding: 15px 10px 15px 10px;
	background-color: #ffffff;
	border: 1px solid #dddddd;
	color: #777777;
}
.nav-tabs li a:focus, .panel-heading a:focus {
	outline: none;
}
.panel-heading a, .panel-heading a:hover, .panel-heading a:focus {
	text-decoration: none;
	color: #777777;
}
.faq-cat-content .panel-heading:hover {
	background-color: #efefef;
}
.active-faq {
	border-left: 5px solid #888888;
}
.panel-faq .panel-heading .panel-title span {
	font-size: 13px;
	font-weight: normal;
}
</style>

<script>
	$(document).ready(function() {
		
		    $('.collapse').on('show.bs.collapse', function() {
		        var id = $(this).attr('id');
		        $('a[href="#' + id + '"]').closest('.panel-heading').addClass('active-faq');
		        $('a[href="#' + id + '"] .panel-title span').html('<i class="glyphicon glyphicon-minus"></i>');
		    });
		    $('.collapse').on('hide.bs.collapse', function() {
		        var id = $(this).attr('id');
		        $('a[href="#' + id + '"]').closest('.panel-heading').removeClass('active-faq');
		        $('a[href="#' + id + '"] .panel-title span').html('<i class="glyphicon glyphicon-plus"></i>');
		    });
						var u_id = "beuteu";
						var c_id = "252760107";
						var obj = [];
						var page = "";
						var paging = "";
						var pageMaker = [];
						/////////////////////////////////////////////////////////////////////////////////////////          
						///////////////////////////////////////    QNA AJAX 시작       ///////////////////////////////
						///////////////////////////////////////////////////////////////////////////////////////// 
						OrderListManager.OrderList(c_id, page, display);
						function display(data) {
							total = data.totalCount
							console.log(total);
							var orderlist = "";
							var list = data.list;
							
							for (var i =0 ; i <list.length; i++ ){
								
								var ida = "#"+ "faq" + i;
								
								console.log(ida);
								
								var idb = "faq" + i;
								
								var fontcolor = list[i].state_code == 10 ? "color:red" : "color:blue";
								
								orderlist +=  
									
								"<div class='panel-heading'><a data-toggle='collapse' href='" +  ida + "'>"
								+ "[ " + list[i].co_name + " ]　" + list[i].regdate + "　 " + "<span style='"+ fontcolor +"'>" + list[i].state_name + "</span>" + "<span class='pull-right'><i class='glyphicon glyphicon-plus'></i></span></a>"
								+  "</div><div id='" + idb + "'class='panel-collapse collapse'><div class='panel-body'>"
								+  "<div style='border-bottom:1px dotted #cccccc;line-height: 26px '> 떡볶이<span style='float:right'> X 1개</span><span style='float:right'>3,000</span></div>"								
								+  "<div style='border-bottom:1px dotted #cccccc;line-height: 26px '> 순대<span style='float:right'> X 1개</span><span style='float:right'>3,000</span></div>"								
								+  "<div style='border-bottom:1px dotted #cccccc;line-height: 26px '> 어묵<span style='float:right'> X 1개</span><span style='float:right'>1,000</span></div>"								
								+  "<div style='line-height: 26px;color:red '> 총합계<span style='float:right;color:red; font-size:16px;'>7,000</span></div>"								
								
								+/* + list[i].total_price + */  "</div></div>"
									
								
							}
							
							
							$("#orderlist").html(orderlist);
							
							
						}
					});
</script>
<body>

	<div class="nav-bar" style="border: 1px dotted; line-height: 26px">
		<div class="LeeBack">← 뒤로</div>
		<div class=" leer">우리청년컵밥</div>
	</div>

	<%@include file="../headersub.jsp"%>
	<div class="container-fluid">

		<div class="pg-restaurant" style="padding: 0px; clear: both">
			<section class="restaurant-detail">
				<header>
					<h1 class="title">
						<span itemprop="name">구매내역</span>
					</h1>
				</header>
			</section>
		</div>

		<div style="height: 50px;"></div>



		<div class="panel panel-default panel-faq" id=orderlist>
			
			
			
		</div>



	



		<div class="box-footer clearfix">
			<ul id="paging-comment"
				class="pagination pagination-sm no-margin pull-right">
			</ul>
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