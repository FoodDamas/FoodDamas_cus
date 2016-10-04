
//즉시실행함수
var QnaManager= function(){	
	
	
	function QnaList(u_id,c_id,page,callback){	
		var qnajson =$.getJSON('http://localhost/qna/'+ u_id+"/"+ c_id+"?"+"page=" + page, callback);	

	}
	
	function AnswerList(qno,callback){	
        var answerjson =$.getJSON('http://localhost/answer/'+ qno , callback);	
	}
	
	
	function Insert(obj, callback){
		$.ajax({
			url: 'http://localhost/registerqna',
			type:"post",
			data:obj,
			success:callback
		});
	}

	
	function Delete(obj, callback){
		$.ajax({
			url: 'http://localhost/deleteqna',
			type:"get",
			data:obj,
			success:callback
		});
	}
	
	
	return{
		QnaList:QnaList,
		AnswerList:AnswerList,
		
		Insert:Insert,
		Delete:Delete
		
    }
	
}();//즉시실행


/**/