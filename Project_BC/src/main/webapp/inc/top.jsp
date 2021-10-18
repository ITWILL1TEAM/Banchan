<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="robots" content="index, follow">
<!-- Bootstrap CSS -->
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
    rel="stylesheet">



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
    <script type="text/javascript" src="//www.thebanchan.co.kr/common/js/slick.min.js"></script>
    <script type="text/javascript" src="//www.thebanchan.co.kr/common/js/TweenMax.min.js"></script>
    <script type="text/javascript" src="//www.thebanchan.co.kr/common/js/visaulSlder.js"></script>
    <script type="text/javascript" src="//www.thebanchan.co.kr/common/js/overpass.sns.js"></script>



<script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>



<noscript>
  <img src='https://trc.taboola.com/1326614/log/3/unip?en=page_view'
      width='0' height='0' style='display:none'/>
</noscript>

   
<script>
    $(document).ready(function() {
        var __today = new Date();
        var __dd = __today.getDate();
        var __mm = __today.getMonth()+1;
        var __yyyy = __today.getFullYear();

        if(__dd<10) {   __dd='0'+__dd } 
        if(__mm<10) { __mm='0'+__mm }
        __today = __yyyy+"-"+__mm+"-"+__dd;

        if(__today < "2020-10-03"){
            $(".header-wrap .header-top .logo a").css({'width' : '234px', 'height' : '87px', 'background-image': 'url("../fo/images/ico/tbc_logo_thanksgiving.png")'});
        }else{
            $(".header-wrap .header-top .logo a").css({'width' : '184px', 'height' : '50px',    'background-image': 'url("../fo/images/ico/logo.png")'});
        }

        var url = decodeURIComponent(location.href);
        var path_name = decodeURIComponent(location.pathname);
        var mbrDiviCd = "null";

        if(mbrDiviCd == 30){
            var mbrDiviCd_yn = false;
            if(path_name !="/member/initMemActive.action"){
                mbrDiviCd_yn = true;
                overpass.logout();
            }
            if(path_name != "/member/initMemChangePwd.action" && mbrDiviCd_yn){
                overpass.logout();
            }
        }
    });
</script>



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
        <div class="header-top" style="background-color:#90EE90;">
            <div class="inner-box">
                <h1 class="logo">
                    <a href="#"
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
<!--                         <button class="sch_bt" type="button"> -->
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

                        <li><a id="head_login_a" href="">로그인</a></li>
                        <li><a id="head_login_b" href="">회원가입</a></li>

                        <li><a href="">고객센터</a></li>                

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