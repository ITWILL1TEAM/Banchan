var checkIdResult = false, checkPasswdResult = false;
var passwordRetypeCheckResult = false;
var checkNameResult = false;
var checkPhoneResult = false;


function openWindow(target) {

	if(target == "dupIdCheck") {
		document.open("member/dupIdCheck.jsp","","width=400,height=150");
	} 
	
	if(document.fr.member_id.value != null){
		var element = document.getElementById('checkIdResult'); 
		element.innerHTML = "";
		element.style = "display: none;";
		checkIdResult = true;
	}
}	

function changeDomain(domain){
	document.joinForm.email2.value = damain.value;
}


function checkRetypePasswd(retypePassword) { 
	var password = document.fr.join_pw.value;

	var element = document.getElementById('checkPasswdResult');
	
	if(password == retypePassword) {
		element.innerHTML = '';
		element.style = "display: none;";
		element.style.color = 'green';
		passwordRetypeCheckResult = true;
	} else {
		element.innerHTML = '입력하신 값이 비밀번호와 다릅니다.';
		element.style = "display: block;";
		element.style.color = 'red';
		passwordRetypeCheckResult = false;
	}
}

function checkPassword(member_pass) {


	var lengthRegex = /^[A-Za-z0-9!@#$%]{10,20}$/;
	var engUpperCaseRegex = /[A-Z]/;
	var engLowerCaseRegex = /[a-z]/; 
	var digitRegex = /[0-9]/;
	var specRegex = /[!@#$%]/;
	
	var element = document.getElementById('checkPasswdResult');
	
	
	if(lengthRegex.exec(member_pass)) {

		var safetyCount = 0; 
		

	
		
		
		if(engUpperCaseRegex.exec(member_pass)) safetyCount++;
		if(engLowerCaseRegex.exec(member_pass)) safetyCount++;
		if(digitRegex.exec(member_pass)) safetyCount++;
		if(specRegex.exec(member_pass)) safetyCount++;
		
		
		
		switch(safetyCount) {
			case 4 : 
				element.innerHTML = '사용가능한 비밀번호 입니다.';
				element.style = "display: block;";
				element.style.color = 'green';
				checkPasswdResult = true;
				break;
			case 3 : 
				element.innerHTML = '사용가능한 비밀번호 입니다.';
				element.style = "display: block;";
				element.style.color = 'blue';
				checkPasswdResult = true;
				break;
			case 2 : 
				element.innerHTML = '10자리이상 영문자,숫자,특수문자 조합 필수!';
				element.style = "display: block;";
				element.style.color = 'orange';
				checkPasswdResult = false;
				break;
			default :
				element.innerHTML = '10자리이상 영문자,숫자,특수문자 조합 필수!';
			element.style = "display: block;";
				element.style.color = 'red';
				checkPasswdResult= false;
		}
		
	} else {
		element.innerHTML = '10자리이상 영문자,숫자,특수문자 조합 필수!';
		element.style.color = 'red';
		passwordCheckResult = false;
	}
	
}





function checkName(name) {
	var koreanRegex = /^[가-힣]{3,4}$/g;
	var element = document.getElementById('checkNameResult'); 
	
	if(koreanRegex.exec(name)) {
		element.innerHTML = "";
		element.style = "display: none;";
		checkNameResult = true;
	}
	
}


function checkMiddlePhone(middleNumber) {
	var regex = /^[ㄱ-힣가-힣A-Za-z_]{3,4}$/g;
	if(regex.exec(middleNumber)) { 
		alert('전화번호는 숫자만 가능합니다');
		checkPhoneResult = true;
	} 
}


function checkLastPhone(lastNumber) {
	var regex = /^[ㄱ-힣가-힣A-Za-z_]{3,4}$/g;
	
	if(regex.exec(lastNumber)) { 
		alert('전화번호는 숫자만 가능합니다');
		checkPhoneResult = true;
	} 
	
}



function checkSubmit() {
	var cPw = document.fr.member_pass.value;
	var cRpw = document.fr.member_repass.value;
	
	
	if(checkIdResult == false) { 
			alert('아이디를 입력해주세요');
			document.fr.member_id.focus();
			return false;
	} else if(checkPasswdResult == false) { 
			alert('비밀번호는 영문자,숫자,특수문자를 3종류 이상을 조합하여 만들어주세요');
			document.fr.member_pass.focus();
			return false;
	} else if(cPw != cRpw){
			alert('비밀번호가 일치하지 않습니다');
			document.fr.member_repass.focus();
			return false;
	
	}
	
	if(!document.fr.add_info[0].checked){
	alert('필수항목에 체크해주세요!')
	return false;
	}
	else if(!document.fr.add_info[1].checked){
	alert('필수항목에 체크해주세요!')
	return false;
	}
	else if(!document.fr.add_info[2].checked){
	alert('필수항목에 체크해주세요!')
	return false;
	
	}
	
	return true;
}



function checkedAll() {
	if(document.fr.checkAll.checked){
		document.fr.add_info[0].checked = true;
		document.fr.add_info[1].checked = true;
		document.fr.add_info[2].checked = true;
		document.fr.member_personalData.checked = true;
		document.fr.personalData1.checked = true;
		document.fr.personalData2.checked = true;
	}else{
		document.fr.add_info[0].checked = false;
		document.fr.add_info[1].checked = false;
		document.fr.add_info[2].checked = false;	
		document.fr.member_personalData.checked = false;
		document.fr.personalData1.checked = false;
		document.fr.personalData2.checked = false;
	}
	
}


function checkPasswdValue() {
	if(document.fr.member_pass.value == ""){
		if(document.fr.member_name.focus){
			var element = document.getElementById('checkPasswdResult'); 
			element.innerHTML = " 비밀번호를 입력해주세요";
			element.style = "display: block;";
			
		}
	}
}

function checkNameValue() {
	if(document.fr.member_name.value == ""){
		if(document.fr.member_phone2.focus){
			var element = document.getElementById('checkNameResult'); 
			element.innerHTML = " 이름을 입력해주세요";
			element.style = "display: block;";
			
		}
	}
}

