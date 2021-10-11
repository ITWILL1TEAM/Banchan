<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
	crossorigin="anonymous"></script>

<title>Hello, world!</title>
</head>
<body>
	<div class=" bg-light text-dark ">
		<div class="container">
			<!--  head top -->
			<header>
				<div class="col text-size" align="right">
					<a class="btn btn-light" id="head_login" href="MemberLoginForm.me">로그인</a> <a
						class="btn btn-light" id="head_sign" href="MemberJoinForm.me">회원가입</a> <a
						class="btn btn-light" id="head_Service center" href="#">장바구니</a>
				</div>

				<div class="row">
					<div class="col-12 text-center">
						<a class="navbar-brand" href="#"> <img alt="logo"
							src="./img/TestLogo.png" width="150" height="150">
						</a>
					</div>
				</div>

				<!--  Header NavBar -->
				<nav class="navbar navbar-expand-lg navbar-light bg-light text-dark">
					<div class="container-fluid">
						<div class="collapse navbar-collapse" id="navbarNavLightDropdown">
							<ul class="navbar-nav">
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle font-weight-bold" href="#"
									id="navbarLightDropdownMenuLink" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> 카테고리 </a>
									<ul class="dropdown-menu dropdown-menu-light"
										aria-labelledby="navbarLightDropdownMenuLink">
										<li><a class="dropdown-item" href="#">반찬</a></li>
										<li><a class="dropdown-item" href="#">국</a></li>
										<li><a class="dropdown-item" href="#">고급반찬</a></li>
									</ul></li>
								<li class="nav-item"><a class="nav-link" href="#"> 할인특가
								</a></li>
								<li class="nav-item"><a class="nav-link" href="#"> 베스트
								</a></li>
								<li class="nav-item"><a class="nav-link" href="#"> 신상품
								</a></li>

							</ul>
						</div>
					</div>
					<div class="col-3">
						<form class="d-flex" id="SearchBox" action="get">
							<input class="form-control me-2" type="search" placeholder="검색"
								aria-label="Search">
							<button class="btn btn-outline-success" type="submit">search</button>
						</form>
					</div>
				</nav>


			</header>


			<!--  caousel -->
			<div id="carouselExampleCaptions" class="carousel slide"
				data-bs-ride="carousel">
				<div class="carousel-indicators">
					<button type="button" data-bs-target="#carouselExampleCaptions"
						data-bs-slide-to="0" class="active" aria-current="true"
						aria-label="Slide 1"></button>
					<button type="button" data-bs-target="#carouselExampleCaptions"
						data-bs-slide-to="1" aria-label="Slide 2"></button>
					<button type="button" data-bs-target="#carouselExampleCaptions"
						data-bs-slide-to="2" aria-label="Slide 3"></button>
				</div>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="./img/carousel_sample1.jpg" class="d-block w-100"
							height="500" alt="sampletest1">
						<div class="carousel-caption d-none d-md-block">
							<h5>산딸기</h5>
							<p>It's a fresh raspberry, actually, it's a snake berry lol</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./img/carousel_sample2.jpg" class="d-block w-100 "
							height="500" alt="...">
						<div class="carousel-caption d-none d-md-block">
							<h5>스테이크</h5>
							<p>The steak looks very tasty. How much is it?</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="./img/carousel_sample3.jpg" class="d-block w-100 "
							height="500" alt="...">
						<div class="carousel-caption d-none d-md-block">
							<h5>직화 숯불 꼬지</h5>
							<p>Look so damn delicious I want to go camping</p>
						</div>
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>



			<!--  CONTENT -->
			<div class="row mt-5" id="recommended">
				<h3 align="center">추천 상품</h3>
				<hr>
				<div class="row">
					<div class="col-lg-3 col-sm-6 mb-4">
						<!--추천상품 1-->
						<div class="">
							<a class="" href="#"> <img class="img-thumbnail"
								src="./img/innerbox_sample1.jpg" alt="..." />
							</a>
							<div class="">
								<div class="" align="right">햄버거</div>
								<div class="" align="right">15,000원</div>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-sm-6 mb-4">
						<!--추천상품 2-->
						<div class="">
							<a class="" href="#"> <img class="img-thumbnail"
								src="./img/innerbox_sample2.jpg" alt="..." />
							</a>
							<div class="">
								<div class="" align="right">마카롱</div>
								<div class="" align="right">15,000원</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6 mb-4">
						<!--추천상품 3-->
						<div class="">
							<a class="" href="#"> <img class="img-thumbnail" src="./img/innerbox_sample3.jpg" alt="..." />
							</a>
							<div class="">
								<div class="" align="right">뭐드라</div>
								<div class="" align="right">15,000원</div>
							</div>
						</div>
					</div>
					
					<div class="col-lg-3 col-sm-6 mb-4">
                        <!--추천상품 4-->
                        <div class="">
                            <a class="" href="#">
                                 <img class="img-thumbnail" src="./img/innerbox_sample1.jpg" alt="..." />
                            </a>
                            <div class="">
                                <div class="" align="right">햄버거</div>
                                <div class="" align="right">15,000원</div>
                            </div>
                        </div>
                    </div>

				</div>

			</div>
			
			
			
			<div class="row mt-5" id="recommended">
                <h3 align="center">그냥 상품</h3>
                <hr>
                <div class="row">
                    <div class="col-lg-3 col-sm-6 mb-4">
                        <!--추천상품 1-->
                        <div class="">
                            <a class="" href="#"> <img class="img-thumbnail"
                                src="./img/innerbox_sample1.jpg" alt="..." />
                            </a>
                            <div class="">
                                <div class="" align="right">햄버거</div>
                                <div class="" align="right">15,000원</div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-sm-6 mb-4">
                        <!--추천상품 2-->
                        <div class="">
                            <a class="" href="#"> <img class="img-thumbnail"
                                src="./img/innerbox_sample2.jpg" alt="..." />
                            </a>
                            <div class="">
                                <div class="" align="right">마카롱</div>
                                <div class="" align="right">15,000원</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 mb-4">
                        <!--추천상품 3-->
                        <div class="">
                            <a class="" href="#"> <img class="img-thumbnail" src="./img/innerbox_sample3.jpg" alt="..." />
                            </a>
                            <div class="">
                                <div class="" align="right">뭐드라</div>
                                <div class="" align="right">15,000원</div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-sm-6 mb-4">
                        <!--추천상품 4-->
                        <div class="">
                            <a class="" href="#">
                                 <img class="img-thumbnail" src="./img/innerbox_sample1.jpg" alt="..." />
                            </a>
                            <div class="">
                                <div class="" align="right">햄버거</div>
                                <div class="" align="right">15,000원</div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>

			<!--  Footer -->
			<hr>

			<div class="text=center">
				<p>ITWILL 1 TEAM PROJECT_BC TEST FOOTER @2021-2021 DEAD</p>

			</div>
		</div>
	</div>

</body>
</html>
