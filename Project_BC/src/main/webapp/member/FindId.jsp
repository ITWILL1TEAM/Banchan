<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/common.css?v=20211010230" type="text/css">
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/mem.css" type="text/css">
</head>
<body>
	<div class="wrap mem">
			
			<dl class="location_slt">
				<dt><a href="#">Home</a></dt>
				<dd><a href="#">아이디/비밀번호 찾기</a></dd>
			</dl>
			
			
			
			<div class="find_box">
				<!-- 2017.06.22 추가 : class .id_find -->
				<div class="login_box id_find">
					<h2>아이디 찾기</h2>
					
					
					<div class="login_set" id="login_set_id">
					
	<form name="findIdForm" id="findIdForm" method="post">
						<input type="hidden" name="login_id" value="">
						<label for="id_name" class="ir">이름</label>
						<input type="text" id="id_name" name="id_name" class="login_input" maxlength="10" placeholder="개인: 이름, 사업자: 대표자명입력">

						<label for="id_email" class="ir">이메일</label>
						<input type="text" id="id_email" name="id_email" class="login_input" maxlength="50" placeholder="이메일">


						
						<span class="caution ir" id="caution1">입력하신 정보에 해당하는 회원정보를 찾을 수 없습니다.</span>
						<button class="btn_login" type="button" id="btn_find_id"><em>아이디 찾기</em></button>
	</form>

						<div class="find_info">
							<ul class="list">
								<li>회원가입시 등록한 이름, 이메일 정보를 입력해 주세요.</li>
							</ul>
						</div>
					</div>
					
					
					<div class="login_set ir" id="login_set_id_result">
						<div class="id_result">
							<span>회원님의 아이디를 찾았습니다.</span>
							<em id="id_result"></em>
						</div>

						
						<button class="btn_login" type="button" id="btn_login" onclick="fnGologin();"><em>로그인</em></button>
						<div class="find_info">
							<ul class="list">
								<li>비밀번호를 모르신다면 우측 비밀번호 찾기를 이용해주세요</li>
							</ul>
						</div>
					</div>
				</div>

				
				<div class="login_box pw_find">
					<h2>비밀번호 찾기</h2>
	<form name="findPwForm" id="findPwForm" method="post">					
					<div class="login_type login_set_pw" style="height:20px;">
						
					</div>
					
					<div class="login_set login_set_pw" id="login_set_pw">

						<label for="pw_id" class="ir">아이디</label>
						<input type="text" name="pw_id" id="pw_id" class="login_input" maxlength="50" placeholder="아이디">
						<input type="text" name="pw_id" id="pw_id_text" class="login_input" maxlength="50" placeholder="아이디" style="display:none;">

						<label for="pw_name" class="ir">이름</label>
						<input type="text" name="pw_name" id="pw_name" class="login_input" maxlength="10" placeholder="개인: 이름, 사업자: 대표자명입력">

					
						<span class="caution ir" id="caution2">입력하신 정보에 해당하는 회원정보를 찾을 수 없습니다.</span>
						<button class="btn_login" type="button" id="btn_find_pw"><em>비밀번호 찾기</em></button>

						<div class="find_info">
							<ul class="list">
								<li>회원가입시 등록한 아이디, 이름, 이메일 정보를 입력해주세요</li>
							</ul>
						</div>
					</div>
	</form>	
					
					<div class="login_set ir" id="login_set_pw_result">
						<div class="pw_result">
							<em id="pw_result"></em>
							<b>비밀번호 재설정용 이메일을 전송했습니다.</b>
							<span>전송 받으신 메일을 통해 비밀번호를<br>재설정하신 후 로그인 해주세요</span>
						</div>
					</div>
				
				</div>
			</div>

		</div>
</body>
</html>