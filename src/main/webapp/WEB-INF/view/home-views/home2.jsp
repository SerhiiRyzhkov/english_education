<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@page session="false"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="ru"><head>
    <style>
        #myChat {
            display: none;
        }
    </style>
    <style>
        #myWord {
            display: none;
            left: -254px;
            bottom: 500px;
        }
    </style>
    <style>
        #myTop {
            display: none;
        }
    </style>
    <style>
        #myLetter {
            display: none;
        }
    </style>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="​Lessons &amp;amp; Practice, ​Meet some of our partners!, ​Integrity. Uniqueness. Enjoyment. Ever Forward., ​Our Mission, Contact Us">
    <meta name="description" content="">
    <title>Home</title>
    <link rel="stylesheet" href="<c:url value="/resources/style/home/nicepage.css"/>" media="screen">
    <link rel="stylesheet" href="<c:url value="/resources/style/home/Home.css"/>" media="screen">
    <script class="u-script" type="text/javascript" src="<c:url value="/resources/style/home/jquery.js"/>" defer=""></script>
    <script class="u-script" type="text/javascript" src="<c:url value="/resources/style/home/nicepage.js"/>" defer=""></script>
    <meta name="generator" content="Nicepage 5.0.7, nicepage.com">

    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Roboto+Slab:100,200,300,400,500,600,700,800,900|Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">



    <script type="application/ld+json">{
        "@context": "http://schema.org",
        "@type": "Organization",
        "name": "",
        "sameAs": [
            "https://www.facebook.com/had0uken1992",
            "https://t.me/hd0uk3n",
            "had0uken@ukr.net"
        ]
    }</script>
    <meta name="theme-color" content="#4551dd">
    <meta property="og:title" content="Home">
    <meta property="og:type" content="website">
</head>
<body class="u-body u-stick-footer u-xl-mode" data-lang="ru"><header class="u-align-center-sm u-align-center-xs u-clearfix u-header u-header" id="sec-fe69"><div class="u-clearfix u-sheet u-sheet-1">
    <a href="/homeReff" style="cursor: pointer; z-index: 1000"><img src="<c:url value="/resources/style/home/images/coollogo_com-828391.png"/>" width="450" height="aute" ></a>


   <%-- <a href="/homeReff"> <img class="u-image u-image-contain u-image-default u-image-1" src="<c:url value="/resources/style/home/images/coollogo_com-828391.png"/>"
                              alt="" data-image-width="1656" data-image-height="333"></a>--%>

    <form:form action="logout">
        <input type="image" src="<c:url value="/resources/style/home/images/3329438-07cf5464.png"/>" class="u-file-icon u-hover-feature u-icon u-text-palette-1-base u-icon-1"/>

    </form:form>

    <p class="u-align-center u-custom-font u-font-roboto-slab u-text u-text-default u-text-1">${currentUserEntityAtt.email}<br>${userLevelAtt}
    </p>

    <security:authorize access="hasRole('ADMIN')"><a href="/admin" class="u-btn u-btn-round u-button-style u-hover-feature u-hover-palette-1-light-1 u-palette-1-base u-radius-50 u-btn-1">aDmIN MODE</a></security:authorize>


    <div class="u-social-icons u-spacing-10 u-social-icons-1">
        <a class="u-social-url" title="facebook" target="_blank" href="https://www.facebook.com/had0uken1992"><span class="u-icon u-social-facebook u-social-icon u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-9f2a"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-9f2a"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M73.5,31.6h-9.1c-1.4,0-3.6,0.8-3.6,3.9v8.5h12.6L72,58.3H60.8v40.8H43.9V58.3h-8V43.9h8v-9.2
            c0-6.7,3.1-17,17-17h12.5v13.9H73.5z"></path></svg></span>
        </a>
        <a class="u-social-url" title="telegram" target="_blank" href="https://t.me/hd0uk3n"><span class="u-icon u-social-icon u-social-telegram u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-76c3"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-76c3"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M18.4,53.2l64.7-24.9c3-1.1,5.6,0.7,4.7,5.3l0,0l-11,51.8c-0.8,3.7-3,4.6-6.1,2.8L53.9,75.8l-8.1,7.8
	c-0.9,0.9-1.7,1.6-3.4,1.6l1.2-17l31.1-28c1.4-1.2-0.3-1.9-2.1-0.7L34.2,63.7l-16.6-5.2C14,57.4,14,54.9,18.4,53.2L18.4,53.2z"></path></svg></span>
        </a>
        <a class="u-social-url" title="linkedin" target="_blank" href=""><span class="u-icon u-social-icon u-social-linkedin u-icon-4"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-8511"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-8511"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M41.3,83.7H27.9V43.4h13.4V83.7z M34.6,37.9L34.6,37.9c-4.6,0-7.5-3.1-7.5-7c0-4,3-7,7.6-7s7.4,3,7.5,7
            C42.2,34.8,39.2,37.9,34.6,37.9z M89.6,83.7H76.2V62.2c0-5.4-1.9-9.1-6.8-9.1c-3.7,0-5.9,2.5-6.9,4.9c-0.4,0.9-0.4,2.1-0.4,3.3v22.5
            H48.7c0,0,0.2-36.5,0-40.3h13.4v5.7c1.8-2.7,5-6.7,12.1-6.7c8.8,0,15.4,5.8,15.4,18.1V83.7z"></path></svg></span>
        </a>
        <a class="u-social-url" title="email" target="_blank" href="had0uken@ukr.net"><span class="u-icon u-social-email u-social-icon u-icon-5"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-349a"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-349a"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path id="path3864" fill="#FFFFFF" d="M27.2,28h57.6c4,0,7.2,3.2,7.2,7.2l0,0v42.7c0,3.9-3.2,7.2-7.2,7.2l0,0H27.2
	c-4,0-7.2-3.2-7.2-7.2V35.2C20,31.1,23.2,28,27.2,28 M56,52.9l28.8-17.8H27.2L56,52.9 M27.2,77.7h57.6V43.5L56,61.3L27.2,43.5V77.7z
	"></path></svg></span>
        </a>
    </div>
</div></header>



<script type="text/javascript">
    function wordFunction() {
        var element1 = document.getElementById("myWord");
        var element2 = document.getElementById("myChat");
        var element3 = document.getElementById("myTop");
        var element4 = document.getElementById("myLetter");

        if (element1.style.display === "none") {

            element1.style.display = "block";
            element2.style.display = "none";
            element3.style.display = "none";
            element4.style.display = "none"
            const firstTabLink = document.querySelector('.u-tab-link-2');
            firstTabLink.click();

        } else {
            element1.style.display = "none";
            element2.style.display = "none";
            element3.style.display = "none";
            element4.style.display = "none";
        }

    }
</script>

<script type="text/javascript">
    function topFunction() {
        var element1 = document.getElementById("myTop");
        var element2 = document.getElementById("myChat");
        var element3 = document.getElementById("myWord");
        var element4 = document.getElementById("myLetter");

        if (element1.style.display === "none") {
            element1.style.display = "block";
            element2.style.display = "none";
            element3.style.display = "none";
            element4.style.display = "none"
        } else {
            element1.style.display = "none";
            element2.style.display = "none";
            element3.style.display = "none";
            element4.style.display = "none";
        }

    }
</script>

<script type="text/javascript">
    function chatFunction() {
        var element1 = document.getElementById("myChat");
        var element2 = document.getElementById("myTop");
        var element3 = document.getElementById("myWord");
        var element4 = document.getElementById("myLetter");
        var block = document.getElementById("DIV_7");
        block.scrollTop = block.scrollHeight;

        if (element1.style.display === "none") {
            block.scrollTop = block.scrollHeight;
            element1.style.display = "block";
            element2.style.display = "none";
            element3.style.display = "none";
            element4.style.display = "none";
            block.scrollTop = block.scrollHeight;
        } else {
            element1.style.display = "none";
            element2.style.display = "none";
            element3.style.display = "none";
            element4.style.display = "none";
        }

    }
</script>


<script type="text/javascript">
    function closeFunction() {
        var element1 = document.getElementById("myChat");
        var element2 = document.getElementById("myTop");
        var element3 = document.getElementById("myWord");
        var element4 = document.getElementById("myLetter");
        element1.style.display = "none";
        element2.style.display = "none";
        element3.style.display = "none";
        element4.style.display = "none";
    }
</script>


<script type="text/javascript">
    function messageFunction() {
        var element1 = document.getElementById("myLetter");
        var element2 = document.getElementById("myTop");
        var element3 = document.getElementById("myWord");
        var element4 = document.getElementById("myChat");

        if (element1.style.display === "none") {
            element1.style.display = "block";
            element2.style.display = "none";
            element3.style.display = "none";
            element4.style.display = "none"
        } else {
            element1.style.display = "none";
            element2.style.display = "none";
            element3.style.display = "none";
            element4.style.display = "none";
        }

    }
</script>








<section class="skrollable u-align-center-sm u-align-center-xs u-align-right-lg u-align-right-md u-align-right-xl u-border-2 u-border-palette-2-base u-clearfix u-palette-1-base u-section-1" id="sec-d422">







    <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-list u-list-1">
            <div class="u-repeater u-repeater-1" style="z-index: 999999">
                <div class="u-container-style u-list-item u-repeater-item">
                    <div class="u-container-layout u-similar-container u-container-layout-1">
                        <div class="u-align-center u-clearfix u-group-elements u-group-elements-1" data-animation-name="customAnimationIn" data-animation-duration="1000"><span class="u-custom-item u-file-icon u-icon u-text-white u-icon-1" data-animation-name="flipIn" data-animation-duration="2000" data-animation-direction="X"><img src="<c:url value="/resources/style/home/images/8.png"/>" alt="" style="cursor: pointer;" onclick="wordFunction()"></span>
                            <p class="u-small-text u-text u-text-variant u-text-1" data-animation-name="flipIn" data-animation-duration="1000" data-animation-direction="X">Word of the day</p>
                        </div>
                    </div>
                </div>
                <div class="u-container-style u-list-item u-repeater-item">
                    <div class="u-container-layout u-similar-container u-container-layout-2">
                        <div class="u-clearfix u-group-elements u-group-elements-2" data-animation-name="customAnimationIn" data-animation-duration="1000"><span class="u-custom-item u-file-icon u-icon u-text-custom-color-5 u-icon-2" data-animation-name="flipIn" data-animation-duration="2000" data-animation-direction="X"><img src="<c:url value="/resources/style/home/images/10.png"/>" alt="" style="cursor: pointer;" onclick="topFunction()"></span>
                            <p class="u-small-text u-text u-text-variant u-text-2" data-animation-name="flipIn" data-animation-duration="1000" data-animation-direction="X">Top users</p>
                        </div>
                    </div>
                </div>
                <div class="u-container-style u-list-item u-repeater-item">
                    <div class="u-container-layout u-similar-container u-container-layout-3">
                        <div class="u-clearfix u-group-elements u-group-elements-3" data-animation-name="customAnimationIn" data-animation-duration="1000"><span class="u-custom-item u-file-icon u-icon u-text-white u-icon-3" data-animation-name="flipIn" data-animation-duration="2000" data-animation-direction="X"><img src="<c:url value="/resources/style/home/images/8637688-6ab37918.png"/>" alt="" style="cursor: pointer;" onclick="chatFunction()"></span>
                            <p class="u-small-text u-text u-text-variant u-text-3">Chat</p>
                        </div>
                    </div>
                </div>
                <div class="u-container-style u-list-item u-repeater-item">
                    <div class="u-container-layout u-similar-container u-container-layout-4">
                        <div class="u-clearfix u-group-elements u-group-elements-4" data-animation-name="customAnimationIn" data-animation-duration="1000"><span class="u-custom-item u-file-icon u-icon u-icon-4" data-animation-name="flipIn" data-animation-duration="2000" data-animation-direction="X"><img src="<c:url value="/resources/style/home/images/4034637-f5561489.png"/>" alt="" style="cursor: pointer;" onclick="closeFunction()"></span>
                            <p class="u-small-text u-text u-text-variant u-text-4">Close</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <c:if test="${isFirstVisitAtt}">
        <span class="u-file-icon u-icon u-icon-5"><img src="<c:url value="/resources/style/home/images/1802693.png"/>" alt="" style="cursor: pointer;" onclick="messageFunction()"></span>
        <h4 class="u-text u-text-default u-text-5">You`ve got a message!!!</h4>
        </c:if>
        <c:if test="${!isFirstVisitAtt}">
            <span class="u-file-icon u-icon u-icon-5"></span>
            <h4 class="u-text u-text-default u-text-5"></h4>
        </c:if>
        <div class="u-image u-image-circle u-image-1" alt="" data-image-width="1080" data-image-height="1080" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="250"></div>
        <div class="u-bottom-left-radius-19 u-container-style u-group u-palette-1-base u-shape-round u-top-left-radius-19 u-group-1" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="500">
            <div class="u-container-layout u-container-layout-5">
                <h1 class="u-align-left u-text u-text-body-alt-color u-text-default u-text-6" data-lang-en="​Lessons &amp;amp; Practice">English Education</h1>
            </div>
        </div>



        <div class="u-list u-list-2">
            <div class="u-repeater u-repeater-2">




                <form:form name="readingForm" action="/reading/">
                    <div class="u-container-style u-list-item u-radius-20 u-repeater-item u-shape-round u-video-cover u-white u-list-item-5" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="750">


                        <div class="u-container-layout u-similar-container u-valign-top u-container-layout-6" style="cursor: pointer;" onClick="document.forms['readingForm'].submit();">


                            <span class="u-file-icon u-hover-feature u-icon u-icon-circle u-palette-2-base u-icon-6" data-animation-name="customAnimationIn" data-animation-duration="1750" data-animation-delay="500"><img src="<c:url value="/resources/style/home/images/149366.png"/>" alt=""></span>


                            <h4 class="u-align-center u-text u-text-palette-1-base u-text-7" data-lang-en="Math">Reading</h4>
                        </div>


                    </div>

                </form:form>


                <form:form name="listeningForm" action="/listening/">
                <div class="u-align-center u-container-style u-list-item u-radius-20 u-repeater-item u-shape-round u-video-cover u-white u-list-item-6" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="750">
                    <div class="u-container-layout u-similar-container u-valign-top u-container-layout-7" style="cursor: pointer;" onClick="document.forms['listeningForm'].submit();"><span class="u-file-icon u-hover-feature u-icon u-icon-circle u-palette-2-base u-icon-7" data-animation-name="customAnimationIn" data-animation-duration="1750" data-animation-delay="500"><img src="<c:url value="/resources/style/home/images/149117.png"/>" alt=""></span>
                        <h4 class="u-text u-text-palette-1-base u-text-8" data-lang-en="Physics">Listening</h4>
                    </div>
                </div>

                </form:form>

                <form:form name="grammarForm" action="/GV/Grammar">
                <div class="u-align-center u-container-style u-list-item u-radius-20 u-repeater-item u-shape-round u-video-cover u-white u-list-item-7" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="750">
                    <div class="u-container-layout u-similar-container u-valign-top u-container-layout-8" style="cursor: pointer;" onClick="document.forms['grammarForm'].submit();"><span class="u-file-icon u-hover-feature u-icon u-icon-circle u-palette-2-base u-icon-8" data-animation-name="customAnimationIn" data-animation-duration="1750" data-animation-delay="500"><img src="<c:url value="/resources/style/home/images/149288.png"/>" alt=""></span>
                        <h4 class="u-text u-text-palette-1-base u-text-9" data-lang-en="​Medicine">Grammar</h4>
                    </div>
                </div>

                </form:form>

                <form:form name="vocabularyForm" action="/GV/Vocabulary">

                <div class="u-align-center u-container-style u-list-item u-radius-20 u-repeater-item u-shape-round u-video-cover u-white u-list-item-8" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="750">
                    <div class="u-container-layout u-similar-container u-valign-top u-container-layout-9" style="cursor: pointer;" onClick="document.forms['vocabularyForm'].submit();"><span class="u-file-icon u-hover-feature u-icon u-icon-circle u-palette-2-base u-icon-9" data-animation-name="customAnimationIn" data-animation-duration="1750" data-animation-delay="500"><img src="<c:url value="/resources/style/home/images/149367.png"/>" alt=""></span>
                        <h4 class="u-text u-text-palette-1-base u-text-10" data-lang-en="English">Vocabulary</h4>
                    </div>
                </div>
                </form:form>

                <form:form name="irregularForm" action="/irregular/">
                <div class="u-align-center u-container-style u-list-item u-radius-20 u-repeater-item u-shape-round u-video-cover u-white u-list-item-9" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="750">
                    <div class="u-container-layout u-similar-container u-valign-top u-container-layout-10" style="cursor: pointer;" onClick="document.forms['irregularForm'].submit();"><span class="u-file-icon u-hover-feature u-icon u-icon-circle u-palette-2-base u-icon-10" data-animation-name="customAnimationIn" data-animation-duration="1750" data-animation-delay="500"><img src="<c:url value="/resources/style/home/images/149352.png"/>" alt=""></span>
                        <h4 class="u-text u-text-palette-1-base u-text-11" data-lang-en="​Technology">Irregular verbs</h4>
                    </div>
                </div>

                </form:form>

                <form:form name="speakingForm" action="/speaking/">
                <div class="u-align-center u-container-style u-list-item u-radius-20 u-repeater-item u-shape-round u-video-cover u-white u-list-item-10" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="750">
                    <div class="u-container-layout u-similar-container u-valign-top u-container-layout-11" style="cursor: pointer;" onClick="document.forms['speakingForm'].submit();"><span class="u-file-icon u-hover-feature u-icon u-icon-circle u-palette-2-base u-icon-11" data-animation-name="customAnimationIn" data-animation-duration="1750" data-animation-delay="500"><img src="<c:url value="/resources/style/home/images/149429.png"/>" alt=""></span>
                        <h4 class="u-text u-text-palette-1-base u-text-12" data-lang-en="​Engineering">Speaking</h4>
                    </div>
                </div>
                </form:form>

            </div>
        </div>

        <div id="myTop" style="display: none;">
            <div class="u-border-2 u-border-black u-container-style u-group u-radius-23 u-shape-round u-white u-group-2">
                <div class="u-container-layout u-valign-top u-container-layout-12">
                    <div class="u-container-style u-expanded-width u-group u-palette-1-light-1 u-radius-17 u-shape-round u-group-3">
                        <div class="u-container-layout u-container-layout-13">
                            <p class="u-align-center u-text u-text-default u-text-13">TOP 10</p>
                            <p class="u-align-center u-text u-text-14"> Practice English every day and earn points</p>
                        </div>
                    </div>
                    <div class="u-table u-table-responsive u-table-1">
                        <table class="u-table-entity">
                            <colgroup>
                                <col width="4.8%">
                                <col width="35.2%">
                                <col width="20%">
                                <col width="20%">
                                <col width="20%">
                            </colgroup>
                            <tbody class="u-table-body">
                            <c:forEach var="us" items="${ratingAtt}">
                            <tr style="height: 67px;">
                                <c:if test="${us.email!=currentUserEmail}">
                                <td class="u-custom-font u-table-cell u-text-font u-text-palette-1-base u-table-cell-1">${ratingAtt.indexOf(us)+1}</td>
                                <td class="u-custom-font u-font-playfair-display u-table-cell u-text-palette-1-base u-table-cell-2">${us.name}</td>
                                <td class="u-custom-font u-font-playfair-display u-table-cell u-text-palette-1-base u-table-cell-3">${us.surname}</td>
                                <td class="u-table-cell u-text-palette-1-base u-table-cell-4">${us.points}</td>
                                <td class="u-table-cell"></td>
                                </c:if>
                                <c:if test="${us.email==currentUserEmail}">
                                    <td class="u-table-cell u-text-palette-1-base u-table-cell-26">${ratingAtt.indexOf(us)+1}</td>
                                    <td class="u-table-cell u-text-custom-color-5 u-table-cell-27"><u>${us.name}</u>
                                    </td>
                                    <td class="u-table-cell u-text-custom-color-5 u-table-cell-28"><u>${us.surname}</u>
                                    </td>
                                    <td class="u-table-cell u-text-custom-color-5 u-table-cell-29"><u>${us.points}</u>
                                    </td>
                                    <td class="u-table-cell"></td>
                                </c:if>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div><span class="u-file-icon u-icon u-text-palette-2-base u-icon-12"><img src="<c:url value="/resources/style/home/images/14165-fb4da963.png"/>" alt=""></span><span class="u-file-icon u-icon u-text-palette-5-light-1 u-icon-13"><img src="<c:url value="/resources/style/home/images/14165-4dab6753.png"/>" alt=""></span><span class="u-file-icon u-icon u-text-palette-2-dark-1 u-icon-14"><img src="<c:url value="/resources/style/home/images/14165-e9f17ff3.png"/>" alt=""></span>
                </div>
            </div>
        </div>


        <div id="myChat" style="display: none;">

            <div id="DIV_1">
                <div id="DIV_2">
                    <div id="DIV_3">
                        <div id="DIV_4">
                            <p id="P_5">
                                LIVE CHAT
                            </p>
                            <p id="P_6">
                                Please be polite
                            </p>
                        </div>
                    </div>


                    <div id="DIV_7">






                            <div class="card-body height3" style="width: 160%">
                                <ul class="chat-list">

                                    <c:forEach var="mes" items="${mapAtt}">
                                        <c:if test="${mes.value.email!=currentUserEmail}">
                                            <li class="in">
                                                <div class="chat-body">

                                                    <p style="color: #0f0f0f"; margin-top: 7px;
                                                       margin-bottom: 2px;>${mes.key.timestamp}</p>
                                                    <div class="chat-message">
                                                        <p style="color: black; front-size: 1rem; front-weight: 900;"><b>${mes.value.name} ${mes.value.surname}</b></p>
                                                        <h5>${mes.key.message}</h5>
                                                    </div>
                                                </div>
                                            </li>
                                        </c:if>
                                        <c:if test="${mes.value.email==currentUserEmail}">
                                            <li class="out">
                                                <div class="chat-body">
                                                    <p style="color: #0f0f0f"; margin-top: 7px;
                                                       margin-bottom: 2px;>${mes.key.timestamp}</p>
                                                    <div class="chat-message">
                                                        <p style="color: black; front-size: 1rem; front-weight: 900;"><b>${mes.value.name} ${mes.value.surname}</b></p>
                                                        <h5>${mes.key.message}</h5>

                                                    </div>
                                                </div>
                                            </li>
                                        </c:if>

                                    </c:forEach>

                                </ul>
                            </div>

                    </div>
                    <form:form action="chatSendMessage">
                        <input type="text"  name="messageAtt" class="edit bk">
                       <%-- <button type="submit" class="SPAN_31"><img src="<c:url value="/resources/style/home/images/786205-2716f272.png"/>" alt=""></button>--%>
                    </form:form>
            </div>


        </div>





        <div id="myWord" style="display: none;">
        <div class="u-border-2 u-border-grey-75 u-container-style u-group u-radius-23 u-shape-round u-white u-group-15">
            <div class="u-container-layout u-container-layout-25">
                <div class="u-align-center u-expanded-width u-tab-links-align-justify u-tabs u-tabs-1">
                    <ul class="u-border-1 u-border-custom-color-5 u-tab-list u-unstyled" role="tablist">

                        <li class="u-tab-item" role="presentation">
                            <a class="u-active-palette-1-base u-border-active-white u-border-hover-white u-button-style u-radius-25 u-tab-link u-text-active-white u-text-hover-palette-1-base u-text-palette-1-dark-2 u-white u-tab-link-2" id="link-tab-973f" href="#tab-973f" role="tab" aria-controls="tab-973f" aria-selected="false">Word<br>
                            </a>
                        </li>
                        <li class="u-tab-item" role="presentation">
                            <a class="u-active-palette-1-base u-border-active-white u-border-hover-white u-button-style u-radius-25 u-tab-link u-text-active-white u-text-hover-palette-1-base u-text-palette-1-dark-2 u-white u-tab-link-3" id="link-tab-0da5" href="#tab-0da5" role="tab" aria-controls="tab-0da5" aria-selected="false">Synonyms</a>
                        </li>
                        <li class="u-tab-item" role="presentation">
                            <a class="u-active-palette-1-base u-border-active-white u-border-hover-white u-button-style u-radius-25 u-tab-link u-text-active-white u-text-hover-palette-1-base u-text-palette-1-dark-2 u-white u-tab-link-4" id="link-tab-a54b" href="#tab-a54b" role="tab" aria-controls="tab-a54b" aria-selected="false">Examples<br>
                            </a>
                        </li>

                    </ul>


                    <div class="u-tab-content">
                        <div class="u-align-left u-container-style u-tab-pane u-white u-tab-pane-1" id="tab-973f" role="tabpanel" aria-labelledby="link-tab-973f">
                            <div class="u-container-layout u-container-layout-26">
                                <p class="u-align-left u-custom-font u-font-roboto-slab u-text  u-text-25" style="color: ${wordsAtt.color.toLowerCase()}">${wordsAtt.word} (${wordsAtt.parts})</p>
                                <p class="u-align-left u-custom-font u-font-roboto-slab u-text u-text-26"> ${wordsAtt.definition}</p>
                            </div>
                        </div>
                      <%--  <div class="u-align-left u-container-style u-tab-pane u-white u-tab-pane-2" id="tab-7107" role="tabpanel" aria-labelledby="link-tab-7107">
                            <div class="u-container-layout u-container-layout-27">
                                <p class="u-align-center u-text u-text-black u-text-27">WORLD OF THE DAY!<span style="font-weight: 700;"></span>
                                </p>
                                <p class="u-text u-text-custom-color-1 u-text-28">
                                    <span style="font-weight: 700;">Outbreak</span> (noun)
                                </p>
                                <p class="u-text u-text-29"> a sudden start or increase of fighting or disease</p>
                            </div>
                        </div>--%>
                        <div class="u-align-left u-container-style u-tab-pane u-white u-tab-pane-3" id="tab-a54b" role="tabpanel" aria-labelledby="link-tab-a54b">
                            <div class="u-container-layout u-container-layout-28">
                                <p class="u-align-center u-text  u-text-default u-text-30" style="color: ${wordsAtt.color.toLowerCase()}">WORLD OF THE DAY!<span style="font-weight: 700;"></span>
                                </p>
                                <div class="u-clearfix u-group-elements u-group-elements-5" data-animation-name="pulse" data-animation-duration="1000" data-animation-direction="">
                                    <p class="u-custom-font u-font-roboto-slab u-text u-text-31"> ${wordsAtt.example1}</p>
                                </div>
                                <p class="u-custom-font u-font-roboto-slab u-text u-text-32"> ${wordsAtt.example2}</p>
                                <p class="u-custom-font u-font-roboto-slab u-text u-text-33"> ${wordsAtt.example3}</p>
                            </div>
                        </div>
                        <div class="u-align-left u-container-style u-tab-pane u-white u-tab-pane-4" id="tab-0da5" role="tabpanel" aria-labelledby="link-tab-0da5">
                            <div class="u-container-layout u-container-layout-29">
                                <img class="u-absolute-hcenter u-expanded u-image u-image-contain u-image-default" alt="" data-image-width="650" data-image-height="400" src="<c:url value="/resources/img/words/${wordsAtt.word.toLowerCase()}.png"/>">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

        <div id="myLetter" style="display: none;">
            <div class="u-align-center u-border-2 u-border-black u-container-style u-group u-radius-20 u-shape-round u-white u-group-16">
                <div class="u-container-layout u-container-layout-30">
                    <h4 class="u-align-left u-text u-text-palette-1-base u-text-34" data-lang-en="​Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident."> Dear ${currentUserEntityAtt.name},<br>
                        <br>Welcome to our English educational site! We are excited to offer you a wealth of resources and materials to help you improve your English language skills.<br>
                        <br>If you are looking to improve your English proficiency, we highly recommend taking our English proficiency test. This test will help you identify your current level of proficiency and provide you with a roadmap to help you achieve your language goals.<br>
                        <br>We wish you the best of luck as you continue your English language journey, and we look forward to supporting you every step of the way.
                    </h4>
                    <form:form action="test/testStart">
                        <input type="submit" value="START TEST!" class="u-border-none u-btn u-btn-round u-button-style u-palette-1-base u-radius-14 u-btn-1">
                    </form:form>
                    <a class="u-border-none u-btn u-btn-round u-button-style u-palette-1-base u-radius-14 u-btn-2" onclick="closeFunction()">LATER</a>
                </div>
            </div>
        </div>
    </div>

</section>
<section class="u-align-center u-clearfix u-palette-1-base u-section-2" id="sec-9584">
    <div class="u-clearfix u-sheet u-sheet-1"><span class="u-align-center u-icon u-icon-circle u-text-palette-2-base u-icon-1" data-animation-name="customAnimationIn" data-animation-duration="1750" data-animation-delay="750"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 409.294 409.294" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-ca89"></use></svg><svg class="u-svg-content" viewBox="0 0 409.294 409.294" id="svg-ca89"><path d="m233.882 29.235v175.412h116.941c0 64.48-52.461 116.941-116.941 116.941v58.471c96.728 0 175.412-78.684 175.412-175.412v-175.412z"></path><path d="m0 204.647h116.941c0 64.48-52.461 116.941-116.941 116.941v58.471c96.728 0 175.412-78.684 175.412-175.412v-175.412h-175.412z"></path></svg></span>
        <div class="u-align-center u-container-style u-group u-radius-20 u-shape-round u-white u-group-1" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="0">
            <div class="u-container-layout u-container-layout-1">
                <h4 class="u-text u-text-palette-1-base u-text-1" data-lang-en="​Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident."> The web application was developed as a learning project. The main goal of the project was the practice of Spring technology.</h4>
            </div>
        </div>
        <div alt="" class="u-image u-image-circle u-image-1" data-image-width="1573" data-image-height="2244" data-animation-name="customAnimationIn" data-animation-duration="1500" data-animation-delay="500"></div>
        <h5 class="u-align-center u-custom-font u-font-montserrat u-text u-text-default u-text-2" data-animation-name="customAnimationIn" data-animation-duration="1250" data-animation-delay="500" data-lang-en="- May Hawkes, General Manager Operations  -">Serhii Ryzhkov 2023</h5>
    </div>
</section>











<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-9c10"><div class="u-clearfix u-sheet u-sheet-1">
    <p class="u-small-text u-text u-text-variant u-text-1" data-lang-en="Sample text. Click to select the text box. Click again or double click to start editing the text.">English Education by Serhii Ryzhkov 2023</p>
</div></footer>


</body></html>