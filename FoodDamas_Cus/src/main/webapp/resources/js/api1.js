//즉시실행함수
var ApiManager = function() {
	var local="http://192.168.0.42/";
	function ApiList(lat,lng,callback) { //카운트 가져오는 부분
		$.getJSON(local+'apilist/'+ lat + "/" + lng, callback);
	}

	return {
		ApiList : ApiList,

	}

}();//즉시실행

/**/