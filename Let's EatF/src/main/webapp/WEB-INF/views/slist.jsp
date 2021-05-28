<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>렛츠잇 | 검색하기</title>
<link rel="shortcut icon" href="resources/img/레츠잇 파비콘.ico">
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/style.css" type="text/css">
    <!-- 스타일 -->
    <style>
        .maintxt{
           color: #000000; 
           
        }
       
    </style>

</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__option">
            <div class="offcanvas__links">
                <a href="#">회원가입</a>
                <a href="#">자주 묻는 질문</a>
            </div>
            <div class="offcanvas__top__hover">
                
            </div>
        </div>
       
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__text">
            <p></p>
        </div>
    </div>
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-7">
                        <div class="header__top__left">
                            <p></p>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-5">
                        <div class="header__top__right">
                            <div class="header__top__links">
                               <c:if test="${not empty sessionScope.mloginId}">
                                <a href="#">${sessionScope.mloginName} 님 환영합니다!</a>
                                
                           </c:if>
                           <c:if test="${not empty sessionScope.cloginId}">
                                <a href="#">${sessionScope.cloginName} 님 환영합니다!</a>
                                
                           </c:if>
                           <a href="#">사이트맵</a>
                            </div>


                            
                            <div class="header__top__hover">
                              
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-2">
                    <div class="header__logo">
                        <a href="./index.html"><img src="resources/img/logo_1.png" alt=""></a>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4">
                    <div class="header__nav__option">
                        <a href="#" class="search-switch"><img src="" alt=""></a>
                        <a href="#"><img src="" alt=""></a>
                        <a href="#"><img src="" alt=""> <span></span></a>
                        <div class="price"></div>
                    </div>
                </div>

                 <div class="col-lg-6 col-md-6">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li class="active"><a href="index">홈</a></li>
                            <c:if test="${empty sessionScope}">
                            <li><a href="#">로그인</a>
                                <ul class="dropdown">
                                    <li><a href="mloginp">일반 로그인</a></li>
                                    <li><a href="cloginp">점주 로그인</a></li>

                                </ul>
                            </li>
                            
                            <li><a href="#">회원가입</a>
                                <ul class="dropdown">
                                    <li><a href="login">일반회원가입</a></li>
                                    <li><a href="./shop-details.jsp">점주회원가입</a></li>

                                </ul>
                            </li>
                            </c:if>
                            <c:if test="${not empty sessionScope.mloginId}">
                            <li><a href="#">마이페이지</a>
                                <ul class="dropdown">
                                    <li><a href="./search.jsp">회원정보</a></li>
                                    <li><a href="./search.jsp">예약</a></li>
                                    <li><a href="./search.jsp">리뷰</a></li>
                                    <li><a href="./checkout.jsp">찜</a></li>
                                    <li><a href="./checkout.jsp">포인트 충전</a></li>
                                    <li><a href="./checkout.jsp">나의 문의</a></li>
                                </ul>
                            </li>
                            <li><a href="logout">로그아웃</a>
                            </li>
                            </c:if>
                            <c:if test="${not empty sessionScope.cloginId}">
                            <li><a href="#">업체 관리</a>
                                <ul class="dropdown">
                                    <li><a href="./search.jsp">회원정보</a></li>
                                    <li><a href="./search.jsp">업체 관리</a></li>
                                    <li><a href="upform">업체 등록</a></li>
                                    <li><a href="./checkout.jsp">나의 문의</a></li>
                                </ul>
                            </li>
                            <li><a href="logout">로그아웃</a>
                            </li>
                            </c:if>
                            <li><a href="./contact.jsp">문의사항</a></li>
                        </ul>
                    </nav>
                </div>

            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </header>
    <!-- Header Section End -->


    <!-- 중앙 메뉴 바 카테고리 -->
    <section class="mid_menu_bar">
        <div class="container">
        <div class= "row">
            <div class="col-sm-offset-3 col-sm-7 col-md-offset-0 col-md-1"></div>
            <div class="col-md-10">
                <nav class="header__menu mobile-menu">
                    <ul>
                        
                        <li><a href="#">지역</a>
                            <ul class="dropdown">
                                <li><a href="./about.html">서울</a></li>
                                <li><a href="./shop-details.html">경기</a></li>
                                <li><a href="./shopping-cart.html">인천</a></li>
                                <li><a href="./checkout.html">강원</a></li>
                            </ul>
                        </li>
                        <li><a href="#">카테고리</a>
                            <ul class="dropdown">
                                <li><a href="./about.html">식당</a></li>
                                <li><a href="./shop-details.html">카페</a></li>
                                <li><a href="./shopping-cart.html">기타</a></li>
                            </ul>
                        </li>
                        <li class="search_main">
                                <input type="text" placeholder="검색" class= "search_main_input">
                                <button class="search_main_button">검색</button>
                        </li>
                    </ul>
                </nav>

            </div>
            <div class="col-md-1"></div>
        </div>
        </div>
    </section>

    <section class="blog spad">
        <div class="container">
            <div class="row">
            
                <c:forEach var="slist" items="${slist}" varStatus="status">
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="resources/fileUpload/${slist.sFileName1}" ></div>
                        <div class="blog__item__text">
                            <span> ★★★★☆</span>
                            <h5>${slist.sName}</h5>
                            
                            <c:if test="${not empty sessionScope.mloginCode}">
                            <a href="storeView?storeCode=${slist.storeCode}&mCode=${sessionScope.mloginCode}">상세보기</a>
                            </c:if>
                            <c:if test="${not empty sessionScope.cloginCode}">
                            <a href="storeView?storeCode=${slist.storeCode}&mCode=${sessionScope.cloginCode}">상세보기</a>
                            </c:if>
                            <c:if test="${empty sessionScope}">
                            <a href="storeView?storeCode=${slist.storeCode}&mCode=${sessionScope.cloginCode}">상세보기</a>
                            </c:if>
                        </div>
                    </div>
                </div>
                </c:forEach>
                
                
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="resources/img/blog/shakeshack.jpg"></div>
                        <div class="blog__item__text">
                            <span> ★★★☆☆</span>
                            <h5>쉑쉑버거 송도점</h5>
                            <a href="#">상세보기</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="resources/img/blog/lotteria.png"></div>
                        <div class="blog__item__text">
                            <span>★★☆☆☆</span>
                            <h5>롯데리아 인천학익점</h5>
                            <a href="#">상세보기</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="resources/img/blog/mcdonald.jpg"></div>
                        <div class="blog__item__text">
                            <span>★★★☆☆ </span>
                            <h5>맥도날드 문학DT점</h5>
                            <a href="#">상세보기</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="resources/img/blog/moms.jpg"></div>
                        <div class="blog__item__text">
                            <span>★★★☆☆</span>
                            <h5>맘스터치 학익동점</h5>
                            <a href="#">상세보기</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic set-bg" data-setbg="resources/img/blog/kfc.jpg"></div>
                        <div class="blog__item__text">
                            <span>★★★☆☆</span>
                            <h5>KFC 인하대점</h5>
                            <a href="#">상세보기</a>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
    <br><br><br><br><br><br>


   

    <!-- Footer Section Begin -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__logo">
                            <a href="#"><img src="resources/img/footer_1.png" alt=""></a>
                        </div>
                        <p>카카오페이 가맹업체</p>
                        <a href="#"><img src="resources/img/icon/kpay.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
                    <div class="footer__widget">
                        <h6></h6>
                        <ul>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6">
                    <div class="footer__widget">
                        <h6></h6>
                        <ul>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1 col-md-6 col-sm-6">
                    <div class="footer__widget">
                        <h6>고객센터</h6>
                        <div class="footer__newslatter">
                            <p>문의사항이 있으면 고객센터로 문의 하세요. 
                            <br><br>tel)02-0000-0000</p>
                            <form action="#">
                                <!-- <input type="text" placeholder="Your email">
                                <button type="submit"><span class="icon_mail_alt"></span></button> -->
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="footer__copyright__text">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <p>Copyright ©
                            <script>
                                document.write(new Date().getFullYear());
                            </script>
                            All rights reserved |team1 final project
                        </p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Search Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch">+</div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search End -->

    <!-- Js Plugins -->
    <script src="resources/js/jquery-3.3.1.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.nice-select.min.js"></script>
    <script src="resources/js/jquery.nicescroll.min.js"></script>
    <script src="resources/js/jquery.magnific-popup.min.js"></script>
    <script src="resources/js/jquery.countdown.min.js"></script>
    <script src="resources/js/jquery.slicknav.js"></script>
    <script src="resources/js/mixitup.min.js"></script>
    <script src="resources/js/owl.carousel.min.js"></script>
    <script src="resources/js/main.js"></script>
</body>

</html>