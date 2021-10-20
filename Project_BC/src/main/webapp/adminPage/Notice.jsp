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

 <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">공지사항</h1>
                        <ol class="breadcrumb mb-4">
                            
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                공지사항!!!
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th >글번호</th>
                                            <th>제목</th>
                                            <th>작성일</th>                                            
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>글번호</th>
                                            <th>제목</th>
                                            <th>작성일</th>  
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td>ddddd</td>
                                            <td>ddddd</td>
                                            <td>ddddd</td>
                                        </tr>
                                        
                                    </tbody>
                                </table>
                            </div>
                              <a href="#" class="btn btn-primary "role="button" data-bs-toggle="button" >글쓰기</a>
                        </div>
                    </div>
                </main>








   <jsp:include page="../inc/admin_bottom.jsp"/>
            
         
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/assets/demo/scripts2.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="js/assets/demo/chart-area-demo.js"></script>
        <script src="js/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/assets/demo/datatables-simple-demo.js"></script>
    </body>

</html>