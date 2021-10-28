   
      <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                  <!-- 상단nav -->
        <nav class="sb-topnav navbar navbar-expand navbar-light " style="background-color: #c1e0fa;">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="Seller.sc">집밥선생</a>
          
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button> 
              <p class="h3">판매자 A 님 어서오십시오</p>      
              <a href="MemberLogout.me">로그아웃</a>    
         
            <!-- Navbar-->            
        </nav>
        
        
        
         <!-- 사이드 nav -->
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav" >
                <nav class="sb-sidenav accordion sb-sidenav-light" id="sidenavAccordion" style="background-color: #c1e0fa;">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">판매자</div>
                            <a class="nav-link" href="#">
                            
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                판매자 정보 
                            </a>
                            
                               <div class="sb-sidenav-menu-heading">공지사항</div>
                                <a class="nav-link" href="#">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                공지사항
                            </a>
                            
                            <div class="sb-sidenav-menu-heading">상품</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#productmanagement" aria-expanded="false" aria-controls="productmanagement">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                상품관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="productmanagement" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="ProductList.sc"> 상품조회</a>
                                    <a class="nav-link" href="#">리뷰관리</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#CustomerSupport" aria-expanded="false" aria-controls="CustomerSupport">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                고객지원
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="CustomerSupport" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="#"> 1:1문의</a>
                                    <a class="nav-link" href="#">자주묻는질문 FAQ</a>                                    
                                </nav>
                            </div>                                            
                        </div>
                    </div>
<!--                     <div class="sb-sidenav-footer"> -->
<!--                         <div class="small">Logged in as:</div> -->
<!--                         Start Bootstrap -->
<!--                     </div> -->
                </nav>
              
                
                
                
            
            </div>