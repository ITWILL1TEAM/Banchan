<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/mys.css?t=20200406000000" type="text/css">
<link rel="stylesheet" href="CSS/common.css?v=20211011000" type="text/css">
<link rel="stylesheet" href="CSS/pc-main-common.css?v=20211011000" type="text/css">
<link rel="stylesheet" href="CSS/font.css?v=20211018180" type="text/css">
</head>
<body>
<%@include file="../inc/top.jsp" %>
<div id="content" class="content" style="padding-top: 269px;">
	<div class="wrap mys">
		<div class="mys_top_pc">
			<div class="mytbc">MY더반찬	</div>
		</div>

	<div id="mys_lnb" class="lnb">
		<ul>
			<li>
				<dl>
					<dt style="text-align:left;margin-bottom: 12px">주문정보</dt>
					<dd><a id="left_01" href="OrderCheck.my" onclick="" >주문/배송 조회</a></dd>
					<dd><a id="left_02" href="Resell.my" onclick="" >취소/반품 내역</a></dd>
				</dl>
			</li>
			<li>
				<dl>
					<dt style="text-align:left;margin-bottom: 12px">활동내역</dt>
					<dd><a id="left_07" href="Review.my" onclick="">고객후기</a></dd>
					<dd><a id="left_08" href="QnA.my" onclick="">1:1 상담내역</a></dd>
				</dl>
			</li>
			<li>
				<dl>
					<dt style="text-align:left;margin-bottom: 12px">회원정보</dt>
					<dd><a id="left_11" href="Besong.my" onclick="">배송지 관리</a></dd>
					<!-- <dd><a id="left_12" href="#">주문정보 수신 설정</a></dd> -->
					
						<dd><a id="left_13" href="Mypage.my" onclick="" class="on">개인정보 수정</a></dd>
						<dd><a id="left_14" href="Delete.my" onclick="">회원탈퇴</a></dd>
					
				</dl>
			</li>
		</ul>
	
		<dl class="cst">
			<dt><a href="" onclick="">고객센터</a></dt>
			<dd><b>1644-0000</b></dd>
			<dd><div style="color:#5f99f0;">▲ 단체구매문의</div></dd>
			<dd>평일 08:00~20:00<br>(토/일/공휴일은 휴무)</dd>
		</dl>
	</div>



<div id="mys_content" class="sub_cont">
			<h3 class="tit">개인정보 수정</h3>
			
			<!-- MY SUMMARY -->
			<div class="mys_summ">
				<div class="tx">소중한 고객정보 제공에 대해 감사 드립니다.</div>
			</div>
			<!-- //MY SUMMARY -->
			
			
			<!-- MY TABLE -->
			<form id="memberFrom" method="post">
				<div class="mys_mod">
					<div class="tbl">
						<table>
							<caption>개인정보 | 아이디,이름 및 성별,비밀번호,휴대전화,이메일,주소,SNS연동,생년월일의 정보를 제공하는 표</caption>
							<colgroup>
								<col style="width:220px">
								<col style="width:auto">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">아이디<em class="es">필수입력</em></th>
									<td><span class="tx">아이디값</span></td>
								</tr>
								<tr>
									<th scope="row"><label for="m_name">이름 및 성별</label><em class="es">필수입력</em></th>
									<td>  
										<span class="chk">
											<input type="radio" name="gend_cd" id="female" checked="checked" value="F">
											<label for="female">여자</label>
											<input type="radio" name="gend_cd" id="male" value="M">
											<label for="male">남자</label>
										</span>
										<span class="tx"><input type="text" id="m_name" name="mbr_nm" class="input" validate="empty" value="조정민"></span>
										<span class="sm" name="mbr_msg" style="display:none;">이름은 한글, 영문만 가능합니다.</span>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="m_pw">비밀번호</label><em class="es">필수입력</em></th>
									<td>
										<span class="tx"><input type="password" id="m_pw" name="pwd" class="input" placeholder="새로운 비밀번호를 입력해 주세요." maxlength="20"></span>
										<span class="sm" name="pwd" style="display:none;">비밀번호는 영문, 숫자 혹은 영문, 숫자, 기호를 조합한 10자 이상으로 만들어 주세요.</span>									
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="m_pw_re">비밀번호 재입력</label><em class="es">필수입력</em></th>
									<td>
										<span class="tx"><input type="password" id="m_pw_re" class="input" placeholder="비밀번호를 재 입력해 주세요." maxlength="20"></span>
										<span class="sm" name="pwd_re" style="display:none;">비밀번호를 재 입력해 주세요.</span>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="cell_no1">휴대전화</label><em class="es">필수입력</em></th>
									<td>
										<input type="hidden" id="phone_chk" name="phone_chk" value="N">
										<span class="ph">
																			
											<select id="cell_no1" name="cell_no1" class="select" data-class="phone_chk" title="휴대폰 앞자리 선택"><option value="">선택</option><option value="000" selected="selected">010</option><option value="011">011</option><option value="016">016</option><option value="017">017</option><option value="018">018</option><option value="019">019</option><option value="0502">0502</option><option value="0503">0503</option><option value="0504">0504</option><option value="0505">0505</option><option value="0506">0506</option><option value="0507">0507</option><option value="0508">0508</option><option value="02">02</option><option value="031">031</option><option value="032">032</option><option value="033">033</option><option value="041">041</option><option value="042">042</option><option value="043">043</option><option value="051">051</option><option value="052">052</option><option value="053">053</option><option value="054">054</option><option value="055">055</option><option value="061">061</option><option value="062">062</option><option value="063">063</option><option value="064">064</option><option value="070">070</option><option value="080">080</option></select>
											<em>-</em>
											<input type="text" class="input" id="cell_no2" name="cell_no2" data-class="phone_chk" validate="empty" title="휴대폰 중간자리 입력" value="0000" maxlength="4">
											<em>-</em>
											<input type="text" class="input" id="cell_no3" name="cell_no3" data-class="phone_chk" validate="empty" title="휴대폰 마지막 4자리 입력" value="0000" maxlength="4">
											<button type="button" class="sq" name="sq" onclick="">본인인증</button>
										</span>
										<span class="sm" name="cell_no" style="display:none;">본인인증을 해주세요.</span>
										<span class="auth">
										<label for="auth_num" class="ir">인증번호</label>
										<span class="inp_w" name="inp_w" style="display:none;">
											<input type="text" id="auth_num" placeholder="인증번호 입력" maxlength="6" onkeydown="" onkeyup="" msg1="인증번호를 입력해주세요." msg2="인증번호가 맞지 않습니다." msg3="입력 시간이 초과하였습니다. 인증번호를 재 발송 해 주세요." msg4="인증정보가 올바르지 않습니다.">
											<em class="lmt" id="_certTime">05:00</em>
										</span>
										<button type="button" onclick="" class="sq" name="confirm" style="display:none;">확인</button>
										<button type="button" onclick="" class="bx" name="resend" style="display:none;">재발송</button>
									</span>
									<span class="sm" name="auth_num" style="display:none;">인증번호 입력시간이 초과되었습니다.</span>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="email">이메일</label><em class="es">필수입력</em></th>
									<td>
										<span class="tx"><input type="text" id="email" name="email" class="input" validate="empty" value="이메일주소값"></span>
										<span class="sm" name="email" style="display:none;"></span>
										<span class="sms">주문관련 정보에 대한 이메일과 SMS는 자동으로 전송됩니다.</span>
										<span class="sms"><input type="checkbox" id="recv_chk" onclick=""><label for="recv_chk"><ins>마케팅용 SMS 및 이메일 수신 동의</ins></label>
									(
										<input type="checkbox" id="sms_recv_chk"><label for="sms_recv_chk">SMS</label>
										<input type="checkbox" id="mail_recv_chk"><label for="mail_recv_chk">Email</label>
									)
										</span>
										<input type="hidden" name="recv_yn" id="recv_yn">
										<input type="hidden" name="sms_recv_yn" id="sms_recv_yn" value="N">
										<input type="hidden" name="mail_recv_yn" id="mail_recv_yn" value="N">
										<span class="sms"><input type="checkbox" id="forever_chk"><label for="forever_chk">개인정보 평생 보관동의(탈퇴시 삭제)</label></span>
										<input type="hidden" name="forever_member_yn" id="forever_member_yn">
									</td>
								</tr>
<!-- 								<tr> -->
<!-- 									<th scope="row">SNS 연동</th> -->
<!-- 									<td> -->
<!-- 										<ul class="sns"> -->
<!-- 											<li> -->
<!-- 												<a class="off" title="네이버 연동확인 알림"><em class="naver"></em></a> -->
<!-- 												<span class="sns_app">네이버</span> -->
<!-- 												<a id="sns_30" href="javascript:fnMemModifySns('30');" class="snsbtn">연동하기</a> -->
<!-- 											</li> -->
<!-- 											<li> -->
<!-- 												<a class="off" title="카카오톡 연동확인 알림"><em class="kakao"></em></a> -->
<!-- 												<span class="sns_app">카카오톡</span> -->
<!-- 												<a id="sns_40" href="javascript:fnMemModifySns('40');" class="snsbtn">연동하기</a> -->
<!-- 											</li> -->
<!-- 											<li> -->
<!-- 												<a class="off" title="페이스북 연동철회확인 알림"><em class="facebook"></em></a> -->
<!-- 												<span class="sns_app">페이스북</span> -->
<!-- 												<a id="sns_20" href="javascript:fnMemModifySns('20');" class="snsbtn">연동하기</a> -->
<!-- 											</li> -->
<!-- 											<li> -->
<!-- 												<a class="off" title="애플 연동철회확인 알림"><em class="apple"></em></a> -->
<!-- 												<span class="sns_app">Apple</span> -->
<!-- 												<a id="sns_50" href="javascript:fnMemModifySns('50');" class="snsbtn">연동하기</a> -->
<!-- 											</li> -->
<!-- 										</ul> -->
<!-- 									</td> -->
<!-- 								</tr> -->

								<tr>
									<th scope="row">생년월일</th>
									<td>
										<input type="hidden" id="birth_chk" name="birth_chk" value="N">
										<span class="bir">
											<select id="year" name="year" class="select" data-class="birth_chk" title="생년 선택">
												<!-- <option value="2017">2017</option> -->
												<option value="">선택</option>
												

												<option value="1907">1907</option>

												<option value="1908">1908</option>

												<option value="1909">1909</option>

												<option value="1910">1910</option>

												<option value="1911">1911</option>

												<option value="1912">1912</option>

												<option value="1913">1913</option>

												<option value="1914">1914</option>

												<option value="1915">1915</option>

												<option value="1916">1916</option>

												<option value="1917">1917</option>

												<option value="1918">1918</option>

												<option value="1919">1919</option>

												<option value="1920">1920</option>

												<option value="1921">1921</option>

												<option value="1922">1922</option>

												<option value="1923">1923</option>

												<option value="1924">1924</option>

												<option value="1925">1925</option>

												<option value="1926">1926</option>

												<option value="1927">1927</option>

												<option value="1928">1928</option>

												<option value="1929">1929</option>

												<option value="1930">1930</option>

												<option value="1931">1931</option>

												<option value="1932">1932</option>

												<option value="1933">1933</option>

												<option value="1934">1934</option>

												<option value="1935">1935</option>

												<option value="1936">1936</option>

												<option value="1937">1937</option>

												<option value="1938">1938</option>

												<option value="1939">1939</option>

												<option value="1940">1940</option>

												<option value="1941">1941</option>

												<option value="1942">1942</option>

												<option value="1943">1943</option>

												<option value="1944">1944</option>

												<option value="1945">1945</option>

												<option value="1946">1946</option>

												<option value="1947">1947</option>

												<option value="1948">1948</option>

												<option value="1949">1949</option>

												<option value="1950">1950</option>

												<option value="1951">1951</option>

												<option value="1952">1952</option>

												<option value="1953">1953</option>

												<option value="1954">1954</option>

												<option value="1955">1955</option>

												<option value="1956">1956</option>

												<option value="1957">1957</option>

												<option value="1958">1958</option>

												<option value="1959">1959</option>

												<option value="1960">1960</option>

												<option value="1961">1961</option>

												<option value="1962">1962</option>

												<option value="1963">1963</option>

												<option value="1964">1964</option>

												<option value="1965">1965</option>

												<option value="1966">1966</option>

												<option value="1967">1967</option>

												<option value="1968">1968</option>

												<option value="1969">1969</option>

												<option value="1970">1970</option>

												<option value="1971">1971</option>

												<option value="1972">1972</option>

												<option value="1973">1973</option>

												<option value="1974">1974</option>

												<option value="1975">1975</option>

												<option value="1976">1976</option>

												<option value="1977">1977</option>

												<option value="1978">1978</option>

												<option value="1979">1979</option>

												<option value="1980">1980</option>

												<option value="1981">1981</option>

												<option value="1982">1982</option>

												<option value="1983">1983</option>

												<option value="1984">1984</option>

												<option value="1985">1985</option>

												<option value="1986">1986</option>

												<option value="1987">1987</option>

												<option value="1988">1988</option>

												<option value="1989">1989</option>

												<option value="1990">1990</option>

												<option value="1991">1991</option>

												<option value="1992">1992</option>

												<option value="1993">1993</option>

												<option value="1994">1994</option>

												<option value="1995">1995</option>

												<option value="1996">1996</option>

												<option value="1997">1997</option>

												<option value="1998">1998</option>

												<option value="1999">1999</option>

												<option value="2000">2000</option>

												<option value="2001">2001</option>

												<option value="2002">2002</option>

												<option value="2003">2003</option>

												<option value="2004">2004</option>

												<option value="2005">2005</option>

												<option value="2006">2006</option>

												<option value="2007">2007</option>

												<option value="2008">2008</option>

												<option value="2009">2009</option>

												<option value="2010">2010</option>

												<option value="2011">2011</option>

												<option value="2012">2012</option>

												<option value="2013">2013</option>

												<option value="2014">2014</option>

												<option value="2015">2015</option>

												<option value="2016">2016</option>

												<option value="2017">2017</option>

												<option value="2018">2018</option>

												<option value="2019">2019</option>

												<option value="2020">2020</option>

												<option value="2021">2021</option>
											
											</select><label for="year">년</label>
											<select id="month" name="month" class="select" data-class="birth_chk" title="생월 선택">
												<option value="">선택</option>
                                        
				            					<option value="01">01</option>
                                        
				            					<option value="02">02</option>
                                        
				            					<option value="03">03</option>
                                        
				            					<option value="04">04</option>
                                        
				            					<option value="05">05</option>
                                        
				            					<option value="06">06</option>
                                        
				            					<option value="07">07</option>
                                        
				            					<option value="08">08</option>
                                        
				            					<option value="09">09</option>
                                        
				            					<option value="10">10</option>
                                        
				            					<option value="11">11</option>
                                        
				            					<option value="12">12</option>
											
												<!-- <option value="04">04</option> -->
											</select><label for="month">월</label>
											<select id="day" name="day" class="select" data-class="birth_chk" title="생일 선택"><option value="">선택</option><option value="01">01</option><option value="02">02</option><option value="03">03</option><option value="04">04</option><option value="05">05</option><option value="06">06</option><option value="07">07</option><option value="08">08</option><option value="09">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select><label for="day">일</label>
	
											<input type="radio" name="cal" id="solar" data-class="birth_chk" checked="checked" value="solar">
											<label for="solar">양력</label>
											<input type="radio" name="cal" id="lunar" data-class="birth_chk" value="lunar">
											<label for="lunar">음력</label>
										</span>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					
					<div class="btn">
						<button type="button" id="saveBtn" class="sq">저장하기</button>
					</div>
				</div>
			</form>
			<!-- //MY TABLE -->

			<!-- MY TEXT -->
			<div class="mys_text">
				<h4 class="ir">개인정보 안내</h4>
				<ul>
					<li>입력하시는 정보 중 <em class="es">필수입력</em>항목은 필수정보이며, <em class="es">필수입력</em>가 없는 선택 입력 정보는 필수 입력사항이 아닙니다.</li>
					<li>제공해주신 정보는  더욱 편리하고 만족스러운 서비스를 위해 사용되고 있으며 본 서비스 이외에서 사용될 수 없습니다.</li> 
					<li>저희 더반찬몰은 정보보안 규정 준수를 통해 제공해주신 소중한 정보의 유출을 막기 위해 최선을 다하고 있습니다.</li> 
				</ul>
			</div>
			<!-- //MY TEXT -->
		</div>
	</div>
</div>
</body>
</html>