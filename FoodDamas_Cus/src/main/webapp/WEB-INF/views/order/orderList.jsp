<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>푸드다마스</title>
<base href="../resources/">

<link rel="stylesheet" media="screen" href="css/app.css">
<link rel="stylesheet" media="screen" href="css/fooddamas.css">
<style type="text/css">

#price{
	margin-left:5px; 
	font-weight:bold; 
	color:#000080;
}
#delete{
	float: right;
	 font-size: 16px; 
	 font-weight: bold;
}
#quantity{
	margin: 0 10px;
}
.dottedP{
 	border-bottom: 1px dotted #cccccc; 
 	margin:20px 0 0 0;
}

</style>
</head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/cart.js"></script>

<body>
	<div class="nav-bar">
		<div class="LeeBack">← 뒤로</div>
		<div class=" leer">우리청년컵밥</div>
	</div>

	<div class="cart-wrap">
		<div class="sub-title">
			<span>주문 목록</span> </a>
		</div>
		<div class="cart">
<!-- 			<div class="restaurant-name"></div>
 -->			<ul class="list-group">

				<li class="list-group-item clearfix">
				<div class= "menuList">
	
				</li>
			</ul>


			<div class="clearfix">
				
				 <span class="list-group-item cart-total-order-price" id="totalPrice">
					</span>
				<input id='total' hidden>
			</div>
			
		
			
			<!-- <div class="cart-btn clearfix" style="margin-top: 80px;">
				<a class="btn btn-lg btn-ygy2 btn-left" href="/menu">메뉴추가</span></a> 
				<a id='orderCart' class="btn btn-lg btn-ygy1 btn-right">주문하기</a>
			</div> -->
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
	<script type="text/javascript">
	$(document).ready(function(){
		var c_id="1";
		var sno=50;
		cartManager.cartList(c_id,display);
		
		function display(data) {
			console.log(data);
			var menuList="";
			var totalPrice=0;
			for(var i=0; i<data.length; i++){
				menuList+=
					"<a class='btn' id='delete'  data-cno='"+data[i].cno+"'>X</a><div class='row'><div class='m_name' style='margin-left: 20px;clear:both'>"
					+data[i].m_name	+ "</div><br><div><div class='col-xs-6 pull-left'>"
				  /*   + "<a class='btn btn-del-menu'>삭제</a>"  */
				    + "<span class='order-price ' id= 'price'>" +data[i].m_price+" 원</span>"+
				"</div><div class='col-xs-6 text-right'><a id ='minus' class='btn-minus' data-cno='"+data[i].cno+"' data-quantity='"+data[i].quantity+"'> - </a><span  id= 'quantity' >"+data[i].quantity+"</span>"+
				"<a class='btn-plus' id=plus data-cno='"+data[i].cno+"' data-quantity='"+data[i].quantity+"'>+</a></div></div></div><p class='dottedP'></p>";
				totalPrice+=(data[i].quantity)*(data[i].m_price);
			}
			$(".menuList").html(menuList);
			$("#total").val(totalPrice);

			totalPrice=totalPrice.toLocaleString();

			$("#totalPrice").text(totalPrice+"원");
		}
		$(".menuList").on("click","#minus", function () {	
			var $this=$(this);
			var cnt=Number($this.attr("data-quantity"))-1;
			var cno=$this.attr("data-cno");
			var obj="";
			if(cnt==0){
				if (confirm("0개이하입니다. 삭제할까요?")){
					deleteCart(cno);
			}else{
					return false;
				}
			}
			obj={cno:cno ,quantity:cnt};
			updateQuantity(obj)
//			$(this, "#quantity").text(cnt);
		});
		$(".menuList").on("click","#plus", function () {	
			var $this=$(this);
			var cnt=Number($this.attr("data-quantity"))+1;
			var cno=$this.attr("data-cno");
			var obj="";
			obj={cno:cno ,quantity:cnt};
			updateQuantity(obj);
	
		});
		
		
		$(".menuList").on("click", "#delete", function() {
			var $this=$(this);
			var cno=$this.attr("data-cno");
			deleteCart(cno);
		});
		
		$("#orderCart").on("click", function () {
			var total=$("#total").val();
			obj={
					total_price:total,
					c_msg: $(".c_msg").val(),
					sno: sno,
					c_id:c_id
					
			}
			cartManager.insertOrder(obj, function() {
				console.log("주문됨");
			});
			
		});
		
		function updateQuantity(obj) {
			cartManager.quantity(obj, function() {
				cartManager.cartList(c_id,display);
			});
		}
		
		function deleteCart(cno) {
			cartManager.deleteCart(cno, function() {
				cartManager.cartList(c_id,display);
			});
			
		}
	});
	
	</script>
</body>
</html>