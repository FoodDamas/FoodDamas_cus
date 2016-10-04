
//즉시실행함수
var InfoManager= function(){	
	
	console.log("111111111111111");

	function InfoList(u_id,callback){	
		var infojson =$.getJSON('http://localhost/info/'+ u_id, callback);	
		
		console.log("22222222222");

	}
	
	return{
		InfoList:InfoList,
		
		
    }
	
}();//즉시실행


/**/