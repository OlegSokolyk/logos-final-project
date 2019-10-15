<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jsp" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/fonts-style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/wrapper-lux.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/wrapper-standart.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/wrapper-super-lux.css" />" rel="stylesheet">

    <meta charset="UTF-8">
    <title>Document</title>
</head>

<body>
    <header class="large">
        <nav><img src="<c:url value="/resources/img/logo3.png"/>" alt="logo">
            <ul>
                <li><a href="#head" >home</a></li>
                <li><a href="#numbers">numbers</a></li>
                <li><a href="#footer">contact</a></li>
            </ul>
            <ul>
            	<sec:authorize access="!isAuthenticated()">
                	<li><a href="/login" style="font-size: 30px;">login</a></li>
                	<li><a href="/register" style="font-size: 30px;">register</a></li>
                </sec:authorize>
                
                <sec:authorize access="isAuthenticated()">
                
                	<sec:authentication property="principal.username" var="username"/>
                	
                	<li><a href="/user" style="font-size: 20px;">${username}</a></li>
                	
                	<c:url var="logoutUrl" value="/logout" />
                	
                	<form:form action="${logoutUrl}" method="post" cssStyle="padding-top: 7px;">
						<li><input type="submit" value="logout" /></li>
					</form:form>
                </sec:authorize>
            </ul>
        </nav>
    </header>

    <section class="home-info" id="head">
        <nav class="description">
            <div class="h1">
                <h1>Lorem ipsum dolor <br/> amet consectetur</h1>
            </div>
            <div class="p">
                <p>Lorem ipsum dolor amet consectetur adipisicing
                    <br>elit, sed do eiusmod tempor incididunt ut labore et
                    <br>dolore magna aliqua. Ut enim ad minim veniam, quis
                    <br> nostrud exercitation ullamco laboris nisi ut aliquip
                    <br> ex ea commodo consequat. Duis aute irure dolor in
                    <br>reprehenderit in voluptate velit esse cillum dolore eu
                    <br> fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                </p>
            </div>
        </nav>

    </section>

    <section class="item1" id="numbers">
        <div class="wrapper-standart">
            <div class="slides fade">
                <img style="width: 600px;" src="<c:url value="/resources/img/standart/standart1.png"/>" alt="">
            </div>

            <div class="slides fade">
                <img style="width: 600px;" src="<c:url value="/resources/img/standart/standart2.png"/>" alt="">
            </div>

            <div class="slides fade">
                <img style="width: 600px;" src="<c:url value="/resources/img/standart/standart3.png"/>" alt="">
            </div>
            <a class="prev" onclick="plusSlides(-1)">&#10094</a>
            <a class="next" onclick="plusSlides(1)">&#10095</a>
            <div style="text-align: center">
                <span class="dot" onclick="currentSlide(1)"></span>
                <span class="dot" onclick="currentSlide(2)"></span>
                <span class="dot" onclick="currentSlide(3)"></span>
            </div>
        </div>


        <div class="standart">
            <h2>Standart</h2>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                <br>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                <br>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                <br> Duis aute irure dolor in reprehenderit in voluptatecillum dolore eu fugiat
                <br>nulla pariatur. Excepteur sint occaecat cupidatat non voluptatecillum
                <br>dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
            </p>
            <sec:authorize access="!isAuthenticated()">
                <a href="/login" class="order">order</a>
            </sec:authorize>
            
            <sec:authorize access="isAuthenticated()">
                <a href="/login" class="order">order</a>
            </sec:authorize>
            
        </div>
    </section>

    <section class="item2">
        <div class="lux">
            <h2>Lux</h2>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                <br>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                <br>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                <br> Duis aute irure dolor in reprehenderit in voluptatecillum dolore eu fugiat
                <br>nulla pariatur. Excepteur sint occaecat cupidatat non voluptatecillum
                <br>dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
            </p>
            <sec:authorize access="!isAuthenticated()">
                <a href="/login" class="order" style="background-color: white; color: #344057;">order</a>
            </sec:authorize>
            
            <sec:authorize access="isAuthenticated()">
                <a href="/login" class="order">order</a>
            </sec:authorize>
        </div>

        <div class="wrapper-lux">
            <div class="slides-lux fade">
                <img style="width: 600px;" src="<c:url value="/resources/img/lux/lux1.png"/>" alt="">
            </div>

            <div class="slides-lux fade">
                <img style="width: 600px;" src="<c:url value="/resources/img/lux/lux2.png"/>" alt="">
            </div>

            <div class="slides-lux fade">
                <img style="width: 500px;" src="<c:url value="/resources/img/lux/lux3.png"/>" alt="">
            </div>
            <a class="prev-lux" onclick="plusSlides(-1)">&#10094</a>
            <a class="next-lux" onclick="plusSlides(1)">&#10095</a>
            <div style="text-align: center">
                <span class="dot-lux" onclick="currentSlide(1)"></span>
                <span class="dot-lux" onclick="currentSlide(2)"></span>
                <span class="dot-lux" onclick="currentSlide(3)"></span>
            </div>
        </div>
    </section>

    <section class="item3">

        <div class="wrapper-super-lux">
            <div class="slides-super-lux fade">
                <img style="width: 600px;" src="<c:url value="/resources/img/super-lux/super-lux1.png"/>" alt="">
            </div>

            <div class="slides-super-lux fade">
                <img style="width: 600px;" src="<c:url value="/resources/img/super-lux/super-lux2.png"/>" alt="">
            </div>

            <div class="slides-super-lux fade">
                <img style="width: 500px;" src="<c:url value="/resources/img/super-lux/super-lux3.png"/>" alt="">
            </div>
            
            <a class="prev-super-lux" onclick="plusSlides(-1)">&#10094</a>
            
            <a class="next-super-lux" onclick="plusSlides(1)">&#10095</a>
            
            <div style="text-align: center">
                <span class="dot-super-lux" onclick="currentSlide(1)"></span>
                <span class="dot-super-lux" onclick="currentSlide(2)"></span>
                <span class="dot-super-lux" onclick="currentSlide(3)"></span>
            </div>
        </div>

        <div class="super-lux">
            <h2>Super lux</h2>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                <br>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                <br>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                <br> Duis aute irure dolor in reprehenderit in voluptatecillum dolore eu fugiat
                <br>nulla pariatur. Excepteur sint occaecat cupidatat non voluptatecillum
                <br>dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
            </p>
            <sec:authorize access="!isAuthenticated()">
                <a href="/login" class="order">order</a>
            </sec:authorize>
            
            <sec:authorize access="isAuthenticated()">
                <a href="/login" class="order">order</a>
            </sec:authorize>
        </div>
    </section>

    <footer id="footer">
        <div class="contacts">
            <h2>Contacts</h2>
            <hr>
            <p>E-mail: <br> superhotel@mail.com
            </p>
            <p>Phone:<br> +380975429488
            </p>
            <p>Follow:</p>
            <div>
                <a href="#"><img src="<c:url value="/resources/img/facebook.png"/>" alt="facebook"></a>
                <a href="#"><img src="<c:url value="/resources/img/instagram.png"/>" alt="instagram"></a>
                <a href="#"><img src="<c:url value="/resources/img/twitter.png"/>" alt="twitter"></a>
            </div>
        </div>
        <div class="map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m23!1m12!1m3!1d945533.3440125441!2d-155.44926325721667!3d19.51854018944129!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x7953ebc288652adf%3A0x8ef5ed9eac9b372e!2zTWF1bmEgTG9hIE9ic2VydmF0b3J5IFJkLCBIYXdhaWksINCh0KjQkA!3m2!1d19.6310496!2d-155.5261893!5e0!3m2!1sru!2sua!4v1521567224456" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
    </footer>
    
    <script type="text/javascript">
    	<%@include file="/resources/js/jquery-3.3.1.min.js"%>
    	<%@include file="/resources/js/script.js"%>
    	<%@include file="/resources/js/wrapper-script.js"%>
    	<%@include file="/resources/js/wrapper-lux-script.js"%>
    	<%@include file="/resources/js/wrapper-super-lux-script.js"%>
	</script>
</body>

</html>