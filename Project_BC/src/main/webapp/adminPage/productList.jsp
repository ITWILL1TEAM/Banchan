<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Tables - SB Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="CSS/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body>
 <%@include file="../inc/admin_top.jsp" %>



<div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">상품조회</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">Tables</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                상품조회 게시판 입니다.                               
                            </div>
                        </div>
                        
                        
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                상품조회
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <<th>상품번호</th>
                                            <th>회사명</th>
                                            <th>상품명</th>
                                            <th>판매수량</th><
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
                                    </tbody>
                                </table>
                            </div>
                           <a href="ProductRegister.ad" class="btn btn-primary btn-lg" tabindex="-1" role="button" aria-disabled="true">글쓰기</a>
                        </div>
                    </div>
                </main>
                 <%@include file="../inc/admin_bottom.jsp" %>
            </div>
        </div>
        <<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/assets/demo/scripts2.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/assets/demo/datatables-simple-demo.js"></script> 
    </body>
</html>