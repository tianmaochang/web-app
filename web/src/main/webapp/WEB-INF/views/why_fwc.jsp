<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>能满足各种需求... | 为何选择FWC | FOCUS WINE CELLARS</title>
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
	<link rel="canonical" href="https://www.focuswinecellars.com/why_fwc" />
	<script src="${baseStatic}/js/jquery.min.js" type="c8d5fafe6f8e72fc6ba7a60d-text/javascript"></script>
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
<script type="c8d5fafe6f8e72fc6ba7a60d-text/javascript">
$(window).load (function() {
    $("#loading").fadeOut(500);

yukseklik = $( window ).height();
yukseklik2 = $('#whyy').height()+60;
console.log( yukseklik);
console.log( yukseklik2);
if (yukseklik>yukseklik2){
   	fark = ((yukseklik-yukseklik2)/2) - 100;
	$('#whyy').css('margin-top',fark);
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
	<div class="container" id="whyy">
		<div class="col-sm-6" style="padding-top: 80px; text-align: center; ">
			<img src="${baseStatic}/images/why-logo.png" alt="Focus wine cellars" class="img-responsive">
			<p style="margin-top: 25px; font-size: 22px;"><b>能满足各种需求...</b></p>
			<p>为住宅和游艇打造私人酒窖，为餐厅和酒店建造商用酒窖，为公寓和葡萄酒俱乐部设计集体酒窖，为散装存储和自助仓储建造工业酒窖以及为私人和商业用途提供定制储酒柜，FWC能满足葡萄酒领域的各种需求。<br />
			</p>
			<p><a href="index.html?lng=cn#whywfc" style="text-decoration: none; color: #666; cursor: pointer;">< 上一页 </a></p>
		</div>
		<div class="col-sm-6">
			<img src="${baseStatic}/images/whygorsel_07.jpg" alt="能满足各种需求..." class="img-responsive">
		</div>
	</div>
</section>
<style>
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

<script src="${baseStatic}/js/jquery.easing.min.js" type="c8d5fafe6f8e72fc6ba7a60d-text/javascript"></script>
<script src="${baseStatic}/js/bootstrap.min.js" type="c8d5fafe6f8e72fc6ba7a60d-text/javascript"></script>
<script src="${baseStatic}/js/jquery.fancybox.min.js" type="c8d5fafe6f8e72fc6ba7a60d-text/javascript"></script>
<script src="${baseStatic}/js/swiper.min.js" type="c8d5fafe6f8e72fc6ba7a60d-text/javascript"></script>
<script src="${baseStatic}/js/slick.min.js" type="c8d5fafe6f8e72fc6ba7a60d-text/javascript"></script>
<script src="${baseStatic}/js/wow.min.js" type="c8d5fafe6f8e72fc6ba7a60d-text/javascript"></script>
<script src="${baseStatic}/js/jquery.stellar.js" type="c8d5fafe6f8e72fc6ba7a60d-text/javascript"></script>
<script src="${baseStatic}/js/focus.js" type="c8d5fafe6f8e72fc6ba7a60d-text/javascript"></script>
<script src="https://ajax.cloudflare.com/cdn-cgi/scripts/2448a7bd/cloudflare-static/rocket-loader.min.js" data-cf-nonce="c8d5fafe6f8e72fc6ba7a60d-" defer=""></script></body>
</html>


