
//즉시실행함수
var OrderListManager= function(){	
	
	function OrderList(c_id,page,callback){	
		$.getJSON('http://localhost/order/orderlist/'+ c_id+"?"+"page=" + page, callback);	

	}
	
	return{
		OrderList:OrderList
		
    }
	
}();//즉시실행


/**/