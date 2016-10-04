//즉시실행함수
var ApiManager = function() {
	function ApiList(lat,lng,callback) { //카운트 가져오는 부분
		$.getJSON('http://localhost/apilist/'+ lat + "/" + lng, callback);
	}

	return {
		ApiList : ApiList,

	}

}();//즉시실행

/**/