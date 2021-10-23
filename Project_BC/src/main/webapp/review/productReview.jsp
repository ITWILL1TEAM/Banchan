<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.6.0.js"></script> 
<!-- 파일로 연결할 시 css가 부분부분 깨짐.일단은 링크로 연결해두고 나중에 고쳐보기. -->
<link href="../CSS/common.css" rel="stylesheet" type="text/css">
<link href="../CSS/pc-main-common.css" rel="stylesheet" type="text/css">
<link href="../CSS/sub.css" rel="stylesheet" type="text/css">
<link href="../CSS/font.css" rel="stylesheet" type="text/css">
<link href="../CSS/font.css" rel="stylesheet" type="text/css">
<link href="../CSS/gds.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/gds.css?t=20200406000000" type="text/css">
<link rel="stylesheet" href="//www.thebanchan.co.kr/fo/css/common.css?v=20211010170" type="text/css">   
</head>
<body>
<!-- TAB3 -->
			<div class="gds_cont" id="gds_cont3">
			<div class="gd_tabs">
				<ul>
					<li><a href="#gds_cont1">제품정보</a></li>
					<li><a href="#gds_cont2">제품정보고시</a></li>
					<li class="on"><a href="#gds_cont3">고객후기 <em>(4,965)</em><em class="ir">선택</em></a></li>
					<li><a href="#gds_cont4">주의사항</a></li>
				</ul>
			</div>
			<div class="gd_scr">
				<dl>
					<dt>사용자 총 평점<em>(총 <b>4,965</b>개 고객후기 기준)</em></dt>
					<dd>
						<span class="star_rate04"><b class="ir">평점</b><em style="width:50%;">review_score출력</em></span>
						<span class="scr"><b>4.6</b>/5<em>점</em></span>
					</dd>
				</dl>
			</div>
			<div class="gd_rv" id="goodsEvalDiv">
				<div class="g_sort">
					<h3>고객후기</h3>
				<div class="group">
					<ul>
						<li name="evalTab" data-value=""><a href="javascript:void(0);" id="rtabs0" class="on" onclick="fnTab(3, 'rtabs', 0, '');return false;">전체 (4,965)</a></li>
						<li name="evalTab" data-value="photo"><a href="javascript:void(0);" id="rtabs1" class="off" onclick="fnTab(3, 'rtabs', 1, '');return false;">포토 (16)</a></li>
						
					</ul>
				
				
				</div>
				<div class="sort">
						<select title="상품후기 정렬 선택" id="sch_gb">
							<option value="recent" selected="selected">최근 등록순</option>
							<option value="high_score">평점 높은순</option>
							<option value="low_score">평점 낮은순</option>
						</select>
						<span class="button">
							<button type="button" title="고객후기작성 열기" onclick="location.href='<%=request.getContextPath() %>/Review.my'">고객후기 작성</button>
						</span>
					</div>
				<input type="hidden" id="eval_goods_no" name="eval_goods_no" value="2106015489">	
				</div>
				<div id="evalListBodydiv">

				<!-- REVIEW LIST -->
				<div class="g_rv_lst">
					<h4 class="ir">고객후기 목록</h4>
					<ul>

						<li class="photo">
							<dl>
								<dt>
									<span class="pho"><img src="//www.thebanchan.co.kr/fo/images/gds/ico_picture.png" width="18" height="14" alt="포토고객후기"></span>

									<span class="star_rate05"><b class="ir">평점</b><em style="width:100.0%;">4</em></span>


									<span class="user">글쓴이</span>
									<span class="date">글작성날짜</span>
								</dt>
								<dd class="off">
									<div class="rcmt">
										내용
									</div>

									<div class="rimg">
									
										<img src="//cdn.thebanchan.co.kr/upload/C00001/mypage/review/400/94/202110101074694_00001.jpg" alt="Resized_20211007_174853(1).jpg">

									</div>

								</dd>
							</dl>
						</li>
						<li class="photo">
							<dl>
								<dt>
									<span class="pho"><img src="//www.thebanchan.co.kr/fo/images/gds/ico_picture.png" width="18" height="14" alt="포토고객후기"></span>

									<span class="star_rate05"><b class="ir">평점</b><em style="width:100.0%;">4</em></span>


									<span class="user">글쓴이</span>
									<span class="date">글작성날짜</span>
								</dt>
								<dd class="off">
									<div class="rcmt">
										내용
									</div>

									<div class="rimg">
									
										<img src="//cdn.thebanchan.co.kr/upload/C00001/mypage/review/400/34/202110091074434_00001.jpg" alt="Resized_20211007_174853(1).jpg">

									</div>

								</dd>
							</dl>
						</li>

						<li>
							<dl>
								<dt>

									<span class="star_rate05"><b class="ir">평점</b><em style="width:100.0%;">4</em></span>


									<span class="user">글쓴이</span>
									<span class="date">작성일</span>
								</dt>
								<dd class="off">
									<div class="rcmt">
										내용
									</div>
								</dd>
							</dl>
						</li>

					</ul>
				</div>	

				<!-- PAGING -->
				<div class="paging" id="page_nav">
					<span class="page">
					<a href="javascript:void(0);" class="select_num" data-current="true" data-value="1" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">1<span class="ir">현재페이지</span></a><a href="javascript:void(0);" class="num" data-current="false" data-value="2" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">2<span class="ir">페이지로 이동</span></a><a href="javascript:void(0);" class="num" data-current="false" data-value="3" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">3<span class="ir">페이지로 이동</span></a><a href="javascript:void(0);" class="num" data-current="false" data-value="4" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">4<span class="ir">페이지로 이동</span></a><a href="javascript:void(0);" class="num" data-current="false" data-value="5" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">5<span class="ir">페이지로 이동</span></a><a href="javascript:void(0);" class="num" data-current="false" data-value="6" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">6<span class="ir">페이지로 이동</span></a><a href="javascript:void(0);" class="num" data-current="false" data-value="7" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">7<span class="ir">페이지로 이동</span></a><a href="javascript:void(0);" class="num" data-current="false" data-value="8" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">8<span class="ir">페이지로 이동</span></a><a href="javascript:void(0);" class="num" data-current="false" data-value="9" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">9<span class="ir">페이지로 이동</span></a><a href="javascript:void(0);" class="num" data-current="false" data-value="10" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331">10<span class="ir">페이지로 이동</span></a><a href="javascript:void(0);" class="next" data-current="" data-value="11" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331"><span class="ir">다음 목록으로 이동</span></a><a href="javascript:void(0);" class="end" data-current="" data-value="497" data-parameters="val=&amp;sch_gb=recent&amp;goods_detail_yn=Y&amp;obj=%5Bobject+Object%5D&amp;best_yn=&amp;goods_no=2106015489&amp;liObj=%5Bobject+Object%5D&amp;img_add_yn=&amp;_=1633866764331"><span class="ir">끝 목록으로 이동</span></a>
					</span>
				</div>
				<!-- //PAGING -->
				<!-- //REVIEW LIST -->
				</div>
					</div>
		</div>
			
</body>
</html>