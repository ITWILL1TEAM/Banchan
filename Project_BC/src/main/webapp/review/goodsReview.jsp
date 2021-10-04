<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- TAB3 -->
		<div class="gds_cont" id="gds_cont3">
			<div class="gd_tabs">
				<ul>
					<li><a href="">제품정보</a></li>
					<li><a href="">제품정보고시</a></li>
					<li class="on"><a href="">고객후기 <em>(609)</em><em class="ir">선택</em></a></li>
					<li><a href="">주의사항</a></li>
				</ul>
			</div>
			<div class="gd_scr">
				<dl>
					<dt>사용자 총 평점<em>(총 <b>609</b>개 고객후기 기준)</em></dt>
					<dd>
						<span class="star_rate04"><b class="ir">평점</b><em style="width:90%;">4.7</em></span>
						<span class="scr"><b>4.7</b>/5<em>점</em></span>
					</dd>
				</dl>
			</div>
			<div class="gd_rv" id="goodsEvalDiv">

				<div class="g_sort">
					<h3>고객후기</h3>
					<div class="group">
						<ul>
							<li name="evalTab" data-value=""><a href="" id="rtabs0" class="on" onclick="">전체 (609)</a></li>
							<li name="evalTab" data-value="best"><a href="" id="rtabs1" class="off" onclick="">BEST (4)</a></li>
							<li name="evalTab" data-value="photo"><a href="" id="rtabs2" class="off" onclick="">포토 (175)</a></li>
						</ul>
					</div>
					<div class="sort">
						<select title="상품후기 정렬 선택" id="sch_gb">
							<option value="best">BEST</option> 
							<option value="recomm">도움 많은순</option>
							<option value="recent" selected="selected">최근 등록순</option>
							<option value="high_score">평점 높은순</option>
						</select>
						<span class="button">
							<button type="button" title="고객후기작성 열기" onclick="">고객후기 작성</button>
						</span>
					</div>
					<input type="hidden" id="eval_goods_no" name="eval_goods_no" value="0000015017">
				</div>
								
			<div id="evalListBodydiv">	

	

				<!-- REVIEW LIST -->
				<div class="g_rv_lst">
					<h4 class="ir">고객후기 목록</h4> <!--  고객후기 게시판을 따로 만들고 상품명을 =? 로 해서 가져와야 하는지? -->
					<ul>

						<li class="photo">
							<dl>
								<dt>

									<span class="pho"><img src="" width="18" height="14" alt="포토고객후기"></span>

									<span class="star_rate05"><b class="ir">평점</b><em style="width:100.0%;">4</em></span>


									<span class="user">김*덕</span>
									<span class="date">2021.10.04</span>
								</dt>
								<dd class="off">
									<div class="raid" id="recomm_div" style="display:none" ;=""><span id="recomm_cnt">0</span>명이 이 고객후기가 도움이 된다고 선택하셨습니다.</div>
									<div class="rcmt">
										건더기가 아주 많지는 않네요~
<br>맵지 않고, 국물이 맑아 깔끔하네요 :)
									</div>

									<div class="rimg">
									
										<img src="./집밥장인이 만든 온라인 식품몰 더반찬&amp;_files/202110041072215_00001.jpg" alt="20211004_110655.jpg">

									</div>

									<div class="more">
										<button type="button" title="상품후기 더보기" style="" name="more_btn">더보기</button>
									</div>
									<div class="reva">

										<!-- <span class="tt">등록된 댓글이 없습니다.</span> -->

										<span class="tx">이 고객후기가 도움이 되셨나요?</span>

										<button type="button" onclick="overpass.goodsDetail.fnEval.fnRecomm(this)" data-goods-eval-no="202110041072215" title="도움 평가하기">네, 도움이 되었습니다.</button>

									</div>

								</dd>
							</dl>
						</li>

						<li class="photo">
							<dl>
								<dt>

									<span class="pho"><img src="./집밥장인이 만든 온라인 식품몰 더반찬&amp;_files/ico_picture.png" width="18" height="14" alt="포토고객후기"></span>

									<span class="star_rate05"><b class="ir">평점</b><em style="width:100.0%;">4</em></span>


									<span class="user">김*현</span>
									<span class="date">2021.10.04</span>
								</dt>
								<dd class="off">
									<div class="raid" id="recomm_div" style="display:none" ;=""><span id="recomm_cnt">0</span>명이 이 고객후기가 도움이 된다고 선택하셨습니다.</div>
									<div class="rcmt">
										첨 시켜봤는데 국이 짜지 않구 맛있는 것 같아요~
									</div>

									<div class="rimg">
									
										<img src="./집밥장인이 만든 온라인 식품몰 더반찬&amp;_files/202110041072110_00001.jpg" alt="20211002_053832.jpg">

									</div>

									<div class="more">
										<button type="button" title="상품후기 더보기" style="" name="more_btn">더보기</button>
									</div>
									<div class="reva">

										<!-- <span class="tt">등록된 댓글이 없습니다.</span> -->

										<span class="tx">이 고객후기가 도움이 되셨나요?</span>

										<button type="button" onclick="overpass.goodsDetail.fnEval.fnRecomm(this)" data-goods-eval-no="202110041072110" title="도움 평가하기">네, 도움이 되었습니다.</button>

									</div>

								</dd>
							</dl>
						</li>

				</div>	
				
			
</body>
</html>