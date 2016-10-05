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
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel='stylesheet prefetch'	href='http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.min.css'>

<script src="js/review.js"></script>

<style>

.re_name { margin-left: 6px;} 

#write {display: none;}


</style>

<script>

$(document).ready(function() {
    
    var writer = "beuteu"   // 푸드트럭 사장 아이디
    var u_id ="beuteu";
    var c_id ="beuteu";

    var obj=[];
    var page="";
    var paging="";
    var pageMaker=[];
 
/////////////////////////////////////////////////////////////////////////////////////////          
///////////////////////////////////////    QNA AJAX 시작       ///////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////// 
  
ReviewManager.ReviewList(u_id,page, display);
    
     function display(data) {
    	    
    	    var stara ="";
    	    var st ="";
    	    var average =""; 
    	    var ave =""; 
    	    var total =""; 
    	 
    	 
total = data.totalCount
   

console.log(total);

    var listreview = "";
    var list= data.list;
    
    console.log(list);
	
    
    console.log(list.length);

    
    pageMaker=data.pageMaker;

    for (var i = 0; i < list.length; i++) {
    	
    	
    	
    	stara = parseInt(list[i].grade)

    	st = parseInt(st +  stara);
    	
    	
    	
     
    	
    	ave = st / total;
    	
    	
    	
    	average =  ave.toFixed(1);
    	
    	
    	
    	
    	   console.log("st" + st );
    	   console.log("total" + total);
    	   console.log("average" + average);

    	
    	$("#average").text(average);

    	var star=""
    	
    	if (1== list[i].grade){
    		
    		star = "★☆☆☆☆"
    		
    	}else if (2 == list[i].grade){
    		 star = "★★☆☆☆"
    	}else if (3 == list[i].grade){
    		 star = "★★★☆☆"
    	}else if (4 == list[i].grade){
    		 star = "★★★★☆"
    	}else if (5 == list[i].grade){
   		 star = "★★★★★"
   	}

 	  listreview += 
 		  
 	 		"<li class='list-group-item ng-scope'><span class='ico-star'>"
 	 		+ star +  "</span><span class='ico-clean-review'></span><br><span class='re_date'>"
 	 		+ list[i].reg_date + "</span><span><span class='re_name'>"
 	 		+ "[" + list[i].c_id + "]"+ "</span></span><p class='re_content'>"
 	 		+ list[i].content + "</p></li>"
 		   
    }	 
    
    
    $("#Reviewlist").html(listreview);
	pagingView();

       
     }
     
		/////////////////////////////////////////////////////////////////////////////////////////          
		////////////////////////////////////Review pageing 시작       /////////////////////////////////
		/////////////////////////////////////////////////////////////////////////////////////////
  function pagingView(){
			paging = "";
			if(pageMaker.prev) {
				paging +="<li><a href='"+(pageMaker.start-1)+"'>◀</a></li>";}
			for(var i =pageMaker.start; i<=pageMaker.end; i++){
				paging += "<li><a href='"+i+"'>" + i + "</a></li>";
				
			}
			if(pageMaker.next){
				paging+="<li><a href='" + (pageMaker.end+1)+ "'>▶</a></li>";
			}
			$("#paging-comment").html(paging);
				
		}
		$("#paging-comment").on("click","li a", function(event){
		  event.preventDefault();
		  console.log("paging.......................");
		
		  var page = $(this).attr("href");
		  ReviewManager.ReviewList(u_id,page, display);
		});
		
		

		$(".wannago_wrap").on("click" , function () {
						
	//	document.getElementById("write").style.display=block;
	//		$('#write').css('display','block');
	
	
	$("#write").toggle();
	

		})
		

		
		$("#create").on("click" , function name() {
			var star = document.getElementsByName('star');
			
			console.log(star[0].checked);
			console.log(star[1].checked);
			console.log(star[2].checked);
			console.log(star[3].checked);
			console.log(star[4].checked);
			
 			for (var i = 0 ; star.length; i++){
				
				if(star[i].checked == true){
				var check = star[i].value
				$("#check").val(check);
				break;
					
				}
				
			}

				obj = {
						
						c_id : c_id,
						u_id : u_id,
						grade : $("#check").val(),
						content : $("#content").val()
						
				}
			
			
		
			
			console.log(obj);

			
			
			if($("#star").val()=="" ){
				alert("제목을 입력해 주세요");
				return false;
			}else if($("#content").val()==""){
				alert("내용을 입력해 주세요");
				return false;
			}
			console.log(obj);
			 ReviewManager.Insert(obj, function () {
				   
				 ReviewManager.ReviewList(u_id,page,display);
			
				   alert("댓글이 등록 되었습니다");
				   
				   $("#content").val("");
			  
				}); 
			 
			
		})

     
});
		

		</script>
	<body>
	
	<div class="nav-bar">
		<div class="LeeBack">← 뒤로</div>
		<div class=" leer">우리청년컵밥</div>
	</div>

			<%@include file="headersub.jsp"%>
	<div class="container-fluid">

		<div class="pg-restaurant" style="padding: 0px; clear: both ">
			<section class="restaurant-detail" >
				<header>
						

						<h1 class="title">
							<span itemprop="name">주문리스트</span> 
								
							
						</h1>
				</header>
			</section>
		</div>
		
		<div style="height: 50px;"></div>

		
		
		
		<div id="Reviewlist"></div>
		

		
		<div class="box-footer clearfix">
			<ul id="paging-comment"	class="pagination pagination-sm no-margin pull-right">
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