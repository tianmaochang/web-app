(function($){"use strict";var h=$(window).height()+10;if(h>780){$('.ekranyuksekligi').css('min-height',h);}
else{$('.ekranyuksekligi').css('min-height',780);}
new WOW().init();$.stellar({horizontalScrolling:false,verticalOffset:40});$('a.page-scroll').bind('click',function(event){var $anchor=$(this);$('html, body').stop().animate({scrollTop:($($anchor.attr('href')).offset().top-0)},1250,'easeInOutExpo');event.preventDefault();});})(jQuery);function openNav(){"use strict";document.getElementById("mainNav").style.width="500px";$('#open').hide();$('#closebtn').show();}
function closeNav(){"use strict";document.getElementById("mainNav").style.width="0";$('#open').show();$('#closebtn').hide();}
var swiper=new Swiper('.why-wfc',{pagination:'.swiper-pagination',paginationClickable:true,});$('.gallery-private').slick({infinite:false,slidesToShow:4,slidesToScroll:4,dots:false,arrows:true,responsive:[{breakpoint:1024,settings:{slidesToShow:4,slidesToScroll:4,dots:false,arrows:true,}},{breakpoint:769,settings:{slidesToShow:3,slidesToScroll:3,dots:false,arrows:true,}},{breakpoint:480,settings:{slidesToShow:1,slidesToScroll:1,dots:false,arrows:true,}}]});$('.gallery-detay').slick({infinite:false,slidesToShow:1,slidesToScroll:1,dots:true,arrows:true,});$('.publications-detay').slick({infinite:false,slidesToShow:4,slidesToScroll:4,dots:true,arrows:true,responsive:[{breakpoint:1024,settings:{slidesToShow:4,slidesToScroll:4,dots:false,arrows:true,}},{breakpoint:769,settings:{slidesToShow:3,slidesToScroll:3,dots:false,arrows:true,}},{breakpoint:480,settings:{slidesToShow:1,slidesToScroll:1,dots:false,arrows:true,}}]});$('.gallery-commercial').slick({infinite:false,slidesToShow:4,slidesToScroll:4,dots:false,arrows:true,responsive:[{breakpoint:1024,settings:{slidesToShow:4,slidesToScroll:4,dots:false,arrows:true,}},{breakpoint:769,settings:{slidesToShow:3,slidesToScroll:3,dots:false,arrows:true,}},{breakpoint:480,settings:{slidesToShow:1,slidesToScroll:1,dots:false,arrows:true,}}]});$('.gallery-collective').slick({infinite:false,slidesToShow:4,slidesToScroll:4,dots:false,arrows:true,responsive:[{breakpoint:1024,settings:{slidesToShow:4,slidesToScroll:4,dots:false,arrows:true,}},{breakpoint:769,settings:{slidesToShow:3,slidesToScroll:3,dots:false,arrows:true,}},{breakpoint:480,settings:{slidesToShow:1,slidesToScroll:1,dots:false,arrows:true,}}]});$('.gallery-industrial').slick({infinite:false,slidesToShow:4,slidesToScroll:4,dots:false,arrows:true,responsive:[{breakpoint:1024,settings:{slidesToShow:4,slidesToScroll:4,dots:false,arrows:true,}},{breakpoint:769,settings:{slidesToShow:3,slidesToScroll:3,dots:false,arrows:true,}},{breakpoint:480,settings:{slidesToShow:1,slidesToScroll:1,dots:false,arrows:true,}}]});$('.gallery-cabinets').slick({infinite:false,slidesToShow:4,slidesToScroll:4,dots:false,arrows:true,responsive:[{breakpoint:1024,settings:{slidesToShow:4,slidesToScroll:4,dots:false,arrows:true,}},{breakpoint:769,settings:{slidesToShow:3,slidesToScroll:3,dots:false,arrows:true,}},{breakpoint:480,settings:{slidesToShow:1,slidesToScroll:1,dots:false,arrows:true,}}]});$('.seeclients').slick({dots:false,infinite:false,speed:300,slidesPerRow:5,rows:3,slidesToScroll:1,responsive:[{breakpoint:1024,settings:{slidesPerRow:5,rows:3,slidesToScroll:1,infinite:false,dots:true,arrows:true}},{breakpoint:769,settings:{slidesPerRow:4,rows:2,slidesToScroll:1,dots:true,arrows:false}},{breakpoint:480,settings:{slidesPerRow:3,rows:3,slidesToScroll:1,dots:true,arrows:false}}]});$('.seeclients2').slick({infinite:false,slidesToShow:4,slidesToScroll:4,dots:false,arrows:true,responsive:[{breakpoint:1024,settings:{slidesToShow:4,slidesToScroll:4,dots:false,arrows:true,}},{breakpoint:769,settings:{slidesToShow:3,slidesToScroll:3,dots:false,arrows:true,}},{breakpoint:480,settings:{slidesToShow:1,slidesToScroll:1,dots:false,arrows:true,}}]});$('.storageofwine').slick({infinite:false,dots:false,responsive:[{breakpoint:991,settings:{dots:true,arrows:false}},{breakpoint:480,settings:{dots:true,arrows:false}}]});$('.publications2').slick({dots:false,infinite:false,speed:300,slidesPerRow:6,rows:2,slidesToScroll:1,responsive:[{breakpoint:1024,settings:{slidesPerRow:6,rows:2,slidesToScroll:1,infinite:false,dots:true,arrows:true}},{breakpoint:769,settings:{slidesPerRow:4,rows:2,slidesToScroll:1,dots:true,arrows:false}},{breakpoint:480,settings:{slidesPerRow:3,rows:3,slidesToScroll:1,dots:true,arrows:false}}]});