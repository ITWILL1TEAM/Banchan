
<%@page import="vo.Productbean"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    ArrayList<Productbean> brandNewList = (ArrayList<Productbean>)request.getAttribute("brandNewList");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<!-- Bootstrap CSS -->
    


<!--     <script type="text/javascript" src="//www.thebanchan.co.kr/common/js/jquery-1.12.4.min.js"></script> -->
<script src="js/jquery-3.6.0.js"></script>
<script type="text/javascript">
   
</script>
<!-- <script type="text/javascript" charset="UTF-8" -->
<!--     src="//t1.daumcdn.net/adfit/static/kp.js"></script> -->



<title>집밥선생!Project_BC</title>
</head>
<body>

    

    <!-- HEADER -->
    <jsp:include page="../inc/top.jsp" />
    <!--// HEADER -->
<!--  Main CSS -->
<!--     <link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/main.css?v=20211014190" type="text/css"> -->


    <!-- CONTENT -->
    <!-- <div id="content" class="content"  > -->
    <div id="container" style="outline: none;">
        <!-- WRAP -->
        <!-- <div class="wrap main"> -->
        <section id="content" class="main" style="padding-top: 50px; margin: 0px 150px;">
            <!-- wrap addClass -->
    

    <div class="list-wrap">
        <div class="page-title">
            <div class="title">
                <span class="icon"><img
                    src="//cdn.thebanchan.co.kr/upload/C00001/dspl/banner/8010/210/00/200700000012210.png"
                    style="width: 50px; height: 50px;"></span>
                    <strong>할인특가</strong>
            </div>

        </div>
        <div class="prd-area">
            <ul>

             
<!--                  String productImgName = bo.getProduct_name()+"0101"; -->
<!--                  int discountPrice = (int)(bo.getProduct_price()*(100-bo.getProduct_discount())/100);  -->
<!--                  int price =  bo.getProduct_price(); -->
<!--                  int discount = bo.getProduct_discount();  -->
            <%for(int i=0; i<brandNewList.size(); i++){ %>
             
            
            <%
                  String productImgName = brandNewList.get(i).getProduct_name()+"0101";
                  int discountPrice = (int)(brandNewList.get(i).getProduct_price()*(100-brandNewList.get(i).getProduct_discount())/100); 
                  int price =  brandNewList.get(i).getProduct_price();
                  int discount = brandNewList.get(i).getProduct_discount(); 
                  int productNum = brandNewList.get(i).getProduct_num();
                  String product_name = brandNewList.get(i).getProduct_name();
            %>   
                <li >
                    <div class="prd-box">
                        <div class="thumb">
                            <div class="btn-box">
                                <a href=" " class="btn-shop-cart"
                                    onclick=""><i
                                    class="ico-cart2"></i>장바구니</a>
                            </div>
                            <a href=""
                                onclick="">
                                 <img src="${pageContext.request.contextPath}/upload/<%=productImgName %>.png"
                                width="296" height="296"
                                alt="더반찬&amp; 집밥만찬 2종 골라담기 (5,000원 부터~)"
                                ><span
                                class="tag sale"><span></span><strong><%=discount %></strong>%</span></a>
                        </div>
                        <div class="info">
                            <a href="Product.do?product_num=<%=productNum %>"
                                onclick="">
                                    <p class="subject"><%=product_name %></p>
                                <div class="price">
                                    <p>
                                        <strong><%= discountPrice %></strong><span class="is-noto">원</span>
                                    </p>
                                    <p class="original">
                                    <%=price %> <span class="is-noto">원</span>
                                    </p>
                                </div>
                                <div class="star-wrap">
                                    <i class="ico-star"></i><span class="num"><strong>4.8<!-- 리뷰 스코어 들어갈자리 --></strong>(2,718)</span>
                                </div>
                                <p class="deliverybox">10/25(월) 새벽 도착 가능</p>
                                <div class="tag-box"></div></a>
                        </div>
                    </div>
                </li>
                <%} %>
            </ul>
        
            
            
            
        </div>
        
    </div>
    </section>
    </div>

</body>
</html>