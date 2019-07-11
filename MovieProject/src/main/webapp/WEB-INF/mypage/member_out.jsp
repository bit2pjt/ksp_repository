<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--
/**
* @Class Name : member_out.jsp
* @Description : 회원 탈퇴
* @Modification Information
* @
* @  수정일     		     수정자            		수정내용
* @ ---------   ---------   -------------------------------
* @ 2019.07.06         황진석      		 	최초생성
* @author bit 2조
* @since 2019. 07.01
* @version 1.0
* @see
*
*  Copyright (C) by Bit All right reserved.
*/
-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Basic need -->
	<title>Open Pediatrics</title>
	<meta charset="UTF-8">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="author" content="">
	<link rel="profile" href="#">

    <!--Google Font-->
    <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600' />
	<!-- Mobile specific meta -->
	<meta name=viewport content="width=device-width, initial-scale=1">
	<meta name="format-detection" content="telephone-no">

	<!-- CSS files -->
	<link rel="stylesheet" href="<c:url value="/resources/css/plugins.css" />">
	<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
	<link rel="stylesheet" href="<c:url value="/resources/css/hjs.css" />">
</head>
<body>
<div id="preloader">
    <img class="logo" src="<c:url value="/resources/images/logo1.png" />" alt="" width="119" height="58">
    <div id="status">
        <span></span>
        <span></span>
    </div>
</div>
<!--end of preloading-->
<!--login form popup-->
<div class="login-wrapper" id="login-content">
    <div class="login-content">
        <a href="#" class="close">x</a>
        <h3>Login</h3>
        <form method="post" action="login.php">
        	<div class="row">
        		 <label for="username">
                    Username:
                    <input type="text" name="username" id="username" placeholder="Hugh Jackman" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required" />
                </label>
        	</div>
           
            <div class="row">
            	<label for="password">
                    Password:
                    <input type="password" name="password" id="password" placeholder="******" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
                </label>
            </div>
            <div class="row">
            	<div class="remember">
					<div>
						<input type="checkbox" name="remember" value="Remember me"><span>Remember me</span>
					</div>
            		<a href="#">Forget password ?</a>
            	</div>
            </div>
           <div class="row">
           	 <button type="submit">Login</button>
           </div>
        </form>
        <div class="row">
        	<p>Or via social</p>
            <div class="social-btn-2">
            	<a class="fb" href="#"><i class="ion-social-facebook"></i>Facebook</a>
            	<a class="tw" href="#"><i class="ion-social-twitter"></i>twitter</a>
            </div>
        </div>
    </div>
</div>
<!--end of login form popup-->
<!--signup form popup-->
<div class="login-wrapper"  id="signup-content">
    <div class="login-content">
        <a href="#" class="close">x</a>
        <h3>sign up</h3>
        <form method="post" action="signup.php">
            <div class="row">
                 <label for="username-2">
                    Username:
                    <input type="text" name="username" id="username-2" placeholder="Hugh Jackman" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required" />
                </label>
            </div>
           
            <div class="row">
                <label for="email-2">
                    your email:
                    <input type="password" name="email" id="email-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
                </label>
            </div>
             <div class="row">
                <label for="password-2">
                    Password:
                    <input type="password" name="password" id="password-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
                </label>
            </div>
             <div class="row">
                <label for="repassword-2">
                    re-type Password:
                    <input type="password" name="password" id="repassword-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
                </label>
            </div>
           <div class="row">
             <button type="submit">sign up</button>
           </div>
        </form>
    </div>
</div>
<!--end of signup form popup-->

<!-- BEGIN | Header -->
<header class="ht-header">
	<div class="container">
		<nav class="navbar navbar-default navbar-custom">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header logo">
				    <div class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					    <span class="sr-only">Toggle navigation</span>
					    <div id="nav-icon1">
							<span></span>
							<span></span>
							<span></span>
						</div>
				    </div>
				    <a href="index_light.html"><img class="logo" src="/resources/images/logo1.png" alt="" width="119" height="58"></a>
			    </div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse flex-parent" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav flex-child-menu menu-left">
						<li class="hidden">
							<a href="#page-top"></a>
						</li>
						<li class="dropdown first">
							<a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown">
							Home <i class="fa fa-angle-down" aria-hidden="true"></i>
							</a>
							<ul class="dropdown-menu level1">
								<li><a href="index_light.html">Home 01</a></li>
								<li><a href="homev2_light.html">Home 02</a></li>
								<li><a href="homev3_light.html">Home 03</a></li>
							</ul>
						</li>
						<li class="dropdown first">
							<a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
							movies<i class="fa fa-angle-down" aria-hidden="true"></i>
							</a>
							<ul class="dropdown-menu level1">
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" >Movie grid<i class="ion-ios-arrow-forward"></i></a>
									<ul class="dropdown-menu level2">
										<li><a href="moviegrid_light.html">Movie grid</a></li>
										<li><a href="moviegridfw_light.html">movie grid full width</a></li>
									</ul>
								</li>			
								<li><a href="movielist_light.html">Movie list</a></li>
								<li><a href="moviesingle_light.html">Movie single</a></li>
								<li class="it-last"><a href="seriessingle_light.html">Series single</a></li>
							</ul>
						</li>
						<li class="dropdown first">
							<a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
							celebrities <i class="fa fa-angle-down" aria-hidden="true"></i>
							</a>
							<ul class="dropdown-menu level1">
								<li><a href="celebritygrid01_light.html">celebrity grid 01</a></li>
								<li><a href="celebritygrid02_light.html">celebrity grid 02 </a></li>
								<li><a href="celebritylist_light.html">celebrity list</a></li>
								<li class="it-last"><a href="celebritysingle_light.html">celebrity single</a></li>
							</ul>
						</li>
						<li class="dropdown first">
							<a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
							news <i class="fa fa-angle-down" aria-hidden="true"></i>
							</a>
							<ul class="dropdown-menu level1">
								<li><a href="bloglist_light.html">blog List</a></li>
								<li><a href="bloggrid_light.html">blog Grid</a></li>
								<li class="it-last"><a href="blogdetail_light.html">blog Detail</a></li>
							</ul>
						</li>
						<li class="dropdown first">
							<a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
							community <i class="fa fa-angle-down" aria-hidden="true"></i>
							</a>
							<ul class="dropdown-menu level1">
								<li><a href="userfavoritegrid_light.html">user favorite grid</a></li>
								<li><a href="userfavoritelist_light.html">user favorite list</a></li>
								<li><a href="userprofile_light.html">user profile</a></li>
								<li class="it-last"><a href="userrate_light.html">user rate</a></li>
							</ul>
						</li>
					</ul>
					<ul class="nav navbar-nav flex-child-menu menu-right">
						<li class="dropdown first">
							<a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
							pages <i class="fa fa-angle-down" aria-hidden="true"></i>
							</a>
							<ul class="dropdown-menu level1">
								<li><a href="landing.html">Landing</a></li>
								<li><a href="404.html">404 Page</a></li>
								<li class="it-last"><a href="comingsoon.html">Coming soon</a></li>
							</ul>
						</li>                
						<li><a href="#">Help</a></li>
						<li class="loginLink"><a href="#">LOG In</a></li>
						<li class="btn signupLink"><a href="#">sign up</a></li>
					</ul>
				</div>
			<!-- /.navbar-collapse -->
	    </nav>
	    
	    <!-- top search form -->
	    <div class="top-search">
	    	<select>
				<option value="united">TV show</option>
				<option value="saab">Others</option>
			</select>
			<input type="text" placeholder="Search for a movie, TV Show or celebrity that you are looking for">
	    </div>
	</div>
</header>
<!-- END | Header -->

<div class="hero user-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="hero-ct">
					<h1>Edward kennedy’s profile</h1>
					<ul class="breadcumb">
						<li class="active"><a href="#">Home</a></li>
						<li> <span class="ion-ios-arrow-right"></span>Rated movies</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
		<div class="buster-light">
<div class="page-single">
	<div class="container">
		<div class="row ipad-width2">
			<div class="col-md-3 col-sm-12 col-xs-12">
					<div class="info">
						<h2> <strong>황진석 님</strong> </h2>
						<h3> <strong>h10046245h@naver.com</strong></h3>
					</div>
				<div class="user-information">
						<div class="user-fav">
							<ul>
								<li><a href="mypage.do">마이페이지</a></li>
							</ul>
									
							<ul>
								<li>회원 정보</li>
								<li><a href="pw_confirm.do">&nbsp;&nbsp;&nbsp;&nbsp;회원정보수정</a></li>
								<li><a href="member_out.do">&nbsp;&nbsp;&nbsp;&nbsp;회원탈퇴</a></li>
							</ul>
				
							<ul>
								<li>고객센터</li>
								<li><a href="one_list.do">&nbsp;&nbsp;&nbsp;&nbsp;1:1 문의내역</a></li>
								<li><a href="faq.do">&nbsp;&nbsp;&nbsp;&nbsp;FAQ</a></li>
							</ul>
						</div>
				</div>
			</div>
			<div class="col-md-9 col-sm-12 col-xs-12">
					<div class="tal_info">
						<h1><strong> 회원 탈퇴 </strong></h1>
					</div>
					
					<div class="etcWrap">
							<dl class="secedeInfo">
								<dt class="tal_info"><strong>회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.</strong></dt>
								<dt class="b">회원 탈퇴는 회원님 스스로 신청하시는 것을 원칙으로 합니다.</dt>
								<dd>아이디 및 비밀번호 재확인 후 탈퇴 하실 수 있습니다.<br>
										만약 로그인이 되지 않아 탈퇴 신청을 할 수 없는 경우에는 1:1문의로
										연락 주시기 바랍니다.<br><br>
								</dd>
								
								<dt class="b">회원탈퇴 이후 개인정보 보유사유 및 기간</dt>
								<dd>
									 원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. <br>
									 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.<br>
									 - 보존 항목 : 로그인ID<br>
									 - 보존 근거 : 컨텐츠 이용ID 중복방지<br>
									 - 보존 기간 : 3개월<br>
									 <br>
									 - 보존 항목 : 본인인증값<br>
									 - 보존 근거 : 악용목적에 의한 가입 및 탈퇴방지<br>
									 - 보존 기간 : 탈퇴일로 3일<br>
									 <br>
									 - 보존 항목 : 부정이용 기록<br>
									 - 보존 근거 : 부정방지 이용<br>
									 - 보존 기간 : 1년<br>
									<br>
									 그리고 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 <br>아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.<br><br>
									- 보존 항목 : 표시·광고에 관한 기록<br>
									- 보존 근거 : 전자상거래등에서의 소비자보호에 관한 법률<br>
									- 보존 기간 : 6개월<br><br>
				
									- 보존 항목 : 계약 또는 청약철회 등에 관한 기록<br>
									- 보존 근거 : 전자상거래등에서의 소비자보호에 관한 법률<br>
									- 보존 기간 : 5년<br><br>
				
									- 보존 항목 : 대금 결제 및 재화 등의 공급에 관한 기록<br>
									- 보존 근거 : 전자상거래등에서의 소비자보호에 관한 법률<br>
									- 보존 기간 : 5년<br><br>
				
									- 보존 항목 : 소비자의 불만 또는 분쟁처리에 관한 기록<br>
									- 보존 근거 : 전자상거래등에서의 소비자보호에 관한 법률<br>
									- 보존 기간 : 3년<br><br>
				
									- 보존 항목 : 로그기록자료, 접속지의 추적자료<br>
									- 보존 근거 : 통신비밀보호법<br>
									- 보존 기간 : 3개월<br><br>
								</dd>
								<dt class="b">지금 탈퇴 하시면 가입일 기준 최대 30일 이후에 재 가입이 가능합니다.</dt>
								<dd>(아이디가 여러 개인 경우 최종 가입 아이디 가입일 기준)<br>- 탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가하오니 신중하게 선택하시기 바랍니다.</dd>
							</dl>
					</div> <br>
					<div class="btn_m">
							<input type="button" class="btn-check" value="탈퇴"> &nbsp;
							<input type="reset" class="btn-check" value="취소">
					</div>
		</div>
	</div>
</div>
		</div>
		</div>
<!-- footer section-->
<footer class="ht-footer">
	<div class="container">
		<div class="flex-parent-ft">
			<div class="flex-child-ft item1">
				 <a href="index.html"><img class="logo" src="images/logo1.png" alt=""></a>
				 <p>5th Avenue st, manhattan<br>
				New York, NY 10001</p>
				<p>Call us: <a href="#">(+01) 202 342 6789</a></p>
			</div>
			<div class="flex-child-ft item2">
				<h4>Resources</h4>
				<ul>
					<li><a href="#">About</a></li> 
					<li><a href="#">Blockbuster</a></li>
					<li><a href="#">Contact Us</a></li>
					<li><a href="#">Forums</a></li>
					<li><a href="#">Blog</a></li>
					<li><a href="#">Help Center</a></li>
				</ul>
			</div>
			<div class="flex-child-ft item3">
				<h4>Legal</h4>
				<ul>
					<li><a href="#">Terms of Use</a></li> 
					<li><a href="#">Privacy Policy</a></li>	
					<li><a href="#">Security</a></li>
				</ul>
			</div>
			<div class="flex-child-ft item4">
				<h4>Account</h4>
				<ul>
					<li><a href="#">My Account</a></li> 
					<li><a href="#">Watchlist</a></li>	
					<li><a href="#">Collections</a></li>
					<li><a href="#">User Guide</a></li>
				</ul>
			</div>
			<div class="flex-child-ft item5">
				<h4>Newsletter</h4>
				<p>Subscribe to our newsletter system now <br> to get latest news from us.</p>
				<form action="#">
					<input type="text" placeholder="Enter your email...">
				</form>
				<a href="#" class="btn">Subscribe now <i class="ion-ios-arrow-forward"></i></a>
			</div>
		</div>
	</div>
	<div class="ft-copyright">
		<div class="ft-left">
			<p>© 2017 Blockbuster. All Rights Reserved. Designed by leehari.</p>
		</div>
		<div class="backtotop">
			<p><a href="#" id="back-to-top">Back to top  <i class="ion-ios-arrow-thin-up"></i></a></p>
		</div>
	</div>
</footer>
<!-- end of footer section-->

<script src="<c:url value="/resources/js/jquery.js" />"></script>
<script src="<c:url value="/resources/js/plugins.js" />"></script>
<script src="<c:url value="/resources/js/plugins2.js" />"></script>
<script src="<c:url value="/resources/js/custom.js" />"></script>
</body>
</html>