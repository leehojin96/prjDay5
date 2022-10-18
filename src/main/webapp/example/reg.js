function check(){
	//alert("call");	
	let frm  =document.frm;
	//alert( frm);
	
	let s_id = frm.s_id ; //
		 
	if( s_id.value == ""){
	  	alert("코드 입력하세요");	
	  	s_id.focus();
	}else {
		frm.submit();
	}
	 
 }