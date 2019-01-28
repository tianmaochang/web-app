<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>葡萄酒最理想的存储条件是什么？ | 葡萄酒的贮存 | FOCUS WINE CELLARS</title>
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
	<link rel="canonical" href="https://www.focuswinecellars.com/storage_of_wine" />
	<script src="${baseStatic}/js/jquery.min.js" type="b0d41e764ef0169a2de43644-text/javascript"></script>
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
<script type="b0d41e764ef0169a2de43644-text/javascript">
$(window).load (function() {
    $("#loading").fadeOut(500);

yukseklik = $( window ).height();
yukseklik2 = $('#zem').height()+125;
console.log( yukseklik);
console.log( yukseklik2);
if (yukseklik>yukseklik2){
   	fark = ((yukseklik-yukseklik2)/2) - 105;
	$('#zem').css('margin-top',fark);
}

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

<section class="why ekranyuksekligi" id="whywfc" style="margin-top: 40px">
	<div class="col-sm-12 text-center">
		<div id="zem" class="popupzemin centered">
			拥有几百年历史的葡萄酒文化和酿造方法在其发展史上历经了无数变迁。但是，有一个条件始终如一；妥善存储葡萄酒所需的必要条件：<br />
			<br />
			稳定的低温，相对较高的湿度，没有震动、气味或太阳光线带来的有害影响。<br />
			Focus Wine Cellars为您的葡萄酒打造精美绝伦且满足其存储要求的空间。<br />
			<p><a href="index.html?lng=cn#storage" style="text-decoration: none; color: #666; cursor: pointer;">< 上一页 </a></p>
		</div>
	</div>
</section>
<style>
	.centered { margin: 0 auto;
		padding: 24px;
		border-width: 0;
		background: #FFF;
		width: 80%;
		text-align: center;
		font-size: 16px;
	}

	p{ font-size: 16px; line-height: 25px }
	.gallery2 > div { margin-bottom:15px  }

	a.linkyapi, a { color: #666 !important;  }
	a.linkyapi:hover, a:hover { color: #aa8a45 !important;  }
	a {
		color: #666;
		font-weight: bold;
		text-decoration: underline;
		-webkit-transition: all 0.2s;
		-moz-transition: all 0.2s;
		transition: all 0.2s;
	}
</style>

<script src="${baseStatic}/js/jquery.easing.min.js" type="b0d41e764ef0169a2de43644-text/javascript"></script>
<script src="${baseStatic}/js/bootstrap.min.js" type="b0d41e764ef0169a2de43644-text/javascript"></script>
<script src="${baseStatic}/js/jquery.fancybox.min.js" type="b0d41e764ef0169a2de43644-text/javascript"></script>
<script src="${baseStatic}/js/swiper.min.js" type="b0d41e764ef0169a2de43644-text/javascript"></script>
<script src="${baseStatic}/js/slick.min.js" type="b0d41e764ef0169a2de43644-text/javascript"></script>
<script src="${baseStatic}/js/wow.min.js" type="b0d41e764ef0169a2de43644-text/javascript"></script>
<script src="${baseStatic}/js/jquery.stellar.js" type="b0d41e764ef0169a2de43644-text/javascript"></script>
<script src="${baseStatic}/js/focus.js" type="b0d41e764ef0169a2de43644-text/javascript"></script>
<script src="https://ajax.cloudflare.com/cdn-cgi/scripts/2448a7bd/cloudflare-static/rocket-loader.min.js" data-cf-nonce="b0d41e764ef0169a2de43644-" defer=""></script></body>
</html>


