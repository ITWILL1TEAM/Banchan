<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
var checkIdResult = false, checkPasswdResult = false;
var passwordRetypeCheckResult = false;
var checkNameResult = false;
var checkPhoneResult = false;


function checkId(member_id) {

	var regex = /^[A-Za-z0-9_]{5,20}$/g;
	var koreanRegex = /^[가-힣]$/g;
	

	var element = document.getElementById('checkIdResult'); 
	if(regex.exec(member_id.value)) { 
		element.innerHTML = "";
		element.style = "display: none;";
		checkIdResult = true;
	} else {
		element.innerHTML = "아이디는 4자, 20자 미만으로 입력해주세요";
		checkIdResult = false; 
	}
	if(koreanRegex.exec(member_id.value)) { 
		element.innerHTML = "아이디는 영문 혹은 영문 숫자만 가능합니다.";
		checkIdResult = false; 
	}
	

}

function changeDomain(domain){
	document.joinForm.email2.value = damain.value;
}


function checkPasswd(retypePassword) { 
	var password = document.fr.join_pw.value;

	var element = document.getElementById('checkPasswdResult');
	if(password == retypePassword) {
		element.innerHTML = '패스워드가 일치합니다';
		element.style = "display: none;";
		element.style.color = 'green';
		passwordRetypeCheckResult = true;
	} else {
		element.innerHTML = '입력하신 값이 비밀번호와 다릅니다.';
		element.style.color = 'red';
		passwordRetypeCheckResult = false;
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
	if(checkIdResult == false) { 
			alert('아이디 규칙 확인 필요');
			document.fr.member_id.focus();
			return false;
	} else if(checkPasswdResult == false) { 
			alert('패스워드 규칙 확인 필요');
			document.fr.member_pass.focus();
			return false;
	} 
	return true;
}



function checkAll() {
	alert('확인');
	if(document.fr.checkAll.checked){
		document.fr.add_info[0].checked = true;
		document.fr.add_info[1].checked = true;
		document.fr.add_info[2].checked = true;
	}
	
}
</script>
</head>
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/mem.css?v=20191120" type="text/css">
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/common.css?v=20211003190" type="text/css">
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/pc-main-common.css?v=20211003190" type="text/css">
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/sub.css?v=20211003190" type="text/css">
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/asset/css/font.css?v=20211003190" type="text/css">
<body>
<div class="content" style="padding-top: 269px;">
		<!-- WRAP -->
		<div class="wrap mem">
			<!-- LOCATION SELECT -->
			<dl class="location_slt">
				<dt><a href="#">Home</a></dt>
				<dd><a href="#">신규 회원가입</a></dd>
			</dl>
			
	<form action=" " name="fr" id="joinForm" method="post" autocomplete="off" onsubmit="return checkSubmit()">			
			<!--// LOCATION SELECT -->
			<div class="join_box" id="join_box">
				<h2><em>더반찬&amp;</em> 신규 회원가입</h2>
				<!-- 2017.05.03 삭제 <strong class="sub_tit">필수입력</strong> -->
				<div class="join_set">

					<label for="join_id" class="ir">아이디</label>
					<input type="text" id="join_id" name="member_id" class="login_input" maxlength="20" placeholder="아이디" onkeyup="checkId(this)">
					
					<!-- 아이디  오류시 노출 -->
					<span class="caution" id="checkIdResult" style="display: block;">아이디를 입력해 주세요.</span>
					
					<label for="join_pw" class="ir">비밀번호</label>
					<input type="password" id="join_pw" name="member_pass" class="login_input" maxlength="20" placeholder="비밀번호" >
					<label for="join_pw_re" class="ir">비밀번호 재입력</label>
					<input type="password" id="join_pw_re" class="login_input" placeholder="비밀번호 재입력" onkeyup="checkPasswd(this.value)">
					
					<!-- 비번 오류시 노출 -->
					<span class="caution" id="checkPasswdResult" style="display: block;">비밀번호를 입력해 주세요.</span>
					
					<label for="join_name" class="ir">이름</label>
					<input type="text" id="join_name" name="member_name" class="login_input" maxlength="20" placeholder="이름" onkeyup="checkName(this.value)">
					
					
					<!-- 2017.05.03 수정 순서 변경 및 기본 여자 체크-->
					<!-- div class="gender_set">
						<input type="radio" name="gend_cd" id="gender_f" value="" checked="checked"/>
						<label for="gender_f">여자</label>
						<input type="radio" name="gend_cd" id="gender_m" value=""/>
						<label for="gender_m">남자</label>
					</div-->
					<!-- //2017.05.03 수정 -->
					<!-- 2017.06.21 추가 : ie8 대응 스크립트 -->
					<!-- script type="text/javascript">
						$('.gender_set input').each(function(){
							if(this.checked){$(this).attr('checked', true).find('+ label').addClass('on')}
							$(this).change(function(){
								if(this.checked){
									$('.gender_set input').attr('checked', false).find('+ label').removeClass('on');
									$(this).attr('checked', true).find('+ label').addClass('on')
								}
							});
						});
					</script-->
					
					<!-- 이름/성별 오류시 노출 -->
					<span class="caution" id="checkNameResult" style="display: block;">이름을 입력해 주세요.</span>
					
					<!-- 인증 이전 -->
					<div class="phone_num">
						<input type="hidden" id="cmcm_divi_cd" name="cmcm_divi_cd" value="00">
						<input type="hidden" id="cell_no" name="cell_no">
						<input type="hidden" id="mbr_cert_divi_cd" name="mbr_cert_divi_cd" value="50">
						<input type="hidden" id="mbr_cert_info" name="mbr_cert_info" value="">	
					

						
						
						<!-- 2017.06.23 변경 : 휴대폰 번호 입력 3cut으로 통일 -->
						<label class="ir" for="cell_no1" >휴대폰번호</label>
						<select id="cell_no1" class="auth_div" name="member_phone1" title="휴대폰번호 앞자리선택">
							<option value="">선택</option>
							
							<option value="010">010</option>
							
							<option value="011">011</option>
							
							<option value="016">016</option>
							
							<option value="017">017</option>
							
							<option value="018">018</option>
							
							<option value="019">019</option>
							
							<option value="0502">0502</option>
							
							<option value="0503">0503</option>
							
							<option value="0504">0504</option>
							
							<option value="0505">0505</option>
							
							<option value="0506">0506</option>
							
							<option value="0507">0507</option>
							
							<option value="0508">0508</option>
							
							<option value="02">02</option>
							
							<option value="031">031</option>
							
							<option value="032">032</option>
							
							<option value="033">033</option>
							
							<option value="041">041</option>
							
							<option value="042">042</option>
							
							<option value="043">043</option>
							
							<option value="051">051</option>
							
							<option value="052">052</option>
							
							<option value="053">053</option>
							
							<option value="054">054</option>
							
							<option value="055">055</option>
							
							<option value="061">061</option>
							
							<option value="062">062</option>
							
							<option value="063">063</option>
							
							<option value="064">064</option>
							
							<option value="070">070</option>
							
							<option value="080">080</option>
							
						</select>
						<span class="hp">-</span>
						<input type="text" class="auth_div" id="cell_no2" name="member_phone2" maxlength="4" title="휴대폰번호 중간자리입력"  onkeyup="checkMiddlePhone(this.value)">
						<span class="hp">-</span>
						<input type="text" class="auth_div" id="cell_no3" name="member_phone3" maxlength="4" title="휴대폰번호 뒷자리입력" onkeyup="checkLastPhone(this.value)">
						<!-- 본인인증 버튼 -->
						<button class="auth" type="button" id="btn_auth" onclick="fnSendCertSms();"><em>본인인증 전송</em></button>
						<!--  재발송 버튼 -->
						<button class="auth_re ir" type="button" id="btn_auth_re" onclick="fnSendCertSms();"><em>재발송</em></button>
						
					</div>

					
					<div class="auth_set">
						<label for="auth_num" class="ir">인증번호</label>
						<div class="input_w auth_div">
							<input type="text" id="auth_num" name="auth_num" maxlength="10" placeholder="인증번호">
						</div>
						<span class="limit" id="_certTime"></span>
						<button class="submit" type="button" id="btn_submit" onclick="fnCheckCertSMS();">확인</button>
					</div>
					
					<div class="auth_fin ir" id="auth_fin">
						<span>본인 인증이 정상처리 되었습니다.</span>
					</div>
					<!-- //인증 이전 -->

					<!--  입력시간 초과 -->
					<span class="caution ir" id="caution4"></span>
					<span class="caution ir" id="auth_msg">인증번호  입력시간이 초과되었습니다</span>
					
					<label for="email"></label>
					<input type="text" id="email" name="member_email" maxlength="50" placeholder="이메일">
					
					<div class="info_txt">※ 주문관련 정보에 대한 이메일과 <em class="thm">SMS</em>는 자동으로 전송됩니다.</div>
					<span class="caution ir" id="caution5"></span>
					<!-- 2017.06.08 추가 : 추천인 기입란 -->
					<label for="recomm_remark"></label>
					<input type="text" id="recomm_remark" name="member_recommendID" maxlength="40" placeholder="추천인 아이디(선택)">
					<div class="info_txt">※ 더반찬을 추천해준 회원이 있으시면 추천 아이디를 입력해 주세요</div>
					
				</div>
			</div>
			
			
			<!-- 2017.05.03 변경 .wrap.mem 안으로 이동 및 li 순서 변경 -->
			<div class="agree_box">
				<div class="join_box" id="join_box" style="min-height: 250px;">
					<ul class="agree_list" style="margin-top: 41px;padding: 8px 0 0px 0px;">
						<li>
							<input type="checkbox" id="all_agree" name="checkAll" value="N" onclick="checkAll()">
							<label for="all_agree" style="color: #555;"><b>전체 동의</b>
							<span class="join_agreement_msg">전체 동의시 <em class="join_point_msg">적립금 1,000원</em> 증정! 더 많은 혜택을 받을 수 있어요.</span>
							</label>
							<ul class="agree_list">
								<li class="agree_point_txt">필수 항목</li>
										
								
											
										<li>
											<input type="checkbox" id="2109000103" name="add_info" class="agreeChk validChk" value="2109000103" >
											<label for="2109000103">서비스 이용약관</label><a href="javascript:overpass.popup.agreeLayer({gbn:'2109000103'})" class="detail arrow_btn01">내용 보기</a>
										</li>
					
								
											
										<li>
											<input type="checkbox" id="2104000099" name="add_info" class="agreeChk validChk" value="2104000099">
											<label for="2104000099">개인정보 이용 및 수집 (필수)</label><a href="javascript:overpass.popup.agreeLayer({gbn:'2104000099'})" class="detail arrow_btn01">내용 보기</a>
										</li>
					
								
										<li>
											<input type="checkbox" id="age_agree" class="agreeChk" name="add_info" value="N">
											<label for="age_agree">본인은 <strong>만 14세</strong> 이상입니다.</label>
										</li>
										
										
								<li class="agree_point_txt">선택 항목</li>
									<li><input type="checkbox" id="2101000093" name="member_personalData" class="agreeChk recomm" value="2101000093"><label for="2101000093">개인정보 이용 및 수집 (선택)</label><a href="javascript:overpass.popup.agreeLayer({gbn:2101000093})" class="detail arrow_btn01">내용 보기</a></li>
										<li style="height: 30px;">
											<input type="checkbox" id="forever_agree"  class="agreeChk">
											<input type="hidden" id="forever_member_yn" name="forever_member_yn">
											<label for="forever_agree">개인정보 평생 보관동의(탈퇴시 삭제)</label><a href="javascript:overpass.popup.foreverAgreeLayer();" class="detail arrow_btn01">내용 보기</a>
											<br><br>
										</li>
										<li>
											<input type="checkbox" id="recieve_agree" class="agreeChk">
											<input type="hidden" id="sms_recv_yn" name="sms_recv_yn">
											<input type="hidden" id="mail_recv_yn" name="mail_recv_yn">
											<label for="recieve_agree">쇼핑 혜택 SMS 및 이메일 수신</label>
										</li>
										<li class="marketing_agreemnet_txt">이벤트, 행사등의 다양한 쇼핑정보 및 혜택관련 이메일 및 문자 수신에 동의합니다.</li>
					
						
					</ul>
				</li></ul></div>
					<button class="join_up" type="submit" id="btn_join_up"><em>가입하기</em></button>
				<div class="recieve_agree_notice">
					<p>※ 선택 약관에 동의하지 않아도 회원가입이 가능합니다.</p>
					<p>※ 선택 약관 동의 철회는 가입 완료 후 MY더반찬 &gt; 개인정보 수정에서 가능합니다.</p>
				</div>

			</div>
			<!-- //2017.05.03 변경 .wrap.mem 안으로 이동 및 li 순서 변경 -->
</form>


		</div>
		<!--// WRAP -->
	</div>
</body>
</html>