<%--
  Created by IntelliJ IDEA.
  User: edona
  Date: 25.02.2019
  Time: 17:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<!-- Copied from http://pluginspoint.com/demo/i-finger-preview/05_film-town/index.html by Cyotek WebCopy 1.6.0.559, 25 февраля 2019 г., 12:50:12 -->

<head>
    <!--- Basic Page Needs  -->
    <meta charset="utf-8">
    <title>Vzgo's Theater || Movie</title>
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Mobile Specific Meta  -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- CSS -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/jquery-ui.css">
    <link rel="stylesheet" href="/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/css/animate.css">
    <link rel="stylesheet" href="/css/plyr.css">
    <link rel="stylesheet" href="/css/magnific-popup.css">
    <link rel="stylesheet" href="/css/slicknav.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/responsive.css">
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
<!-- slider-area-start -->
<div class="slider-area slider-carousel owl-carousel">
    <div class="slider-box">
        <div class="img">
            <img src="img/home1/slider-1.jpeg" alt="">
        </div>
        <div class="content">
            <div class="sb-content-box">
                <h3 class="intro animated">Welcome to</h3>
                <h2 class="title animated">Vzgo's Movie Theatre</h2>
                <p class="text animated d-none d-md-block">There are many variations of passages of Lorem Ipsum available but the majority have suffered alteration
                    in some form by injected humour.</p>
                <div class="buttons">
                    <a class="button hvr-bs animated" href="#">Read More</a>
                </div>
            </div>
        </div>
    </div>
    <div class="slider-box">
        <div class="img">
            <img src="img/home1/slider-2.jpeg" alt="">
        </div>
        <div class="content">
            <div class="sb-content-box">
                <h3 class="intro animated">The Best Theater</h3>
                <h2 class="title animated">EVER made!</h2>
                <p class="text animated d-none d-md-block">There are many variations of passages of Lorem Ipsum available but the majority have suffered alteration
                    in some form by injected humour.</p>
                <div class="buttons">
                    <a class="button hvr-bs animated" href="#">Read More</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- slider-area-end -->
<!-- top-movie-area-start -->
<%--<div class="top-movie-area">--%>
    <%--<div class="container">--%>
        <%--<div class="top-movie-carousel owl-carousel">--%>
            <%--<c:forEach items="${movies}" var="movie">--%>
            <%--<div class="single-top-movie">--%>
                <%--<div class="img">--%>
                    <%--<a href="04_movie-details.html">--%>
                        <%--<img src="/getImage?picName=${movie.picUrl}" alt="">--%>
                    <%--</a>--%>
                <%--</div>--%>
                <%--<span class="view-counter">115k Views</span>--%>
                <%--<a class="popup-youtube" href="https://www.youtube.com/watch?v=6ZfuNTqbHE8">--%>
                    <%--<i class="far fa-play-circle"></i>--%>
                <%--</a>--%>
                <%--<div class="content">--%>
                    <%--<h2 class="name">--%>
                        <%--<a href="04_movie-details.html">${movie.title}</a>--%>
                    <%--</h2>--%>
                    <%--<div class="rating clearfix">--%>
                        <%--<div class="star star-on"></div>--%>
                        <%--<div class="star star-on"></div>--%>
                        <%--<div class="star star-on"></div>--%>
                        <%--<div class="star star-on"></div>--%>
                        <%--<div class="star star-half"></div>--%>
                    <%--</div>--%>
                    <%--<p class="date">${movie.year}</p>--%>
                    <%--<p class="duration">02 :50 :12</p>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--</c:forEach>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>
<!-- top-movie-area-end -->

<!-- movie-tab-area-start -->
<div class="movie-tab-area">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="movie-tab">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="lmovie-tab" data-toggle="tab" href="#lmovie" role="tab" aria-controls="lmovie" aria-selected="true">Letest Movies</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane show active" id="lmovie" role="tabpanel" aria-labelledby="lmovie-tab">
                            <div class="tab-carousel owl-carousel">
                                <c:forEach items="${movies}" var="movie">
                                <div class="single-top-movie">
                                    <div class="img">
                                        <a href="/movieDetail?movId=${movie.id}">
                                            <img src="/getImage?picName=${movie.picUrl}" alt="">
                                        </a>
                                    </div>
                                    <span class="view-counter">999k Views</span>
                                    <%--<a class="popup-youtube" href="https://www.youtube.com/watch?v=6ZfuNTqbHE8">--%>
                                        <%--<i class="far fa-play-circle"></i>--%>
                                    <%--</a>--%>
                                    <div class="content">
                                        <h2 class="name">
                                            <a href="/movieDetail?movId=${movie.id}">${movie.title}</a>
                                        </h2>
                                        <div class="rating clearfix">
                                            <div class="star star-on"></div>
                                            <div class="star star-on"></div>
                                            <div class="star star-on"></div>
                                            <div class="star star-on"></div>
                                            <div class="star star-half"></div>
                                        </div>
                                        <p class="date">${movie.description}</p>
                                        <p class="duration">02 :50 :12</p>
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
<!-- movie-tab-area-end -->
<!-- coming-area-start -->
<div class="coming-area">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="coming">
                    <img src="img/home1/lion.jpg" height="200" alt="Lion">
                    <h3 class="title">Coming Soon</h3>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- coming-area-end -->
<!-- newsletter-area-start -->
<div class="newsletter-area bg-with-ebony">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 offset-lg-2 col-12">
                <div class="newsletter">
                    <h2 class="title">Newsletter</h2>
                    <p class="text">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration
                        in some form cted humour or randomised words.</p>
                    <form action="#">
                        <div class="newsleter-input-box">
                            <input type="text" placeholder="Enter your email.......">
                            <button>
                                <i class="far fa-paper-plane"></i>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- newsletter-area-end -->
<!-- news-area-start -->
<div class="news-area">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title">
                    <h2>Letest News</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-7 col-md-12 col-sm-12 col-12">
                <div class="feature-news">
                    <div class="single-news">
                        <div class="img">
                            <img src="img/home1/latest-news-b-1.jpeg" alt="">
                        </div>
                        <div class="content">
                            <span class="date">October-17-2017</span>
                            <h2 class="title">
                                <a href="#">Jecu Jek English Horor Movie Lorem Ipsum is there fore always free from.</a>
                            </h2>
                            <p class="text">Pellentesque imperdiet sagittis est, vitae consectetur enim feugiat quis. Nunc purus eros,
                                feugiat at enim sit amet, dictum maximus nisl. In vitae lorem vitae mauris vestibulum
                                venenatis eget a urna. Etiam vehicula lorem.</p>
                            <div class="meta-more">
                                <a class="more" href="#">Read More</a>
                                <ul class="meta">
                                    <li>
                                            <span>
                                                <i class="far fa-user"></i>
                                            </span> By Admin</li>
                                    <li>
                                            <span>
                                                <i class="far fa-comments"></i>
                                            </span> Comments</li>
                                    <li>
                                            <span>
                                                <i class="fas fa-share-alt"></i>
                                            </span> Share</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5 col-md-12 col-sm-12 col-12">
                <div class="news-carousel owl-carousel">
                    <div class="all-small-news">
                        <div class="single-news">
                            <div class="img">
                                <img src="img/home1/latest-news-s-1.jpeg" alt="">
                            </div>
                            <div class="content">
                                <h2 class="title">
                                    <a href="#">Jecu Jek English Horor Movie Lorem fore always free from.</a>
                                </h2>
                                <div class="meta-more">
                                    <a class="more" href="#">Read More</a>
                                    <ul class="meta">
                                        <li>
                                                <span>
                                                    <i class="far fa-user"></i>
                                                </span> By Admin</li>
                                        <li>
                                                <span>
                                                    <i class="far fa-comments"></i>
                                                </span> Comments</li>
                                        <li>
                                                <span>
                                                    <i class="fas fa-share-alt"></i>
                                                </span> Share</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single-news">
                            <div class="img">
                                <img src="img/home1/latest-news-s-2.jpeg" alt="">
                            </div>
                            <div class="content">
                                <h2 class="title">
                                    <a href="#">Jecu Jek English Horor Movie Lorem fore always free from.</a>
                                </h2>
                                <div class="meta-more">
                                    <a class="more" href="#">Read More</a>
                                    <ul class="meta">
                                        <li>
                                                <span>
                                                    <i class="far fa-user"></i>
                                                </span> By Admin</li>
                                        <li>
                                                <span>
                                                    <i class="far fa-comments"></i>
                                                </span> Comments</li>
                                        <li>
                                                <span>
                                                    <i class="fas fa-share-alt"></i>
                                                </span> Share</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="all-small-news">
                        <div class="single-news">
                            <div class="img">
                                <img src="img/home1/latest-news-s-1.jpeg" alt="">
                            </div>
                            <div class="content">
                                <h2 class="title">
                                    <a href="#">Jecu Jek English Horor Movie Lorem fore always free from.</a>
                                </h2>
                                <div class="meta-more">
                                    <a class="more" href="#">Read More</a>
                                    <ul class="meta">
                                        <li>
                                                <span>
                                                    <i class="far fa-user"></i>
                                                </span> By Admin</li>
                                        <li>
                                                <span>
                                                    <i class="far fa-comments"></i>
                                                </span> Comments</li>
                                        <li>
                                                <span>
                                                    <i class="fas fa-share-alt"></i>
                                                </span> Share</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="single-news">
                            <div class="img">
                                <img src="img/home1/latest-news-s-2.jpeg" alt="">
                            </div>
                            <div class="content">
                                <h2 class="title">
                                    <a href="#">Jecu Jek English Horor Movie Lorem fore always free from.</a>
                                </h2>
                                <div class="meta-more">
                                    <a class="more" href="#">Read More</a>
                                    <ul class="meta">
                                        <li>
                                                <span>
                                                    <i class="far fa-user"></i>
                                                </span> By Admin</li>
                                        <li>
                                                <span>
                                                    <i class="far fa-comments"></i>
                                                </span> Comments</li>
                                        <li>
                                                <span>
                                                    <i class="fas fa-share-alt"></i>
                                                </span> Share</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- news-area-end -->
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
                                    </span> savaProject@gmail.com</li>
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
                            <a href="#">@SavaProject</a> . All Rights Reserved.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- footer-end -->
<!-- Scripts -->
<script src="/js/jquery-3.2.0.min.js"></script>
<script src="/js/jquery-ui.js"></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/jquery.counterup.min.js"></script>
<script src="/js/countdown.js"></script>
<script src="/js/parallax.js"></script>
<script src="/js/amplitude.js"></script>
<script src="/js/plyr.js"></script>
<script src="/js/jquery.slimscroll.min.js"></script>
<script src="/js/jquery.magnific-popup.min.js"></script>
<script src="/js/jquery.slicknav.min.js"></script>
<script src="/js/jquery.scrollUp.js"></script>
<script src="/js/jquery.mixitup.min.js"></script>
<script src="/js/jquery.waypoints.min.js"></script>
<script src="/js/popper.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/theme.js"></script>
</body>

<!-- Copied from http://pluginspoint.com/demo/i-finger-preview/05_film-town/index.html by Cyotek WebCopy 1.6.0.559, 25 февраля 2019 г., 12:50:12 -->
</html>