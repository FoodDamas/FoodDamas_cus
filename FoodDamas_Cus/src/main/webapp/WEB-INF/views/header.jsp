	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

		<div>
		<a href="/" class="/"
			style="line-height: 50px; margin-left: 10px; font-weight: bold;"><img src="img/food.png" style="height: 100%"></a>
			
					<a class="fa fa-bars menu fa-2x " id="menu_toggle" style="top: 10px;"></a>
			</div>
 <nav id="side-menu">
        <a class="fa fa-close" id="close"></a>
        <ul>
          <li class="nav-one">
        <a href="/home">홈</a><i class="fa fa-home"></i>
      </li>
      <li class="nav-two">
        <a href="api1">서울시 공공API</a><i class="fa fa-user"></i>
      </li>
      <li class="nav-three">
        <a>주문내역</a><i class="fa fa-floppy-o"></i>
      </li>
      <li class="nav-four">
        <a>회원정보</a><i class="fa fa-exclamation-triangle"></i>
      </li>
      <li class="nav-five" >
        <a href="/member/login">logout</a><i class="fa fa-sign-out"></i>
      </li>
    </ul>
  </nav>
  
  <script src="js/menubar.js"></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/classie/1.0.1/classie.min.js'></script>
  