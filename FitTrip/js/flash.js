
	$(function(){
		var $block = $('.fit_slider_banner'), 
			$ad = $block.find('.ad'),
			showIndex = 0,			// 預設要先顯示那一張
			fadeOutSpeed = 1500,	// 淡出的速度
			fadeInSpeed = 1500,		// 淡入的速度
			defaultZ = 10,			// 預設的 z-index
			isHover = false,
			timer, speed = 2000;	// 計時器及輪播切換的速度
		
		// 先把其它圖片的變成透明
		$ad.css({
			opacity: 0,
			zIndex: defaultZ - 1
		}).eq(showIndex).css({
			opacity: 1,
			zIndex: defaultZ
		});
		
		// 組出右下的按鈕
		var str = '';
		//for(var i=0;i<$ad.length;i++){
		//	str += '<a href="#">' + (i + 1) + '</a>';
	    //}
		for (var i = 0; i < $ad.length; i++) {
		    if (i == 10) {
		        str += '<a href="#"><div class="banner_selcet_numberC">C</div></a>';
		    }
		    else if (i == 11) {
		        str += '<a href="#"><div class="banner_selcet_numberN">N</div></a>';
		    }
		    else if (i == 12) {
		        str += '<a href="#"><div class="banner_selcet_numberHelp"><img src="images/index/numberHelp.png" width="20" height="20" ></img></div></a>';
		    }
		    else
		    {
		        switch(i)
		        {
                    case 0:
		                str += '<a href="#" sort="1">峇里島</a>';
		                break;    
		            case 1:
		                str += '<a href="#" sort="2">馬爾地夫</a>';
		                break;
		            case 2:
		                str += '<a href="#" sort="3">斐濟</a>';
		                break;
		            case 3:
                        str += '<a href="#" sort="4">華航機票專區</a>';
		                break;
                    case 4:
		                str += '<a href="#" sort="5">杜拜</a>';
		                break;    
		            default:
		                str += '<a href="#">' + (i + 1) + '</a>';
		                break;
		        }
		    }
		}
		var $controlA = $('.fit_slider_banner').append($('<div class="control">' + str + '</div>').css('zIndex', defaultZ + 1)).find('.control a');

		// 當按鈕被點選時
		// 若要變成滑鼠滑入來切換時, 可以把 click 換成 mouseover
		$controlA.click(function(){
		    // 取得目前點擊的號碼
		    //var chagnindex = $(this).text().substr(0, 1)
		    var chagnindex = $(this).attr('sort').substr(0, 1)
		    showIndex = chagnindex * 1 - 1;
		    if (chagnindex == 'C') { showIndex = 10; }
		    if (chagnindex == 'N') { showIndex = 11; }
		    if (chagnindex == '') { showIndex = 12; }
			// 顯示相對應的區域並把其它區域變成透明
			$ad.eq(showIndex).stop().fadeTo(fadeInSpeed, 1, function(){
				if(!isHover){
					// 啟動計時器
					timer = setTimeout(autoClick, speed + fadeInSpeed);
				}
			}).css('zIndex', defaultZ).siblings('a').stop().fadeTo(fadeOutSpeed, 0).css('zIndex', defaultZ - 1);
			// 讓 a 加上 .on
			$(this).addClass('on').siblings().removeClass('on');

			return false;
		}).focus(function(){
			$(this).blur();
		}).eq(showIndex).addClass('on');

		$block.hover(function(){
			isHover = true;
			// 停止計時器
			clearTimeout(timer);
		}, function(){
			isHover = false;
			// 啟動計時器
			timer = setTimeout(autoClick, speed);
		})
		
		// 自動點擊下一個
		function autoClick(){
			if(isHover) return;
			showIndex = (showIndex + 1) % $controlA.length;
			$controlA.eq(showIndex).click();
		}
		
		// 啟動計時器
		timer = setTimeout(autoClick, speed);
	});