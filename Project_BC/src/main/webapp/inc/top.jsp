<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Bootstrap CSS -->
<!-- <link -->
<!--     href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" -->
<!--     rel="stylesheet"> -->



    <link rel="shortcut icon" href="//www.thebanchan.co.kr/fo/images/common/favicon.ico?v=2" type="image/x-icon">
    <link rel="icon" href="//www.thebanchan.co.kr/fo/images/common/favicon.ico?v=2" type="image/x-icon">
    <link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/common.css?v=20211014190" type="text/css">   
    <link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/pc-main-common.css?v=20211014190" type="text/css">
    <link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/sub.css?v=20211014190" type="text/css">
    <link rel="stylesheet" href="//www.thebanchan.co.kr/fo/asset/css/font.css?v=20211014190" type="text/css">
    

    

<!--     <script type="text/javascript" src="//www.thebanchan.co.kr/common/js/overpass.common.js?v=20211014190"></script> -->
<!--     <script type="text/javascript" src="//www.thebanchan.co.kr/common/js/overpass.fn.js?v=20211014190"></script> -->
<!--     <script type="text/javascript" src="//www.thebanchan.co.kr/common/js/overpass.delihopedate.js?v=20211014190"></script> -->
<!--     <script type="text/javascript" src="//www.thebanchan.co.kr/common/js/overpass.login.base.js?v=20211014190"></script> -->
<!--     <script type="text/javascript" src="//www.thebanchan.co.kr/common/js/overpass.member.js?v=20211014190"></script> -->
<!--     <script type="text/javascript" src="//www.thebanchan.co.kr/fo/js/overpass.fo.js?v=20211014190"></script>     -->
<!--     <script type="text/javascript" src="//www.thebanchan.co.kr/fo/js/overpass.popup.js?v=20211014190"></script> -->
<!--     <script type="text/javascript" src="//www.thebanchan.co.kr/fo/js/overpass.login.js?v=20211014190"></script>  -->
<!--     <script type="text/javascript" src="//www.thebanchan.co.kr/fo/js/ds.appinterface.dongwon.js?v=20211014190"></script>     APP 스킴용 -->
    
    <script type="text/javascript" src="//www.thebanchan.co.kr/common/js/ui.js"></script>
<!--     <script type="text/javascript" src="//www.thebanchan.co.kr/common/js/slick.min.js"></script> -->
<!--     <script type="text/javascript" src="//www.thebanchan.co.kr/common/js/TweenMax.min.js"></script> -->
<!--     <script type="text/javascript" src="//www.thebanchan.co.kr/common/js/visaulSlder.js"></script> -->
<!--     <script type="text/javascript" src="//www.thebanchan.co.kr/common/js/overpass.sns.js"></script> -->



<script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script src="js/jquery-3.6.0.js"></script>


<noscript>
  <img src='https://trc.taboola.com/1326614/log/3/unip?en=page_view'
      width='0' height='0' style='display:none'/>
</noscript>

   



<!-- ACCESSIBILITY -->
<div id="accessibility" class="accessibility" style="outline: none;">
    <dl>
        <dt class="ir"><strong>바로가기 메뉴</strong></dt>
        <dd><a href="#content">본문 바로가기</a></dd>
        <dd><a href="#header">메인메뉴 바로가기</a></dd>
        <dd><a href="#footer">하단메뉴 바로가기</a></dd>
    </dl>
</div>
<!-- //ACCESSIBILITY -->

<!-- HEADER -->
<!-- <div id="header" class="header"> 2020.07 이 -->
<!-- <div id="header" class="header-wrap"> -->
<header id="headerWrap" class="header-wrap"
        style="transform: translateY(0px);">
<!--         <div class="banner-area"> -->
<!--             <a href="" class="banner" -->
<!--                 style="background-image: url('//cdn.thebanchan.co.kr/upload/C00001/dspl/banner/90/432/200800000012432.jpg?v=20200805175837');"></a> -->
<!--             <div class="inner-box"> -->
<!--                 <div style="height: 100%; width: 97%;" onclick=""></div> -->
<!--                 <a href=" " class="btn-banner-close"><i class="ico-close" -->
<!--                     data-banner_no="200800000010574" onclick=" "></i>배너닫기</a> -->
<!--             </div> -->
<!--         </div> -->
        <!-- header top -->
        <div class="header-top" style="background-color:#02CB5D;">
            <div class="inner-box">
                <h1 class="logo">
                    <a href="main.jsp"
                        style="width: 184px; height: 150px; background-image: url('img/TestLogo.png')">집밥선생</a>
                </h1>
                <!-- 검색 영역 [S] -->
                <div class="search-wrap">
                    <div class="search-form">
<!--                         <input type="text" id="hd_sch" class="sch_input" -->
<!--                             autocomplete="off" data-keyword="반찬은 집밥선생" data-typing="off"                             -->
<!--                             style="color: rgb(127, 127, 127);"> -->
<!--                         <button type="submit" id="btnSearch" class="btn-search">검색</button> -->
<!--                         <button type="button" class="btn-clear hidden">지우기</button> -->
<!--                         <div class="sch-box"> -->
<!--                             <p class="title">최근검색어</p> -->
<!--                             <div class="nodata-wrap"> -->
<!--                                 <p>최근 검색어가 없습니다.</p> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                 
            <button class="sch_bt" type="button"> -->
<!--                             <em class="ir">검색하기</em> -->
<!--                         </button> -->

                      <form class="d-flex" id="SearchBox" action="get">
                            <input class="form-control me-2" type="search" placeholder="검색"
                                aria-label="Search">
                            <button class="btn btn-outline-success" type="submit">search</button>
                        </form>
                    </div>
                </div>
                <!-- 검색 영역 [E] -->

                <!-- 2020.07.10 MAIN 수정  -->
                <div class="util-wrap">
                    <ul>
         <%
        // "sId" 세션값을 가져와서 id 변수에 저장
        String sId = (String)session.getAttribute("sId");
        
        
        
        %> 
       
       
        <%
        
        if(sId==null){
        
        %>
        <!-- 세션에 "id" 속성값이 없을 경우 login, join 버튼 표시 -->
        <li><a id="head_login_a" href="MemberLoginForm.me" onclick='window.open("MemberLoginForm.me","_blank","height=500,width=500, status=yes,toolbar=no,menubar=no,location=no");return false'>로그인</a></li>
        <li><a id="head_login_b" href="MemberJoinForm.me">회원가입</a></li>
        <li><a href="">고객센터</a></li>   
        <%
        }else{
        int grade = (Integer)session.getAttribute("grade");
            
        %>
        <li><%=sId %> 님 반갑습니다.</li>
        <!-- 아니면(세션에 "sId" 속성값이 있을 경우) logout 버튼과 아이콘 -->   
        <li><a id="head_login_a" href="MemberLogout.me">로그아웃</a></li>
        <li><a href="">고객센터</a></li> 
            <%  if(grade==1){
                pageContext.forward("/main.ad");
            %>
<!--              <li><a href="main.ad"> 관리자페이지로</a></li> -->
            <%  }else if(grade==2){
//                     pageContext.forward("/Seller.sc");//잠시보류
            %>
                  <li><a href="Seller.sc?id=<%=sId%>"> 판매자페이지로</a></li>
            <%  }else if(grade==3){%>
               <li><a href="Besong.my"> 마이페이지로</a></li>    
            <%  }else{//grade==4
                //휴면계정 
                } %>
            
        <%}%>                   
         </ul>
                </div>
                <div id="myWrap" class="my-wrap">
                    <ul>
                        <li><a href="" style="padding-right: 30px;"><i
                                class="ico-my"></i>마이더반찬</a></li>
                        <li><a href=" " onclick=" " class="link-cart"> <i
                                class="ico-cart"></i>장바구니 <strong class="cart-count"> 0
                            </strong>
                        </a>
                            <div class="cart-box">
                                <p class="title">장바구니에 담겼습니다.</p>
                                <div class="cart-item">
                                    <div class="item">
                                        <dl>
                                            <dt>
                                                <a href=" "> <img id="cartBoxGoodsImg" src="">
                                                </a>
                                            </dt>
                                            <dd>
                                                <p id="cartBoxGoodsNm"></p>
                                            </dd>
                                        </dl>
                                    </div>
                                </div>
                            </div></li>
                    </ul>
                </div>

            </div>
        </div>
        <!-- //header top -->

        <!-- 카테고리 [S] -->
        <!-- gnb 2020-07-09 아이콘 수정 -->
        <nav class="gnb-area">
            <h2 class="hidden">전체메뉴</h2>
            <div class="gnb-wrap">
                <div class="inner-box" >
                    <ul>
                        <li class="mnu-all"><a href=" "> <span class="icon">
                                    <img
                                    src="//www.thebanchan.co.kr/fo/images/ico/ico_category.png"
                                    class="off"> <img
                                    src="//www.thebanchan.co.kr/fo/images/ico/ico_category_on.png"
                                    class="on">
                            </span> 카테고리
                        </a></li>

                        <li><a href=" " onclick=" ">할인특가</a></li>
                        <li><a href=" " onclick=" ">신상품</a></li>
                        <li class="gbnLine"><a href=" " onclick=" ">베스트</a></li>

                    </ul>
                </div>
            </div>
            <div class="gnb-sub-wrap">
                <div class="inner-box">
                    <ul class="mnu-type">

                        <li><a href=" " onclick=" "><span class="icon"><img
                                    src="//cdn.thebanchan.co.kr/upload/C00001/dspl/banner/8010/210/00/200700000012210.png"
                                    alt="반찬" class="off"><img
                                    src="//cdn.thebanchan.co.kr/upload/C00001/dspl/banner/8020/214/00/200700000012214.png"
                                    alt="반찬" class="on"></span>반찬</a>
                            <div class="mnu-sub">
                                <ul>
                                    <li><a href=" " onclick="">밑반찬</a></li>
                                    <li><a href=" " onclick="">고기반찬</a></li>
                                    <li><a href=" " onclick="">생선반찬</a></li>
                                </ul>
                            </div></li>
                        <li><a href=" " onclick=""><span class="icon"><img
                                    src="//cdn.thebanchan.co.kr/upload/C00001/dspl/banner/8010/215/00/200700000012215.png"
                                    alt="김치" class="off"><img
                                    src="//cdn.thebanchan.co.kr/upload/C00001/dspl/banner/8020/216/00/200700000012216.png"
                                    alt="김치" class="on"></span>김치</a>
                            <div class="mnu-sub">
                                <ul>
                                    <li><a href=" " onclick="">김치</a></li>
                                </ul>
                            </div></li>
                        <li><a href=" " onclick=""><span class="icon"><img
                                    src="//cdn.thebanchan.co.kr/upload/C00001/dspl/banner/8010/217/00/200700000012217.png"
                                    alt="국" class="off"><img
                                    src="//cdn.thebanchan.co.kr/upload/C00001/dspl/banner/8020/218/00/200700000012218.png"
                                    alt="국" class="on"></span>국</a>
                            <div class="mnu-sub">
                                <ul>
                                    <li><a href=" " onclick=" ">국</a></li>
                                </ul>
                            </div></li>

                </div>
            </div>
        </nav>
        <!-- //gnb -->
        <!-- 카테고리 [E] -->
    </header>