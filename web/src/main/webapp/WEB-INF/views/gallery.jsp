<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>图库 | FOCUS WINE CELLARS</title>
	<meta name="description" content="Visit our Gallery to see images of wine cellars bearing the signature of Focus Wine Cellars.">
	<meta name="keywords" content="Wine cellar, wine cabinet, gallery, images, photos, photographs" />
	<meta name="robots" content="index, follow">
	<meta name="author" content="Bumerang EIA @2017 - www.bumerang.net">

	<link href="https://fonts.googleapis.com/css?family=Cinzel:700|Parisienne|Playfair+Display:400,700,900" rel="stylesheet">

	<link href="${baseStatic}/css/bootstrap.css" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="${baseStatic}/css/jquery.fancybox.css" rel="stylesheet">
	<link href="${baseStatic}/css/swiper.css" rel="stylesheet">
	<link href="${baseStatic}/css/slick.css" rel="stylesheet">
	<link href="${baseStatic}/css/slick-theme.css" rel="stylesheet">
	<link href="${baseStatic}/css/animate.css" rel="stylesheet">
	<link href="${baseStatic}/css/focus.css" rel="stylesheet">
	<link rel="canonical" href="https://www.focuswinecellars.com/gallery" />
	<script src="${baseStatic}/js/jquery.min.js" type="8e9d0a43cf65e3f10c642ce6-text/javascript"></script>
</head>
<body id="page-top" data-stellar-background-ratio="0.5">
<div id="loading">
	<div id="loading-center">
		<div id="loading-center-absolute">
			<div class="object" id="object_one"></div>
			<div class="object" id="object_two"></div>
			<div class="object" id="object_three"></div>
		</div>
	</div>
</div>
<style>
	body { margin: 0; padding: 0 }
	#loading { background-color:rgba(0,0,0,1); height: 100%; width: 100%; position: fixed; z-index: 100000000; margin-top: 0px; top: 0px; }
	#loading-center { width: 100%; height: 100%; position: relative; }
	#loading-center-absolute { position: absolute; left: 50%; top: 50%; height: 100px; width: 40px; margin-top: -50px; margin-left: -20px; }
	.object { width: 40px; height: 8px; margin-bottom: 20px; background-color: #FFF; -webkit-animation: animate 0.8s infinite; animation: animate 0.8s infinite; }
	#object_two { -webkit-animation-delay: 0.2s; animation-delay: 0.2s; }
	#object_three { -webkit-animation-delay: 0.4s; animation-delay: 0.4s; }
	@-webkit-keyframes animate {  50% {
		-ms-transform: scale(1.5);
		-webkit-transform: scale(1.5);
		transform: scale(1.5);
	}
	}
	@keyframes animate {  50% {
		-ms-transform: scale(1.5);
		-webkit-transform: scale(1.5);
		transform: scale(1.5);
	}
	}
</style>
<script type="8e9d0a43cf65e3f10c642ce6-text/javascript">
$(window).load (function() {
    $("#loading").fadeOut(500);
});
</script>

<div id="mainNav" class="sidenav">
	<a href="javascript:void(0)" data-wow-delay="0.8s" class=" wow bounceInLeft closebtn" onClick="closeNav()">&#9776;</a>
	<a class="page-scroll" href="index.html?lng=cn" onclick="closeNav()">首页</a>
	<a class="page-scroll" href="index.html?lng=cn#whywfc" onclick="closeNav()">为何选择FWC</a>
	<a class="page-scroll" href="index.html?lng=cn#explore" onclick="closeNav()">图库</a>
	<a class="page-scroll" href="index.html?lng=cn#catalogue" onclick="closeNav()">产品目录</a>
	<a class="page-scroll" href="index.html?lng=cn#clients" onclick="closeNav()">客户</a>
	<a class="page-scroll" href="index.html?lng=cn#publicationsaboutus" onclick="closeNav()">出版物</a>
	<a class="page-scroll" href="index.html?lng=cn#storage" onclick="closeNav()">葡萄酒的贮存</a>
	<a class="page-scroll" href="index.html?lng=cn#discoverwhoweare" onclick="closeNav()">关于我们</a>
	<a class="page-scroll" href="index.html?lng=cn#contactus" onclick="closeNav()">联系方式</a>
</div>
<div class="open" onclick="openNav()">☰</div>

<section class="why ekranyuksekligi" id="whywfc">
	<div class="container-fluid gallerytabs">
		<ul class="nav nav-tabs">
			<li><a href="#?lng=cn&id=1&b=private-cellars">私人的</a></li>
			<li class="active"><a href="#?lng=cn&id=2&b=commercial-cellars">广告</a></li>
			<li><a href="#?lng=cn&id=3&b=Collective-cellars">集体</a></li>
			<li><a href="#?lng=cn&id=4&b=Industrial-cellars">产业</a></li>
			<li><a href="#?lng=cn&id=5&b=Cabinets">橱柜</a></li>
		</ul>
	</div>
	<div id="privatec" class="container-fluid gallerytabs">
		<a href="index.html" style="float: right;"><img id="kapat_siyah" src="${baseStatic}/images/kapat_siyah.png" alt="Close icon" style="
    width: 35px;
    margin-top: -30px;
    margin-right: -20px;
"></a>
		<div class="container">
			<div class="col-xs-12 text-center">
				<h1>商用酒窖</h1>
			</div>
			<div class="col-xs-3 text-center">
				<a title="Sheraton Hotel Atakoy Istanbul" href="#?lng=cn&id=10&sf=6">
					<img alt="Sheraton Hotel Atakoy Istanbul" src="${baseStatic}/images/b259b6f2233eaac5b8555d9fb62c866a.jpg" class="img-responsive">
				</a>
			</div>
			<div class="col-xs-3 text-center">
				<a title="Konyalı Restaurant" href="#?lng=cn&id=25&sf=6">
					<img alt="Konyalı Restaurant" src="${baseStatic}/images/24006aade29770c863507e2c0726c359.jpg" class="img-responsive">
				</a>
			</div>
			<div class="col-xs-3 text-center">
				<a title="Pera Palas Hotel " href="#?lng=cn&id=20&sf=6">
					<img alt="Pera Palas Hotel " src="${baseStatic}/images/afe5b76ad12bacd55729cdcc54313852.jpg" class="img-responsive">
				</a>
			</div>
			<div class="col-xs-3 text-center">
				<a title="Sheraton Hotel Maslak Istanbul" href="#?lng=cn&id=6&sf=6">
					<img alt="Sheraton Hotel Maslak Istanbul" src="${baseStatic}/images/5c83a6ae622db43b86c0c8b4db1987d5.jpg" class="img-responsive">
				</a>
			</div>
			<div class="col-sm-12 text-center" style="margin-top: 20px">
				<a href="#?lng=cn&id=2&sf=5&b=commercial-cellars">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true" style="font-size: 18px;color: #000;"></span>
				</a>
				<a href="#?lng=cn&id=2&sf=1&b=commercial-cellars" style="text-decoration: none">
					<span style="font-size: 24px; color:#666">&bull;</span>
				</a>
				<a href="#?lng=cn&id=2&sf=2&b=commercial-cellars" style="text-decoration: none">
					<span style="font-size: 24px; color:#666">&bull;</span>
				</a>
				<a href="#?lng=cn&id=2&sf=3&b=commercial-cellars" style="text-decoration: none">
					<span style="font-size: 24px; color:#666">&bull;</span>
				</a>
				<a href="#?lng=cn&id=2&sf=4&b=commercial-cellars" style="text-decoration: none">
					<span style="font-size: 24px; color:#666">&bull;</span>
				</a>
				<a href="#?lng=cn&id=2&sf=5&b=commercial-cellars" style="text-decoration: none">
					<span style="font-size: 24px; color:#666">&bull;</span>
				</a>
				<a href="#?lng=cn&id=2&sf=6&b=commercial-cellars" style="text-decoration: none">
					<span style="font-size: 24px; color:#000">&bull;</span>
				</a>
				<a href="#?lng=cn&id=2&sf=7&b=commercial-cellars" style="text-decoration: none">
					<span style="font-size: 24px; color:#666">&bull;</span>
				</a>
				<a href="#?lng=cn&id=2&sf=8&b=commercial-cellars" style="text-decoration: none">
					<span style="font-size: 24px; color:#666">&bull;</span>
				</a>
				<a href="#?lng=cn&id=2&sf=7&b=commercial-cellars">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true" style="font-size: 18px;color: #000;"></span>
				</a>
			</div>
		</div>
	</div>
</section>
<style type="text/css">
	.aa { width: 10% !important; }
	.bb { width: 20% !important; }
</style>

<script src="${baseStatic}/js/jquery.easing.min.js" type="8e9d0a43cf65e3f10c642ce6-text/javascript"></script>
<script src="${baseStatic}/js/bootstrap.min.js" type="8e9d0a43cf65e3f10c642ce6-text/javascript"></script>
<script src="${baseStatic}/js/jquery.fancybox.min.js" type="8e9d0a43cf65e3f10c642ce6-text/javascript"></script>
<script src="${baseStatic}/js/swiper.min.js" type="8e9d0a43cf65e3f10c642ce6-text/javascript"></script>
<script src="${baseStatic}/js/slick.min.js" type="8e9d0a43cf65e3f10c642ce6-text/javascript"></script>
<script src="${baseStatic}/js/wow.min.js" type="8e9d0a43cf65e3f10c642ce6-text/javascript"></script>
<script src="${baseStatic}/js/jquery.stellar.js" type="8e9d0a43cf65e3f10c642ce6-text/javascript"></script>
<script src="${baseStatic}/js/focus.js" type="8e9d0a43cf65e3f10c642ce6-text/javascript"></script>
<style>
</style>
<script src="https://ajax.cloudflare.com/cdn-cgi/scripts/2448a7bd/cloudflare-static/rocket-loader.min.js" data-cf-nonce="8e9d0a43cf65e3f10c642ce6-" defer=""></script></body>
</html>
