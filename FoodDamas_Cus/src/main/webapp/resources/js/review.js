
//즉시실행함수
var ReviewManager= function(){	
	
	function ReviewList(u_id,page,callback){	
		var reviewjson =$.getJSON('http://localhost/review/'+ u_id+"?"+"page=" + page, callback);	

	}
	
	function Insert(obj, callback){
		$.ajax({
			url: 'http://localhost/registerreview',
			type:"post",
			data:obj,
			success:callback
		});
	}
	
	return{
		ReviewList:ReviewList,
		
		Insert:Insert,
		
    }
	
}();//즉시실행


/**/