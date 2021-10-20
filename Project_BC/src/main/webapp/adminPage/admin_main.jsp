<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집밥선생_AdminPage</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="CSS/styles.css" rel="stylesheet" />
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
      
</head>
<body class="sb-nav-fixed">
 
  <jsp:include page="../inc/admin_top.jsp"/>
     
                <!--  메인 Content -->
                 <!--  첫차트. -->
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Admin</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">DashBoard</li>
                        </ol>
                        
                      
                        <div class="row">      
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                <div class="card-header">
                                        <i class="fas fa-table me-1"></i>
                                       1:1문의
                                    </div>
                                    <div class="card-body">
                                       <table class="table table-striped text-wrap">
                                        <tr>
                                            <th>번호</th>
                                            <th>상담유형</th>
                                            <th>상담제품</th>
                                            <th>고객명</th>
                                            <th>제목</th>                                            
                                            <th>전화번호</th>
                                            <th>날짜</th>   
                                            
                                        </tr>                                    
                                        <tr>
                                            <td>000001</td>
                                            <td>제품상담</td>
                                            <td><a href="#">미트신선한미트</a></td><!-- 클릭시 상품 디테일 페이지로 이동. -->
                                            <td>정성원</td>
                                            <td>고기가 맛없어요</td>
                                            <td>010-123-1234</td>
                                            <td>2021-10-19</td>
                                        </tr>
                                        <tr>
                                            <td>000001</td>
                                            <td>제품상담</td>
                                            <td><a href="#">미트신선한미트</a></td><!-- 클릭시 상품 디테일 페이지로 이동. -->
                                            <td>정성원</td>
                                            <td>고기가 맛없어요</td>
                                            <td>010-123-1234</td>
                                            <td>2021-10-19</td>
                                        </tr> 
                                        <tr>
                                            <td>000001</td>
                                            <td>제품상담</td>
                                            <td><a href="#">미트신선한미트</a></td><!-- 클릭시 상품 디테일 페이지로 이동. -->
                                            <td>정성원</td>
                                            <td>고기가 맛없어요</td>
                                            <td>010-123-1234</td>
                                            <td>2021-10-19</td>
                                        </tr>                                         
                                    
                                                                                                           
                                      </table>
                                    </div>
                                  </div>                                    
                                </div>                        
                            
                            
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                <div class="card-header">
                                        <i class="fas fa-table me-1"></i>
                                       공지사항
                                    </div>
                                    <div class="card-body">
                                   <table class="table table-striped text-wrap">
                                        <tr>
                                            <th>글번호</th>
                                            <th>제목</th>
                                            <th>내용</th>    
                                        </tr>                                    
                                        <tr>
                                            <td>000001</td>
                                            <td>공지입니다</td>
                                            <td><a href="#">공지공지</a></td><!-- 클릭시 상품 디테일 페이지로 이동. -->                                            
                                        </tr>
                                         <tr>
                                            <td>000001</td>
                                            <td>공지입니다</td>
                                            <td><a href="#">공지공지</a></td><!-- 클릭시 상품 디테일 페이지로 이동. -->                                            
                                        </tr>
                                         <tr>
                                            <td>000001</td>
                                            <td>공지입니다</td>
                                            <td><a href="#">공지공지</a></td><!-- 클릭시 상품 디테일 페이지로 이동. -->                                            
                                        </tr>
                                        </table>
                                    </div>
                                </div>
                                </div>                          
                       
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                       일별차트
                                    </div>
                                    <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                            
                             <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                       월별차트
                                    </div>
                                    <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                        </div>
                        
                        
                        
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                상품관리
                            </div>
                            <div class="card-body">
                               <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>상품번호</th>
                                            <th>판매자</th>
                                            <th>상품이름</th>
                                            <th>판매수량</th>
                                            <th>판매시작일</th>
                                            <th>총 판매금액</th>
                                            <th>관리</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>상품번호</th>
                                            <th>판매자</th>
                                            <th>상품이름</th>
                                            <th>판매수량</th>
                                            <th>판매시작일</th>
                                            <th>총 판매금액</th>
                                            <th>관리</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td>000001</td>
                                            <td>성원축산</td>
                                            <td><a href="#">미트신선한미트</a></td><!-- 클릭시 상품 디테일 페이지로 이동. -->
                                            <td>53</td>
                                            <td>2021-10-19</td>
                                            <td>$320,800</td>
                                            <td><a href="#"><img src="assets/img/Edit.png"></a>
                                        </tr>
                                         <tr>
                                            <td>000001</td>
                                            <td>성원축산</td>
                                            <td><a href="#">미트신선한미트</a></td><!-- 클릭시 상품 디테일 페이지로 이동. -->
                                            <td>53</td>
                                            <td>2021-10-19</td>
                                            <td>$320,800</td>
                                            <td><a href="#"><img src="assets/img/Edit.png"></a>
                                        </tr>  
                                         <tr>
                                            <td>000001</td>
                                            <td>성원축산</td>
                                            <td><a href="#">미트신선한미트</a></td><!-- 클릭시 상품 디테일 페이지로 이동. -->
                                            <td>53</td>
                                            <td>2021-10-19</td>
                                            <td>$320,800</td>
                                            <td><a href="#"><img src="assets/img/Edit.png"></a>
                                        </tr>  
                                         <tr>
                                            <td>000001</td>
                                            <td>성원축산</td>
                                            <td><a href="#">미트신선한미트</a></td><!-- 클릭시 상품 디테일 페이지로 이동. -->
                                            <td>53</td>
                                            <td>2021-10-19</td>
                                            <td>$320,800</td>
                                            <td><a href="#"><img src="assets/img/Edit.png"></a>
                                        </tr>   <tr>
                                            <td>000001</td>
                                            <td>성원축산</td>
                                            <td><a href="#">미트신선한미트</a></td><!-- 클릭시 상품 디테일 페이지로 이동. -->
                                            <td>53</td>
                                            <td>2021-10-19</td>
                                            <td>$320,800</td>
                                            <td><a href="#"><img src="assets/img/Edit.png"></a>
                                        </tr>                                                            
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    
                    
                </main>
                
               <jsp:include page="../inc/admin_bottom.jsp"/>
            
            </div>
        </div>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/assets/demo/scripts2.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="js/assets/demo/chart-area-demo.js"></script>
        <script src="js/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/assets/demo/datatables-simple-demo.js"></script>
    </body>

</html>