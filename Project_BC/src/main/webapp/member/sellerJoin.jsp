<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/idScript.js"></script> 
<script src="js/submit.js"></script> 
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<link href="CSS/mem.css" rel="stylesheet" type="text/css">
<link href="CSS/common.css" rel="stylesheet" type="text/css">
<link href="CSS/pc-main-common.css" rel="stylesheet" type="text/css">
<link href="CSS/sub.css" rel="stylesheet" type="text/css">
<link href="CSS/font.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="#">
<body>
<div class="content" style="padding-top: 269px;">
		<!-- WRAP -->
		
		<div class="wrap mem">
			<!-- LOCATION SELECT -->
			<dl class="location_slt">
				<dt><a href="#">Home</a></dt>
				<dd><a href="#">사업자회원가입</a></dd>
			</dl>
			
	<form action="SellerJoinPro.me" name="fr" id="joinForm" method="post" autocomplete="off" onsubmit="return checkSubmit()">			
		<input type="hidden" name="grade" value="2">
			<!--// LOCATION SELECT -->
			<div class="join_box" id="join_box">
				<h2><em>더반찬&amp;</em> 사업자 회원가입</h2>
				<!-- 2017.05.03 삭제 <strong class="sub_tit">필수입력</strong> -->
				<div class="join_set">
					<div class="phone_num">
						<input type="text" style="width : 381px;" class="numChk" name="member_BRN" id="c_num1" maxlength="10" title="사업자등록번호" placeholder="사업자등록번호">
						<button type="button" class="co_auth" id="btn_auth_business">
							<em>인증</em>
						</button>
					</div>
					<span class="caution" id="caution0">사업자등록번호를 입력해주세요.</span>
			 	<br><br>
			 			 
			   <div class="auth_set">
	                  <label for="join_id" class="ir">아이디</label>
	                  <div class="input_w auth_div">
	                  <input type="text" id="join_id" name="member_id" maxlength="20" class="login_input"
	                   placeholder="아이디" onkeyup="checkId(this)" readonly="readonly">
	                  </div>
	                  <span class="limit" id="_certTime"></span>
	                  <button class="submit" type="button"  class="dup" id="btn" onclick="openWindow('dupIdCheck')">중복확인</button>
	           </div>
               
				<!-- 아이디  오류시 노출 -->
					<span class="caution" id="checkIdResult" style="display: none;"> </span>
									
					<label for="join_pw" class="ir">비밀번호</label>
					<input type="password" id="join_pw" name="member_pass" class="login_input" maxlength="20" placeholder="비밀번호" onkeyup="checkPassword(this.value)" onclick="checkIdValue()">
					<label for="join_pw_re" class="ir">비밀번호 재입력</label>
					<input type="password" id="join_pw_re" class="login_input" placeholder="비밀번호 재입력" onkeyup="checkRetypePasswd(this.value)">
					
					<!-- 비번 오류시 노출 -->
					<span class="caution" id="checkPasswdResult" style="display: none;"><!-- - --></span>
					
					<label for="join_name" class="ir">이름</label>
					<input type="text" id="join_name" name="member_name" class="login_input" maxlength="20" placeholder="이름" required="required" onkeyup="checkName(this.value)"
					onclick="checkPasswdValue()">

					<!-- 이름/성별 오류시 노출 -->
					<span class="caution" id="checkNameResult" style="display: none;"></span>
					
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
							<option value="02">02</option>						
							<option value="051">051</option>
							<option value="055">055</option>
						</select>
						<span class="hp">-</span>
						<input type="text" class="auth_div" id="cell_no2" name="member_phone2" maxlength="4" title="휴대폰번호 중간자리입력"  onkeyup="checkMiddlePhone(this.value)"
						onclick="checkNameValue()">
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
					<input type="text" id="email" name="member_email" maxlength="50" placeholder="이메일" required="required">
					
					<div class="info_txt">※ 주문관련 정보에 대한 이메일과 <em class="thm">SMS</em>는 자동으로 전송됩니다.</div>
					<span class="caution ir" id="caution5"></span>
					
					<label for="resd_nm" class="ir">상호</label>
					<input type="text" id="resd_nm" name="member_Cname" maxlength="20" class="find_name" style="margin-top:15px;" placeholder="상호">
					<span class="caution" id="caution8" style="">상호를 입력해 주세요.</span>
					<label for="bunic" class="ir">업태</label>
					<input type="text" id="bunic" name="member_BC" class="input_mt10" maxlength="50" placeholder="업태">
					<span class="caution" id="caution10" style="display: none;">업태를 입력해주세요</span> 
					<label for="industry" class="ir">종목</label>
					<input type="text" id="industry" name="member_Bitem" class="input_mt10" maxlength="50" placeholder="종목">
					<span class="caution" id="caution11" style="">종목을 입력해 주세요.</span>
					<br><br>
		
					<!-- 2017.06.08 추가 : 추천인 기입란 -->
					<label for="recomm_remark"></label>
					<input type="text" id="recomm_remark" name="member_recommendID" maxlength="40" placeholder="추천인 아이디(선택)">
					<div class="info_txt">※ 더반찬을 추천해준 회원이 있으시면 추천 아이디를 입력해 주세요</div>
					
					<div class="addr_form">
						<span class="dw_txt">
							<input type="hidden" id="base_addr" name="base_addr"> 
							<input type="hidden" id="road_base_addr" name="road_base_addr"> 
							<input type="hidden" id="road_dtl_addr" name="road_dtl_addr">	
							<input type="text" id="addr_view" name="address"  placeholder="사업장 소재지" readonly="readonly">
							<label for="addr_view" class="ir">주소</label>
							<!-- <input type="text" id="road_base_addr_view" disabled="disabled" />
							<label for="road_base_addr_view" class="ir">주소</label> -->
							<input type="hidden" id="addr_chk" name="addr_chk" value="N">
							<input type="hidden" id="post_no" name="post_no">
							<input type="hidden" id="road_post_no" name="road_post_no">
							<!-- <span class="inp"><input type="text" id="dtl_addr" name="dtl_addr" class="input" data-class="addr_chk"  /></span>
							<span class="sm" name="addr" style="display:none;">이름은 한글, 영문만 가능합니다.</span> -->
							<!-- <span id="addr_view" class="addr"><em></em></span> -->
							<span class="inp"><input type="text" id="dtl_addr" name="dtl_addr" class="input" style="margin-top:9px;" data-class="addr_chk" placeholder="사업장 상세 주소"></span>
							<span class="caution" id="caution12" style="">사업장 상세 주소를 입력해 주세요.</span>
						</span>
						<button type="button" class="co_auth" id="fnSearchPostNo" title="우편번호 찾기 페이지 이동" onclick="openWindow('addrSearch')">
							<em>우편번호 찾기</em>
						</button>
					</div>
					
				</div>
			</div>
			<!-- 2017.05.03 변경 .wrap.mem 안으로 이동 및 li 순서 변경 -->
			<div class="agree_box">
				<div class="join_box" id="join_box" style="min-height: 250px;">
					<ul class="agree_list" style="margin-top: 41px;padding: 8px 0 0px 0px;">
						<li>
							<input type="checkbox" id="all_agree" name="checkAll" value="N" onclick="checkedAll()">
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
											<input type="checkbox" id="forever_agree"  class="agreeChk" name="personalData1">
											<input type="hidden" id="forever_member_yn" name="forever_member_yn">
											<label for="forever_agree">개인정보 평생 보관동의(탈퇴시 삭제)</label><a href="javascript:overpass.popup.foreverAgreeLayer();" class="detail arrow_btn01">내용 보기</a>
											<br><br>
										</li>
										<li>
											<input type="checkbox" id="recieve_agree" class="agreeChk" name="personalData2">
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