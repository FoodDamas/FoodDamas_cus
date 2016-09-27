/*Created by BitCamp on 2016-07-08.*/

//즉시실행함수
var cartManager= function(){	
	
	
	function cartList(c_id,callback){	

		var qnajson =$.getJSON('http://localhost/store/cartList/'+ c_id, callback);	}
	
	function quantity(obj, callback){
		$.ajax({
			url: 'http://localhost/store/quantity',
			headers: { 
			      "Content-Type": "application/json",
			      "X-HTTP-Method-Override": "PUT" },
			type:"put",
			data:JSON.stringify(obj), 
			success:callback
		});
	}
	
	function deleteCart(cno, callback){
		$.ajax({
			url: 'http://localhost/store/deleteCart',
			type:"delete",
			headers: { 
			      "Content-Type": "application/json",
			      "X-HTTP-Method-Override": "DELETE" },
			data:cno,
			success:callback
		});
	}
	
	function insertOrder(obj, callback){
		console.log("---------------------");
		console.log(obj);
		$.ajax({
			url: 'http://localhost/order/insertOrder',
			type:"post",
			data:obj,
			success: function(data) {
				console.log(data);
				if(data=='fail'){
					alert("주문에 실패하였습니다. 다시 주문해주세요")
					window.location.replace("/store/cart");
				}else{
					alert("주문에 성공하였습니다. 조금만 기다려 주세요!")
					window.location.replace("/menu/menulist");
				}
			}
		});
	}
	
	
	return{
		cartList:cartList,
		quantity:quantity, //수량 수정
		deleteCart : deleteCart,
		insertOrder: insertOrder//삭제
    }
	
}();//즉시실행


/**/