(function ($) {
    $.fn.poposlides = function (options) {

        var settings = $.extend({
            auto: true,             //自动播放
            nav: true,              //切换按钮
            playspeed: 3500,         //自动播放速度
            fadespeed: 500,         //淡入淡出速度
            loop: true,             //循环播放
            pagination: true,       //页码显示
            pagecenter: true,       //页码居中
            prev: ".prev",          //上一页按钮
            next: ".next"           //下一页按钮
        }, options);

        return this.each(function () {

            var $this = $(this),
                slide = $this.children(),
                index = 0;
            len = slide.length - 1,
                slideWidth = $this.width(),
                prev = settings.prev,
                next = settings.next;

            //初始隐藏其它页，显示当前页
            if (!navigator.userAgent.match(/mobile/i)) {
                slide.hide();
                slide.eq(index).show();
            } else {
                slide.css({
                    "opacity": "0"
                });
                slide.eq(index).css({
                    "opacity": "1"
                });
            }
            //显示当前页
            slideFadeIn = function () {
                if (!navigator.userAgent.match(/mobile/i)) {
                    slide.fadeOut(settings.fadespeed);
                    slide.eq(index).fadeIn(settings.fadespeed);
                } else {
                    slide.css({
                        "opacity": "0",
                        "-webkit-transition": settings.fadespeed / 1000 + "s"
                    });
                    slide.eq(index).css({
                        "opacity": "1",
                        "-webkit-transition": settings.fadespeed / 1000 + "s"
                    });
                }
            };

            //翻页加，判断是否循环
            slideAdd = function () {
                if (settings.loop) {
                    index == len ? index = 0 : index++;
                } else {
                    index == len ? index = len : index++;
                }
                slideFadeIn();
            };

            //翻页减，判断是否循环
            slideMinus = function () {
                if (settings.loop) {
                    index == 0 ? index = len : index--;
                } else {
                    index == 0 ? index = 0 : index--;
                }
                slideFadeIn();
            };

            //页码
            pagnation = function () {
                var $paginationBox = $("<ul class='pagination1' id='slider_page'></ul>");
                var paginationStr = "";
                for (var i = 1; i <= len + 1; i++) {
                    paginationStr += "<li><a href='javascript:void(0)'>" + "</a>";
                }

//				$("#slider_page").append(paginationStr);

                $paginationBox.append(paginationStr);
                $this.after($paginationBox);

                $(".pagination1 li").eq(index).addClass("pagination_active");

            };

            //当前页码
            pageActive = function () {
                $(".pagination1 li").removeAttr("class");
                $(".pagination1 li").eq(index).addClass("pagination_active");
            };

            //是否需要左右导航图标
//            if(settings.nav) {
//				var navStr = "<a href='javascript:void(0)' class="+ prev.substring(1) +"></a>" +
//							 "<a href='javascript:void(0)' class="+ next.substring(1) +"></a>";
//				$this.after(navStr);
//
//                $(next).click(function(){
//                	slideAdd();
//                });
//
//                $(prev).click(function(){
//                	slideMinus();
//                })
//			};

            //是否需要页码
            if (settings.pagination) {
                pagnation();
                $(prev).click(function () {
                    pageActive();
                });
                $(next).click(function () {
                    pageActive();
                });

                $(".pagination1 li").click(function () {
                    var idx = $(this).index() - 1;
                    index = idx;
                    slideAdd();
                    pageActive();
                });
            }
            //页码居中
            if (settings.pagecenter) {
                var pw = $(".pagination1").width();
                $(".pagination1 li").css({
//					"position":"absolute",
//					"left":"60%",
//					"bottom":"5px",
//					"margin-left":-pw/2,
//					"z-index": "99"
                    "float": "left",
                    "margin-right": "10px",
                    "width": "10px",
                    "height": "10px",
                    "border-radius": "50%",
                    "line-height": "14px",
                    "text-align": "center",
                    "background": "#fff",
                    "cursor": "pointer",
                    "list-style": "noneß"
                })
            }
            //是否自动播放
            if (settings.auto) {
                var play = setInterval(function () {
                    slideAdd();
                    pageActive();
                }, settings.playspeed);
                $this.nextAll().hover(function () {
                        clearInterval(play);
                    },
                    function () {
                        play = setInterval(function () {
                            slideAdd();
                            pageActive();
                        }, settings.playspeed);
                    });
            }
        });
    };

})(jQuery);