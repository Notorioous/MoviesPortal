<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<!-- Copied from http://pluginspoint.com/demo/i-finger-preview/05_film-town/05_feature-movie-grid.html by Cyotek WebCopy 1.6.0.559, 25 февраля 2019 г., 12:50:12 -->

<head>
    <!--- Basic Page Needs  -->
    <meta charset="utf-8">
    <title>All Movies || Movie</title>
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Mobile Specific Meta  -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/fontawesome-all.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/plyr.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/slicknav.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/png" href="img/favicon.ico">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div id="preloader"></div>
<!-- header-start -->
<header>
    <div class="header-top-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-3 col-sm-12 col-12">
                    <div class="logo">
                        <a href="index.jsp">
                            <img src="img/home1/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-8 col-md-7 col-sm-12 col-12">
                    <div class="responsive-menu d-lg-none"></div>
                    <div class="menu d-none d-lg-block">
                        <nav>
                            <ul id="menu">
                                <li>
                                    <a href="index.jsp">Home</a>
                                </li>
                                <li>
                                    <a href="/about">About</a>
                                </li>
                                <li>
                                    <a href="/allMovies">All Movies</a>
                                </li>
                                <li class="mega">
                                    <a href="#">Genres</a>
                                    <ul class="mega-menu">
                                        <li>
                                            <ul>
                                                <c:forEach items="${genres}" var="genre">
                                                    <li>
                                                        <a href="/getMovieByCat?id=${genre.id}">${genre.name}</a>
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-12 col-12">
                    <div class="account">
                        <a href="/login.jsp">
                                <span>
                                    <i class="far fa-user"></i>
                                </span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-4 col-sm-12 col-12">
                </div>
                <div class="col-lg-9 col-md-8 col-sm-12 col-12">
                    <div class="search-signup">
                        <div class="search">
                            <form action="#">
                                <div class="search-input-box">
                                    <select>
                                        <option>Movie</option>
                                        <option>Serial</option>
                                        <option>Drama</option>
                                        <option>Bla</option>
                                        <option>Bla</option>
                                        <option>Bla</option>
                                        <option>Bla</option>
                                        <option>Bla</option>
                                        <option>Bla</option>
                                    </select>
                                    <input type="text">
                                    <button>
                                        <i class="fas fa-search"></i>
                                    </button>
                                </div>
                            </form>
                        </div>
                        <div class="signup">
                            <a href="#">Sign up</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- header-start -->
<!-- other-page-breadcumb-area-start -->
<div class="other-page-breadcumb-area bg-with-ebony">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-md-9 col-sm-9 col-12">
                <div class="op-breadcumb">
                    <ul>
                        <li>
                            <a href="index.jsp">
                                    <span>
                                        <i class="fa fa-home" aria-hidden="true"></i>
                                    </span>Home</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-3 col-12">
            </div>
        </div>
    </div>
</div>
<!-- other-page-breadcumb-area-end -->
<!-- feature-movie-area-start -->
<div class="feature-movie-area">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="grid-menu d-flex justify-content-between">
                    <div class="tab">
                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#grid" role="tab" aria-selected="true">
                                    <i class="fa fa-th-large"></i>
                                </a>
                                <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#list" role="tab" aria-selected="false">
                                    <i class="fa fa-list-ul"></i>
                                </a>
                            </div>
                        </nav>
                    </div>
                    <div class="pages">
                        <ul>
                            <li>
                                <a href="#">
                                    <i class="fa fa-angle-left" aria-hidden="true"></i>
                                </a>
                            </li>
                            <li>
                                <a class="active" href="#">1</a>
                            </li>
                            <li>
                                <a href="#">2</a>
                            </li>
                            <li>
                                <a href="#">3</a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-angle-right" aria-hidden="true"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="grid" role="tabpanel">
                        <div class="grid-movies">
                            <div class="row">
                               <c:forEach items="${allMovies}" var="mov">
                                <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                                    <div class="single-top-movie">
                                        <div class="img">
                                            <a href="#">
                                                <img src="/getImage?picName=${mov.picUrl}" alt="">
                                            </a>
                                        </div>
                                        <span class="view-counter">999k Views</span>
                                        <div class="content">
                                            <h2 class="name">
                                                <a href="/movieDetail?movId=${mov.id}">${mov.title}</a>
                                            </h2>
                                            <div class="rating clearfix">
                                                <div class="star star-on"></div>
                                                <div class="star star-on"></div>
                                                <div class="star star-on"></div>
                                                <div class="star star-on"></div>
                                                <div class="star star-half"></div>
                                            </div>
                                            <p class="date">${mov.year}</p>
                                            <p class="duration">02 :50 :12</p>
                                        </div>
                                    </div>
                                </div>
                               </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- feature-movie-area-end -->
<!-- footer-start -->
<footer>
    <div class="footer-top-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                    <div class="fw-info footer-widget">
                        <div class="flogo">
                            <img src="img/home1/logo2.png" alt="">
                        </div>
                        <p class="text">Lorem Ipsum is simply dummy text of the printing and typesetting.Lorem Ipsum is simply dummy
                            text of the print.</p>
                        <ul class="address">
                            <li>
                                    <span>
                                        <i class="fas fa-map-marker-alt"></i>
                                    </span> Armenia</li>
                            <li>
                                    <span>
                                        <i class="fas fa-phone"></i>
                                    </span> +(999) 99999999</li>
                            <li>
                                    <span>
                                        <i class="far fa-envelope"></i>
                                    </span> i-finger.education@gmail.com</li>
                        </ul>
                        <ul class="social">
                            <li>
                                <a href="#" target="_blank">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" target="_blank">
                                    <i class="fab fa-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" target="_blank">
                                    <i class="fab fa-pinterest-p"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" target="_blank">
                                    <i class="fab fa-youtube"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" target="_blank">
                                    <i class="fab fa-vimeo-v"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                    <div class="fw-list footer-widget">
                        <h4 class="title">Movies Category</h4>
                        <ul class="list">
                            <li>
                                <a href="#">About Us</a>
                            </li>
                            <li>
                                <a href="#">Popular Courses</a>
                            </li>
                            <li>
                                <a href="#">Forums</a>
                            </li>
                            <li>
                                <a href="#">Place</a>
                            </li>
                            <li>
                                <a href="#">Our Teachers</a>
                            </li>
                            <li>
                                <a href="#">Upcoming Events</a>
                            </li>
                            <li>
                                <a href="#">Contact Us</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                    <div class="fw-list footer-widget">
                        <h4 class="title">Resources</h4>
                        <ul class="list">
                            <li>
                                <a href="#">About Block Buster</a>
                            </li>
                            <li>
                                <a href="#">Security</a>
                            </li>
                            <li>
                                <a href="#">Blog</a>
                            </li>
                            <li>
                                <a href="#">Help Center</a>
                            </li>
                            <li>
                                <a href="#">Terms of Use</a>
                            </li>
                            <li>
                                <a href="#">Privacy Policy</a>
                            </li>
                            <li>
                                <a href="#">Movie Collections</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                    <div class="fw-twitter footer-widget">
                        <h4 class="title">Twitter</h4>
                        <ul class="tweet-feed">
                            <li>
                                <h6 class="name">
                                        <span class="icon">
                                            <i class="fab fa-twitter"></i>
                                        </span> @ifinger.
                                    <span>movie</span>
                                </h6>
                                <p class="text">Lorem Ipsum is simply dummy text printing and typesetting.</p>
                            </li>
                            <li>
                                <h6 class="name">
                                        <span class="icon">
                                            <i class="fab fa-twitter"></i>
                                        </span> @ifinger.
                                    <span>movie</span>
                                </h6>
                                <p class="text">Lorem Ipsum is simply dummy text printing and typesetting.</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                    <div class="fba-left">
                        <ul class="links">
                            <li>
                                <a href="#">Home</a>
                            </li>
                            <li>
                                <a href="#">Movie Layout</a>
                            </li>
                            <li>
                                <a href="#">Celebrities</a>
                            </li>
                            <li>
                                <a href="#">News</a>
                            </li>
                            <li>
                                <a href="#">Contacts</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                    <div class="fba-right">
                        <p class="copyright">CopyRight© 2018 Design by
                            <a href="#">SavaProject</a> . All Rights Reserved.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- footer-end -->
<!-- Scripts -->
<script src="js/jquery-3.2.0.min.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.counterup.min.js"></script>
<script src="js/countdown.js"></script>
<script src="js/parallax.js"></script>
<script src="js/amplitude.js"></script>
<script src="js/plyr.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.slicknav.min.js"></script>
<script src="js/jquery.scrollUp.js"></script>
<script src="js/jquery.mixitup.min.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/theme.js"></script>
</body>

<!-- Copied from http://pluginspoint.com/demo/i-finger-preview/05_film-town/05_feature-movie-grid.html by Cyotek WebCopy 1.6.0.559, 25 февраля 2019 г., 12:50:12 -->
</html>