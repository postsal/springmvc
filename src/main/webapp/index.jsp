<%@ page import="com.hujian.springmvc.Model.User" %><%--
  Created by IntelliJ IDEA.
  User: hujian
  Date: 2016/11/26
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String user = (String) session.getAttribute("userName");
%>
<!DOCTYPE html>
<html>
<head>
    <title>博客</title>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- //for-mobile-apps -->
    <link href="/assets/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="/assets/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link rel="stylesheet" href="/assets/css/swipebox.css">
    <!-- js -->
    <script src="/assets/js/jquery-1.11.1.min.js"></script>
    <!-- //js -->
    <%--<script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>--%>
</head>

<body>
<input type="hidden" id="user" value="<%=user%>">
<!-- banner-body -->
<div class="banner-body">
    <div class="container">
        <!-- header -->
        <div class="header">
            <div class="header-nav">
                <nav class="navbar navbar-default">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <%--<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>--%>
                        <a class="navbar-brand" href="index.html"><span>Q</span>uickly</a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="hvr-bounce-to-bottom"><a href="" url="" class="redirect">Home</a></li>
                            <li class="hvr-bounce-to-bottom"><a href="#" url="/Blog/" class="redirect">Blog</a></li>
                            <%--<li class="hvr-bounce-to-bottom"><a href="#" class="redirect">News</a></li>
                            <li class="hvr-bounce-to-bottom"><a href="#" class="redirect">Photos</a></li>--%>
                            <li class="hvr-bounce-to-bottom"><a href="/UserController/" class="redirect">Manage User</a>
                            </li>
                        </ul>
                        <div class="sign-in" id="signIn">
                            <ul>
                                <li><a href="#" url="/Account/Login" class="redirect">Sign In</a>/</li>
                                <li><a href="#" url="/Register/" class="redirect">Register</a></li>
                            </ul>
                        </div>
                    </div><!-- /.navbar-collapse -->
                </nav>
            </div>

            <!-- search-scripts -->
            <%--<script>
                new UISearch( document.getElementById( 'sb-search' ) );
            </script>--%>
            <!-- //search-scripts -->
        </div>
        <!-- //header -->
        <!-- header-bottom -->
        <div id="mainPage">
            <%@include file="body.jsp" %>
        </div>

        <!-- //header-bottom -->
    </div>
</div>
<!-- //banner-body -->
<!-- footer -->
<%@include file="footer.jsp" %>
<!-- //footer -->
<!-- for bootstrap working -->
<script src="/assets/js/bootstrap.js"></script>
<!-- //for bootstrap working -->

<!-- Slider-starts-Here -->
<script src="/assets/js/responsiveslides.min.js"></script>
<script>
    // You can also use "$(window).load(function() {"
    $(function () {
        // Slideshow 4
        $("#slider3").responsiveSlides({
            auto: true,
            pager: false,
            nav: true,
            speed: 500,
            namespace: "callbacks",
            before: function () {
                $('.events').append("<li>before event fired.</li>");
            },
            after: function () {
                $('.events').append("<li>after event fired.</li>");
            }
        });

    });
</script>

<script type="text/javascript">
    $(window).load(function () {
        $("#flexiselDemo1").flexisel({
            visibleItems: 3,
            animationSpeed: 1000,
            autoPlay: false,
            autoPlaySpeed: 3000,
            pauseOnHover: true,
            enableResponsiveBreakpoints: true,
            responsiveBreakpoints: {
                portrait: {
                    changePoint: 480,
                    visibleItems: 1
                },
                landscape: {
                    changePoint: 640,
                    visibleItems: 2
                },
                tablet: {
                    changePoint: 768,
                    visibleItems: 3
                }
            }
        });

    });
</script>
<script type="text/javascript" src="/assets/js/jquery.flexisel.js"></script>

<script src="/app/js/app.utils.js"></script>
<script type="text/javascript">
    bindRedirect();

    var hideSignIn = function () {
        var userName = $("#user").val();
        console.log(userName);
        if (userName == "null") {
            $("#signIn").show();
        } else {
            $("#signIn").empty();
            $("#signIn").append(
                '<ul>' +
                '<li>' + '<a href="/UserController/getUser/id/<%=user%>">' + userName + '</a>/' +
                '</li>' +
                '<li>' + '<a href="/Account/LogOut">Sing Out</a>' +
                '</li>' +
                '</ul>'
            )
        }
    };
    $(document).ready(
        hideSignIn()
    )
</script>

<script src="/assets/js/easyResponsiveTabs.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#horizontalTab').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true   // 100% fit in a container
        });
    });
</script>

<script src="/assets/js/jquery.swipebox.min.js"></script>
<script type="text/javascript">
    jQuery(function($) {
        $(".swipebox").swipebox();
    });
</script>

</body>
</html>


