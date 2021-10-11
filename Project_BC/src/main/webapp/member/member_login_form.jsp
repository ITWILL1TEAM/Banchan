<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/common.css?v=20211005130" type="text/css">
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/pc-main-common.css?v=20211005130" type="text/css">
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/sub.css?v=20211005130" type="text/css">
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/asset/css/font.css?v=20211005130" type="text/css">

</head>
<body>
<div id="cont">  
 <div class="login_box">
   <script type="text/javascript" src="//www.thebanchan.co.kr/common/js/overpass.sms.js"></script>

   <h2 id="tit">로그인</h2>
   
   <div class="login_set">
   
      <form name="loginLayerForm" id="loginLayerForm" method="post">
         <input type="hidden" name="scheme" id="scheme" value="">
         <input type="hidden" name="ret_domain" id="ret_domain" value="">
         <input type="hidden" name="loginType" id="loginType" value="">
         <input type="hidden" name="snsDiviCd" id="snsDiviCd" value="">
                     
                     
     <span class="caution ir txt_alert_login" id="lyr_caution1"></span>
                          
                          
         <label for="login_id_lyr" class="ir">로그인</label>
         <input type="text" id="login_id_lyr" name="login_id" maxlength="50" class="login_input" placeholder="아이디" value="">
         
         <label for="pwd_lyr" class="ir">비밀번호</label>
         <input type="password" id="pwd_lyr" name="pwd" maxlength="20" class="login_input" placeholder="비밀번호">
         
         <!-- 아이디 비번 오류시 노출 -->
         <span class="caution ir txt_alert_login" id="lyr_caution1"></span>
   
     
         <button type="button" class="btn_login" id="btn_login_lyr"><em>로그인</em></button>
      </form>               
               
   </div>
   

      <a href="member_join_form.jsp" class="joinup">신규 회원가입</a>


</div></div>

</body>
</html>
