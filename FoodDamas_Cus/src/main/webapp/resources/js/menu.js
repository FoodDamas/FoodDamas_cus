/**
 * Created by KWON on 2016-09-01.
 */
/*메뉴부분 js입니당!!*/

var menuManager = function() {
    //list뿌려주는 곳
	function menuListAll(u_id, callback){
        $.getJSON('http://localhost/menu/all/'+u_id, callback);
    }
	
	//tbl_cart에 값 집어넣기
    function menucart(obj,callback){
    	$.ajax({
    		url : 'http://localhost/store/menucart',
    		type : "POST",
    		data : obj,
    		success : callback
    	});
    }
	
	
	
    return{
        menuListAll : menuListAll,
        menucart : menucart
    }
}();