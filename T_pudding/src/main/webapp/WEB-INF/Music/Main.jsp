<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE HTML>

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>푸딩메인</title>

<!-- Favicon -->
<link rel="icon" href="${path}/resources/img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link href="${path}/resources/style.css" rel="stylesheet">

<!-- Responsive CSS -->
<link href="${path}/resources/css/responsive/responsive.css"
	rel="stylesheet">
	
	
<link href="${path}/resources/css/responsive/responsive.css"
	rel="stylesheet">
<link href="${path}/resources/assets/css/bootstrap.css" rel="stylesheet" />
<link href="${path}/resources/assets/css/login-register.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="${path}/resources/http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<script src="${path}/resources/assets/js/jquery-1.10.2.js"
	type="text/javascript"></script>
<script src="${path}/resources/assets/js/bootstrap.js"
	type="text/javascript"></script>
<script src="${path}/resources/assets/js/login-register.js"
	type="text/javascript"></script>

</head>

<body>
	<!-- Preloader Start -->
	<div id="preloader">
		<div class="yummy-load"></div>
	</div>
	<!-- ****** Top Header Area Start ****** -->
	<div class="top_header_area">
		<div class="container">
			<div class="row">
				<div class="col-5 col-sm-6">
					<!--  Top Social bar start -->

				</div>
				<!--  Login Register Area -->
				<div class="col-7 col-sm-6">
					<div
						class="signup-search-area d-flex align-items-center justify-content-end">
						<div class="login_register_area d-flex">
							<div class="login">
								<a href="loginForm.me">Sing in</a>
							</div>
							<div class="register">
								<a href="${path}/resources/register.html">Sing up</a>
							</div>
						</div>
						<!-- Search Button Area -->
						<div class="search_button">
							<a class="searchBtn" href="${path}/resources/#"><i
								class="fa fa-search" aria-hidden="true"></i></a>
						</div>
						<!-- Search Form -->
						<div class="search-hidden-form">
							<form action="" method="get">
								<input type="search" name="search" id="search-anything"
									placeholder="Search Anything..."> <input type="submit"
									value="" class="d-none"> <span class="searchBtn"><i
									class="fa fa-times" aria-hidden="true"></i></span>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Top Header Area End ****** -->

	<!-- ****** Header Area Start ****** -->
	<header class="header_area">
		<div class="container">
			<div class="row">
				<!-- Logo Area Start -->
				<div class="col-12">
					<div class="logo_area text-center">
						<a href="${path}/resources/index.html" class="yummy-logo">PUDDING</a>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-12">
					<nav class="navbar navbar-expand-lg">
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#yummyfood-nav"
							aria-controls="yummyfood-nav" aria-expanded="false"
							aria-label="Toggle navigation">
							<i class="fa fa-bars" aria-hidden="true"></i> Menu
						</button>
						<!-- Menu Area Start -->
						<div class="collapse navbar-collapse justify-content-center"
							id="yummyfood-nav">
							<ul class="navbar-nav" id="yummy-nav">
								<li class="nav-item active"><a class="nav-link"
									href="Main.ms">Home <span
										class="sr-only">(current)</span></a></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="${path}/resources/#"
									id="yummyDropdown" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> Pudding chart</a>
									 <div class="dropdown-menu" aria-labelledby="yummyDropdown">
                                        <a class="dropdown-item" href="puddingmusic_chart.ms">노래 목록</a>
                                        <a class="dropdown-item" href="puddingmusic_heartchart.ms">좋아요순위</a>
                                        <a class="dropdown-item" href="puddingmusic_recountchart.ms">인기도순위</a>
                                    </div>
                                    </li>
								<li class="nav-item"><a class="nav-link" href="c_Djlist.ms">Pudding
										DJ</a></li>
								<li class="nav-item">                                   
								 <a class="nav-link" href="listcart.ms">Cart</a>
								</li>
								<li class="nav-item"><a class="nav-link"
									href="boarderList.bd">Boarder</a></li>
									<li class="nav-item"><a class="nav-link"
									href="C_QnA_list.ad">QnA</a></li>
								<li class="nav-item"><a class="nav-link" href="CNotice.ad">Notice</a>
							 	<c:if test="${loginInfo == null}">
                                <li class="nav-item">
                                    <a class="nav-link" href="loginForm.me">login</a>
                                </li>
                                </c:if>
                                <c:if test="${loginInfo != null}">
                                <li class="nav-item">
                                    <a class="nav-link" href="logout.jsp">logout</a>
                                </li>
                                </c:if>
                               
                                <li class="nav-item">
                                    <a class="nav-link" href="myPageList.me">마이페이지</a>
                                </li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- ****** Header Area End ****** -->

	<!-- ****** Welcome Post Area Start ****** -->
   <section class="welcome-post-sliders owl-carousel">

        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="${path}/resources/img/bg-img/slide-3.jpg" alt="">
            <!-- Overlay Text -->
     <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#">OCT	16, 2009</a>
                    <a href="#">하이라이트(비스트)</a>
                </div>
                <a href="${path}/resources/#">
                    <h5>'하이라이트' 관련 음악 듣기</h5>
                </a>
            </div>
        </div>
        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="${path}/resources/img/bg-img/slide-1.jpg" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#">SEP 18, 2008</a>
                    <a href="#">IU(이지은)</a>
                </div>
                <a href="${path}/resources/#">
                    <h5>'아이유' 관련 음악 듣기</h5>
                </a>
            </div>
        </div>



        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="${path}/resources/img/bg-img/slide-2.jpg" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#">JAN 20, 2014</a>
                    <a href="#">GOT7(갓세븐)</a>
                </div>
                <a href="${path}/resources/#">
                    <h5>'갓세븐' 관련 음악 듣기</h5>
                </a>
            </div>
        </div>
        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="${path}/resources/img/bg-img/slide-4.jpg" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#">OCT 19, 2015</a>
                    <a href="#">TWICE(트와이스)</a>
                </div>
                <a href="${path}/resources/#">
                    <h5>'트와이스' 관련 음악 듣기</h5>
                </a>
            </div>
        </div>

        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="${path}/resources/img/bg-img/slide-5.jpg" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#">AUG 30, 2013</a>
                    <a href="#">Ariana Grande(아리아나 그란데)</a>
                </div>
                <a href="${path}/resources/#">
                    <h5>'Ariana Grande' 관련 음악 듣기</h5>
                </a>
            </div>
        </div>

    </section>
    <!-- ****** Welcome Area End ****** -->

   <!-- ****** Categories Area Start ****** -->
    <section class="categories_area clearfix" id="about">
        <div class="container">
            <div class="row">
            <c:forEach items="${list }" varStatus="status" begin="0" step="1" end="2" var="lists">
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single_catagory wow fadeInUp" data-wow-delay=".3s">
						<img src="${path}/resources/img/catagory-img/${status.count}.jpg" alt="">
						<div class="catagory-title">
							<a href="C_dj_C.ms?dj_no=${lists.dj_no}">
								<h5>${lists.dj_code }</h5>
							</a>
						</div>
					</div>
				</div>
				</c:forEach>
			
            </div>
               <a href="c_Djlist.ms" class="read-more" style="padding-left: 1060px;">MORE</a>
        </div>
    </section>
    <!-- ****** Categories Area End ****** -->

    <!-- ****** Blog Area Start ****** -->
    <section class="blog_area section_padding_0_80">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-8">
                    <div class="row">
    <!-- ****** Blog Area Start ****** -->

                     <div class="col-12">
                            <div class="single-post wow fadeInUp" data-wow-delay=".2s">
                                <!-- Post Thumb -->
                                <div class="post-thumb" >
                                    <img style="border: 1px solid gray;" src="${path}/resources/img/blog-img/1.png" alt="장범준 사진">
                                </div>
                                <!-- Post Content -->
                                <div class="post-content">
                                    <div class="post-meta d-flex">
                                        <div class="post-author-date-area d-flex">
                                            <!-- Post Author -->
                                            <div class="post-author">
                                                <a href="${path}/resources/#">By 장범준</a>
                                            </div>
                                            <div class="post-date">
                                                <a href="${path}/resources/#">May 24, 2016</a>
                                            </div>
                                        </div>
                                        <!-- Post Comment & Share Area -->
                                        <div class="post-comment-share-area d-flex">
                                            <!-- Post Favourite -->
                                            <!-- Post Share -->
                                        </div>
                                    </div>
                                    <a href="${path}/resources/#">
                                       
                                       <a href="pudding_chartcontent.ms?mno=100"> <h2 class="post-headline">장범준 2집 [봄비]</h2>
                                    </a>
                                    <p>
                                 <font size="2" >‘장범준 트리오’ CD는 기타리프와 드럼, 베이스 기반의 심플한 음악으로 녹음 당시 메트로놈(클릭) 없이 러프하고 라이브스러운 느낌으로 녹음했습니다. 
                                    끊어서 녹음하지 않고 기타, 드럼, 베이스, 보컬까지 최대한 한 호흡으로 갈 수 있도록 녹음했습니다. 덕분에 지금까지 했던 어떤 녹음보다도 즐거운 마음을 가지고 작업을 할 수 있었습니다.</font>   
</p>
                                </div>
                            </div>
                        </div>




							<c:forEach items="${listrecount }"  begin="0" step="1" end="3"  var="recount">

                        <!-- Single Post -->
                        <div class="col-12 col-md-6">
                            <div class="single-post wow fadeInUp" data-wow-delay="1s">
                                <!-- Post Thumb -->
                                <div class="post-thumb">
                                    <img src="<%=request.getContextPath() %>/resources/imgs/${recount.music_image}" alt="앨범이미지">
                                </div>
                                <!-- Post Content -->
                                <div class="post-content">
                                    <div class="post-meta d-flex">
                                        <div class="post-author-date-area d-flex">
                                            <!-- Post Author -->
                                            <div class="post-author">
                                              ${recount.music_ganre } || 
                                            </div>
                                            <!-- Post Date -->
                                            <div class="post-date">
                                                &nbsp;${recount.music_date }
                                            </div>
                                        </div>
                                        <!-- Post Comment & Share Area -->
                                        <div class="post-comment-share-area d-flex">
                                            <!-- Post Favourite -->
                                            <div class="post-favourite">
                                                <a href="${path}/resources/#"><i class="fa fa-heart-o" aria-hidden="true"></i> ${recount.music_heart }</a>
                                            </div>
                                            <!-- Post Comments -->
                                            <!-- Post Share -->
                                        </div>
                                    </div>
                                    <a href="pudding_chartcontent.ms?mno=${recount.mno }">
                                        <h4 class="post-headline">${recount.music_title }-${recount.music_singer }</h4>
                                    </a>
                                </div>
                            </div>
                        </div>

</c:forEach>

                        <!-- ******* List Blog Area Start ******* -->
                        <!-- Single Post -->
                        <!-- Single Post -->
                        <!-- Single Post -->

                        <!-- Single Post -->
                    </div>
                </div>

                <!-- ****** Blog Sidebar ****** -->
                <div class="col-12 col-sm-8 col-md-6 col-lg-4">
                    <div class="blog-sidebar mt-5 mt-lg-0">
                        <!-- Single Widget Area -->
                        <div class="single-widget-area about-me-widget text-center">
                            <div class="widget-title">
                                <h6>PUDDING CHART</h6>
                            </div>

                            <h4 class="font-shadow-into-light">LIKE TOP 10</h4>
                           <table border="1" align="center" >
							<tr>								
								<td >앨범</td>
								<td  colspan="2">제목 - 가수</td>								
								<td >장바구니</td>
								<td > ♡</td>																
							</tr>												
					
							<c:forEach items="${listheart }"   begin="0" step="1" end="9" var="heart">
		<tr>						
			<td   align="center" width="">
			<a href="pudding_chartcontent.ms?mno=${heart.mno }">
			<img alt="앨범이미지" width="100px"
                           height="100px"
                           src="<%=request.getContextPath() %>/resources/imgs/${heart.music_image}"></a>
				</td>
			
			<td align="center" colspan="2">
				${heart.music_title } - ${heart.music_singer }
			</td>									
			<td align="center">
				<a href="addcart.ms?mno=${heart.mno}">장바구니</a>
			</td>
			<td align="center">
			 <a href="mainheart.ms?musicheart=${heart.music_heart }&mno=${heart.mno}">♡${heart.music_heart }</a>
			</td>						
		</tr> 
	</c:forEach>
	</table>
                        </div> <br>

                        <!-- Single Widget Area -->
                        <div class="single-widget-area subscribe_widget text-center">
                            <div class="widget-title text-center">
                                <h6>PUDDING CHART</h6>
                            </div>
                            
                            <h4 class="font-shadow-into-light">READE TOP 10</h4>
                            <table border="1" align="center">
							<tr>								
								<td >앨범</td>
								<td  colspan="2">제목 - 가수</td>								
								<td >장바구니</td>
								<td > 조회수</td>
								<!-- <td> 재생하기 </td>		 -->																											
							</tr>												
					
							<c:forEach items="${listrecount }"  begin="0" step="1" end="9"  var="recount">
		<tr>						
			<td   align="center" width=""><a href="pudding_chartcontent.ms?mno=${recount.mno }"><img alt="앨범이미지" 
                           height="100px"
                           src="<%=request.getContextPath() %>/resources/imgs/${recount.music_image}"></a>
				</td>
			
			<td align="center" colspan="2">
				${recount.music_title } - ${recount.music_singer }
			</td>									
			<td align="center">
				<a href="addcart.ms?mno=${recount.mno}">장바구니</a>
			</td>
			<td align="center">
			${recount.music_recount }
			</td>				
			<%-- <td align="center" colspan="5"><audio autoplay="autoplay"
										controls="controls"
										src="<%=request.getContextPath() %>/resources/song/${recount.music_song}"></audio>
			
			</td>	 --%>	 
		</tr> 
	</c:forEach>
	</table> <br>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ****** Blog Area End ****** -->

    <!-- ****** Instagram Area Start ****** -->
    <div class="instargram_area owl-carousel section_padding_100_0 clearfix" id="portfolio">

							<c:forEach items="${listheart }" var="heart">
        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="<%=request.getContextPath() %>/resources/imgs/${heart.music_image}" alt="앨범사진">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="pudding_chartcontent.ms?mno=${heart.mno }"><i class="fa fa-instagram" aria-hidden="true"></i> ${heart.music_title}</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</c:forEach>

      

    </div>

    <!-- ****** Footer Menu Area Start ****** -->
    <footer class="footer_area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="footer-content">
                        <!-- Logo Area Start -->
                        <div class="footer-logo-area text-center">
                            <a href="${path}/resources/index.html" class="yummy-logo">PUDDING</a>
                        </div>
                        <!-- Menu Area Start -->
                        <nav class="navbar navbar-expand-lg">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#yummyfood-footer-nav" aria-controls="yummyfood-footer-nav" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars" aria-hidden="true"></i> Menu</button>
                            <!-- Menu Area Start -->
                            <div class="collapse navbar-collapse justify-content-center" id="yummyfood-footer-nav">
                           <ul class="navbar-nav" id="yummy-nav">
								<li class="nav-item active"><a class="nav-link"
									href="Main.ms">Home <span
										class="sr-only">(current)</span></a></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="${path}/resources/#"
									id="yummyDropdown" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> Pudding chart</a>
									 <div class="dropdown-menu" aria-labelledby="yummyDropdown">
                                        <a class="dropdown-item" href="puddingmusic_chart.ms">노래 목록</a>
                                        <a class="dropdown-item" href="puddingmusic_heartchart.ms">좋아요순위</a>
                                        <a class="dropdown-item" href="puddingmusic_recountchart.ms">인기도순위</a>
                                    </div>
                                    </li>
								<li class="nav-item"><a class="nav-link" href="c_Djlist.ms">Pudding
										DJ</a></li>
								<li class="nav-item">                                   
								 <a class="nav-link" href="listcart.ms">Cart</a>
								</li>
								<li class="nav-item"><a class="nav-link"
									href="boarderList.bd">Boarder</a></li>
								<li class="nav-item"><a class="nav-link"
									href="C_QnA_list.ad">QnA</a></li>
								<li class="nav-item"><a class="nav-link" href="CNotice.ad">Notice</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="#"
									onclick="window.open('loginForm.me','window팝업','width=570, height=240, menubar=no, status=no, toolbar=no');">login</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="admin.ad">관리자페이지</a>
								</li>
							</ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Copywrite Text -->
                    <div class="copy_right_text text-center">
                        <p>Copyright @2018 All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="${path}/resources/https://colorlib.com" target="_blank">Colorlib</a></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- ****** Footer Menu Area End ****** -->

    <!-- Jquery-2.2.4 js -->
    <script src="${path}/resources/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="${path}/resources/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap-4 js -->
    <script src="${path}/resources/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins JS -->
    <script src="${path}/resources/js/others/plugins.js"></script>
    <!-- Active JS -->
    <script src="${path}/resources/js/active.js"></script>
</body>
