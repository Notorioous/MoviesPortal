<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<!-- Copied from http://pluginspoint.com/demo/i-finger-preview/05_film-town/09_about.html by Cyotek WebCopy 1.6.0.559, 25 февраля 2019 г., 12:50:12 -->

<head>
    <!--- Basic Page Needs  -->
    <meta charset="utf-8">
    <title>About || Movie</title>
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
                            <a href="index.html">
                                    <span>
                                        <i class="fa fa-home" aria-hidden="true"></i>
                                    </span>Home</a>
                        </li>
                        <li>
                            <a href="#">About</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-3 col-12">
                <div class="op-back">
                    <a href="#">Go Back</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- other-page-breadcumb-area-end -->
<!-- details-area-start -->
<div class="celebrety-da details-area">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="details">
                    <div class="details-movie">
                        <div class="img">
                            <img src="img/celebrety/details-author.jpeg" alt="">
                        </div>
                        <div class="content">
                            <h2 class="name">Vzgo Vzgoyan</h2>
                            <div class="reviews">
                                <div class="rating clearfix">
                                    <div class="star star-on"></div>
                                    <div class="star star-on"></div>
                                    <div class="star star-on"></div>
                                    <div class="star star-on"></div>
                                    <div class="star star-half"></div>
                                </div>
                                <p class="review">(564 Reviews(S)</p>
                            </div>
                            <ul class="info">
                                <li>Age : 99 </li>
                                <li>From : Armenia, Leninakan</li>
                                <li>Language : Armenian</li>
                            </ul>
                            <div class="share">
                                <span class="label">Share:</span>
                                <ul class="social">
                                    <li class="facebook">
                                        <a href="#" target="_blank">
                                            <i class="fab fa-facebook-f"></i>
                                        </a>
                                    </li>
                                    <li class="twitter">
                                        <a href="#" target="_blank">
                                            <i class="fab fa-twitter"></i>
                                        </a>
                                    </li>
                                    <li class="instagram">
                                        <a href="#" target="_blank">
                                            <i class="fab fa-instagram"></i>
                                        </a>
                                    </li>
                                    <li class="pinterest">
                                        <a href="#" target="_blank">
                                            <i class="fab fa-pinterest-p"></i>
                                        </a>
                                    </li>
                                    <li class="vimeo">
                                        <a href="#" target="_blank">
                                            <i class="fab fa-vimeo-v"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <a class="all" href="#">All Movie</a>
                        </div>
                    </div>
                    <div class="details-content">
                        <h2 class="title">About Me :</h2>
                        <p class="text">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been
                            the industry's standard dummy text ever since the 1500s, when an unknown the printer took
                            a galley of type and scrambled it to make a type specimen book. It has survived not only
                            five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
                            It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum
                            passages, and more recently with desktop publishing software like Aldus PageMaker including
                            versions of Lorem Ipsum.
                            <br>
                            <br> It is a long established fact that a reader will be distracted by the readable content of
                            a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less
                            normal distribution of letters.
                            <br>
                            <br> Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece
                            of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock,
                            a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure
                            Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the
                            word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections
                            1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by
                            Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during
                            the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from
                            a line in section 1.10.32.
                            <br>
                            <br> The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.
                            Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced
                            in their exact original form, accompanied by English versions from the 1914 translation by
                            H. Rackham.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- details-area-end -->
<!-- h3-newsletter-area-start -->
<div class="about-newsletter-area h3-newsletter-area bg-with-ebony">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 offset-lg-1 col-md-7 col-sm-12 col-12">
                <div class="h3-newsletter newsletter">
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
            <div class="col-lg-3 offset-lg-1 col-md-5 col-sm-12 col-12">
                <div class="h3n-twitter-feed fw-twitter footer-widget">
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
<!-- h3-newsletter-area-end -->
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
                                    </span> Bangladesh, Dhaka, Mirpur -12</li>
                            <li>
                                    <span>
                                        <i class="fas fa-phone"></i>
                                    </span> +(999) 321456987</li>
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
                            <a href="#">@i-finger</a> . All Rights Reserved.</p>
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

<!-- Copied from http://pluginspoint.com/demo/i-finger-preview/05_film-town/09_about.html by Cyotek WebCopy 1.6.0.559, 25 февраля 2019 г., 12:50:12 -->
</html>