// JavaScript Document

// JSHINT used for Dreamweaver
/* jshint strict: false */

// Scroll News Feed

function marquee(current) {
	return setInterval(function(){
		$(current).stop()
			.animate({scrollTop:40},400,'swing',function(){
				$(this).scrollTop(0).find(current+'-item:last').after($(current+'-item:first', this));
			});
		}, 2000);
}

var twitterDiv = marquee('.twitter-news');
var blogDiv = marquee('.blog-news');

$(document).ready(function(){
	$('.twitter-news').hover(
		function(){clearInterval(twitterDiv);},
		function(){twitterDiv=marquee('.twitter-news');}
	);
	$('.blog-news').hover(
		function(){clearInterval(blogDiv);},
		function(){blogDiv=marquee('.blog-news');}
	);
});


/*
setInterval(function(){
	$('.marquee').stop()
		.animate({scrollTop:40},400,'swing',function(){
			$(this).scrollTop(0).find('.marquee-item:last').after($('.marquee-item:first', this));
		});
	}, 2000);
function marquee(current) {
	current.stop().animate({scrollTop:40},400,'swing',function(){
		$(this).scrollTop(0).find('.marquee-item:last').after($('.marquee-item:first', this));
	})
}
$(document).ready(function(){
	setInterval(marquee($('.marquee')), 2000);
	$('.marquee').hover(
		function(){
			clearInterval(setInterval(marquee($(this)), 2000));
		},
		function(){
			setInterval(marquee($('.marquee')), 2000);
		}
	);
});
*/