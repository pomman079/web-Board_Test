//메인 동영상 레이어 팝업
function movieLayer(mv_url){
var movieStart = $('.thumb_movie .moviePageGo a');
var mainMovie = $('#movie_area');
var movieClose = $('#movie_area .close, #pop_movie .bg');

		function loadMovie(){
				mainMovie.tubeplayer({
						width: 718,
						height: 480,
						autoPlay: 0,
						allowFullScreen: "true",
						initialVideo: mv_url, //"XGdbaEDVWp0"
						preferredQuality: "default"
				});
		}

		movieStart.on('click', function(e){
				e.preventDefault();
				loadMovie();
				var self = $(this);
				var href = self.attr('href');

				var winW = $(window).width();
				var winH = $(window).height();
				var mainMoviePosL = winW - winW/2 - mainMovie.width()/2;
				var mainMoviePosT= winH - winH/2 - mainMovie.height()/2 + $(window).scrollTop();
				mainMovie.css({'left':mainMoviePosL + 'px', 'top':mainMoviePosT+'px'});

				$(href).show();
		});

		movieClose.on('click', function(){
				var self = $(this);
				self.parents('#pop_movie').hide();
				mainMovie.tubeplayer('stop');
		});
}

function tasterMovie(){
		//NAE 맛보기 유튜브 영상 제어
		var movieGroup = $('.movie_taster');
		var movieLi = $('.movie_taster li');
		var moviePaging = $('.paging ol');
		var movieLength = movieLi.length;
		var movieCnt = 0;

		function youtubeGroup(obj, src){
				$(obj).tubeplayer({
						width: 720,
						height: 405,
						allowFullScreen: "true",
						initialVideo: src,
						preferredQuality: "default"
				});
		}

		if(typeof(youtubeObj) !== 'undefined'){
				$.each(youtubeObj, function(idx){
						youtubeGroup(youtubeObj[idx].obj, youtubeObj[idx].src);
						moviePaging.append('<li><a href="#" data-idx="'+ idx +'"></a></li>');
				});
		}

		var pagingObj = $('.paging ol li');
		var pagingCache = $(pagingObj[0]).children();
		pagingCache.addClass('on');

		$(document).on('click', '.movie_slide .paging a', function(e){
				e.preventDefault();
				var self = $(this);
				var dataIdx = self.attr('data-idx');
				$.each(youtubeObj, function(idx){
						$(youtubeObj[idx].obj).tubeplayer('stop');
				});
				movieCnt = dataIdx;
				pagingCache.removeClass('on');
				self.addClass('on');
				pagingCache = self;
				movieLi.hide();
				$(movieLi[movieCnt]).show();
		});


		$('#taster .btn_dir button').on('click', function(){
				var self = $(this);
				$.each(youtubeObj, function(idx){
						$(youtubeObj[idx].obj).tubeplayer('stop');
				});
				//$("#movie1, #movie2, #movie3").tubeplayer('stop');
				if(self.hasClass('next')){
						if(movieCnt >= movieLength - 1){
								movieCnt = 0
						}else{
								movieCnt++
						}
				}else{
						if(movieCnt <= 0){
								movieCnt = movieLength - 1
						}else{
								movieCnt--
						}
				}

				movieLi.hide();
				$(movieLi[movieCnt]).show();
				pagingCache.removeClass('on');
				$(pagingObj[movieCnt]).children().addClass('on');
				pagingCache = $(pagingObj[movieCnt]).children();
		});
}

(function ($, w, d){
		$(d).ready(function(){
				// 로그인 레이어 팝업 위치 및 close 제어
				/*var winW = $(w).width(),
						winH = $(w).height(),
						docH = $(d).height(),
						loginObj = $('#pop_login .login_area'),
						loginW = loginObj.width(),
						loginH = loginObj.height(),
						loginPosX = winW - winW/2 - loginW/2,
						loginPosY = winH - winH/2 - loginH/2,
						loginClose = $('#pop_login .close, #pop_login .bg');

				loginObj.css({'left' : loginPosX +'px', 'top' : loginPosY + 'px'});

				$(w).on('resize', function(){
						winW = $(w).width();
						winH = $(w).height();
						loginPosX = winW - winW/2 - loginW/2;
						loginPosY = winH - winH/2 - loginH/2;
						loginObj.css({'left' : loginPosX +'px', 'top' : loginPosY + 'px'});
				});

				loginClose.on('click', function(){
						$(this).parents('#pop_login').hide();
						//$('#pop_login .type_txt input');
				});

				$('.pop_login').on('click', function(e){
						e.preventDefault();
						$('#pop_login').show();
				});*/

				//상단 gnb
				var nav = $('#header nav');
				var navLink = $('.gnb h2 a, .gnb .menu, .nav_banner a');
				var navBanner = $('.nav_banner');
				var navBg = $('.gnb_bg');
				var navLi = $('.gnb .depth1');
				var navMenu = $('.gnb .depth1 .menu');
				var minNum = 6;
				var minusNum= 0 ;
				var liArr = [];
				for(var i = 0; i < navLi.length; i++){
						liArr[i] = $(navLi[i]).children('.menu').children().length;
				}

				//최대값
				var max = Math.max.apply(null, liArr);

				if(max > 6){
						minusNum = max - minNum;
						navMenu.css('height', '+=' + (40) * minusNum + 'px');
						navBg.css('height', '+=' + 40 * minusNum + 'px');
				}

				function actFunc(){
						navBanner.show();
						navBg.show();
						navMenu.show();
				};
				function nonActFunc(){
						navBanner.hide();
						navBg.hide();
						navMenu.hide();
				};

				navLink.on('mouseenter', function(){
						var self = $(this);
						actFunc();
						self.parents('.depth1').addClass('on');
				}).on('mouseleave', function(){
						nonActFunc();
						$('.depth1').removeClass('on');
				}).on('focus', function(){
						actFunc();
				});
				$('.gnb .menu li:last-child a').on('blur', function(){
						nonActFunc();
				});

				// 메인 add_slide 인터랙션
				var addSlideObj = [{
						objUl : $('#recommend ul'),
						objLi : $('#recommend li'),
						nowNum :$('#recommend .num_now'),
						totalNum :$('#recommend .num_total'),
						cnt : 0,
						dir : $('#recommend .btn_dir button')
				}, {
						objUl : $('#union ul'),
						objLi : $('#union li'),
						nowNum :$('#union .num_now'),
						totalNum :$('#union .num_total'),
						cnt : 0,
						dir : $('#union .btn_dir button')
				}, {
						objUl : $('#sub_promotion ul'),
						objLi : $('#sub_promotion li'),
						nowNum :$('#sub_promotion .num_now'),
						totalNum :$('#sub_promotion .num_total'),
						cnt : 0,
						dir : $('#sub_promotion .btn_dir button')
				}];
				var reverseRoom = [];
				$.each(addSlideObj, function(idx){
						reverseRoom[idx] = addSlideObj[idx].objLi.get().reverse();
						addSlideObj[idx].objLi.remove();
						for(var i = 0; i < reverseRoom[idx].length; i++){
								addSlideObj[idx].objUl.append(reverseRoom[idx][i]);
						}
						addSlideObj[idx].totalNum.text(addSlideObj[idx].objLi.length);

				});

				var repeatSpeed = 4000;
				var recommRepeat;
				var unionRepeat;
				var subBnRepeat;
				var recommTimer;
				var unionTimer;
				var subBnTimer;
				var sec = 0;
				var isClick = true;
				var recommendLi = $('#recommend li');
				var recommCache = $('#recommend li:first-child');
				var unionLi = $('#union li');
				var unionCache = $('#union li:first-child');
				var subBnLi = $('#sub_promotion li');
				var subBnCache = $('#sub_promotion li:first-child');
				var recommPage = 0;
				var unionPage = 0;
				var subBnPage = 0;
				var repeatFunc1 = function(){
						if(addSlideObj[0].cnt >= recommendLi.length - 1){
								addSlideObj[0].cnt = 0;
						}else{
								addSlideObj[0].cnt++;
						}
						recommendLi.hide();
						$(recommendLi[addSlideObj[0].cnt]).show();
						recommCache = $(recommendLi[addSlideObj[0].cnt]);
						recommPage = addSlideObj[0].cnt + 1;
						$('#recommend .num_now').text(recommPage);

				};
				var repeatFunc2 = function(){
						if(addSlideObj[1].cnt >= unionLi.length - 1){
								addSlideObj[1].cnt = 0;
						}else{
								addSlideObj[1].cnt++;
						}
						unionLi.hide();
						$(unionLi[addSlideObj[1].cnt]).show();
						unionCache = $(unionLi[addSlideObj[1].cnt]);
						unionPage = addSlideObj[1].cnt + 1;
						$('#union .num_now').text(unionPage);

				};
				var repeatFunc3 = function(){
						if(addSlideObj[2].cnt >= subBnLi.length - 1){
								addSlideObj[2].cnt = 0;
						}else{
								addSlideObj[2].cnt++;
						}
						subBnLi.hide();
						$(subBnLi[addSlideObj[2].cnt]).show();
						subBnCache = $(subBnLi[addSlideObj[2].cnt]);
						subBnPage = addSlideObj[2].cnt + 1;
						$('#sub_promotion .num_now').text(subBnPage);
				};

				var termFunc1 = function(){
						sec++;
						if(sec >= 10){
								clearInterval(recommTimer);
								recommRepeat = setInterval(repeatFunc1, repeatSpeed);
						}
				};

				var termFunc2 = function(){
						sec++;
						if(sec >= 10){
								clearInterval(unionTimer);
								unionRepeat = setInterval(repeatFunc2, repeatSpeed);
						}
				};

				var termFunc3 = function(){
						sec++;
						if(sec >= 10){
								clearInterval(subBnTimer);
								subBnRepeat = setInterval(repeatFunc3, repeatSpeed);
						}
				};


				if(addSlideObj[0].objLi.length < 2){
						$('#recommend .btn_dir').hide();
				}else{
						recommRepeat = setInterval(repeatFunc1, repeatSpeed);
				}

				if(addSlideObj[1].objLi.length < 2){
						$('#union .btn_dir').hide();
				}else{
						unionRepeat = setInterval(repeatFunc2, repeatSpeed);
				}

				if(addSlideObj[2].objLi.length < 2){
						$('#sub_promotion .btn_dir').hide();
				}else{
						subBnRepeat = setInterval(repeatFunc3, repeatSpeed);
				}

				function addSlide(self, obj, target){
						if(self.hasClass('next')){ // next 버튼 클릭 시
								if(obj.cnt >= obj.objLi.length - 1){
										obj.cnt = 0;
								}else{
										obj.cnt++;
								}
						}else{
								if(obj.cnt == 0){
										obj.cnt = obj.objLi.length - 1;
								}else{
										obj.cnt--;
								}
						}
						target.hide();
						$(target[obj.cnt]).show();
						obj.nowNum.text(obj.cnt + 1)
						isClick = true;
				}


				$('.add_slide .btn_dir button').on('click', function(){
						if(isClick && !$(this).parents('.add_slide').hasClass('curriculum')){
								isClick = false;
								var self = $(this);
								var slideType = self.parents('.add_slide').attr('id');
								var targetSlide = $('#' + slideType).children('.mask').children().children();

								if(slideType == 'recommend'){ // 추천 프로그램 slide
										clearInterval(recommRepeat);
										clearInterval(recommTimer);
										addSlide(self, addSlideObj[0], targetSlide);
										recommTimer = setInterval(termFunc1, 100);
								}else if(slideType == 'union'){ // 결합 상품 안내 slide
										clearInterval(unionRepeat);
										clearInterval(unionTimer);
										addSlide(self, addSlideObj[1], targetSlide);
										unionTimer = setInterval(termFunc2, 100);
								}else if(slideType == 'sub_promotion'){ // 결합 상품 안내 slide
										clearInterval(subBnRepeat);
										clearInterval(subBnTimer);
										addSlide(self, addSlideObj[2], targetSlide);
										subBnTimer = setInterval(termFunc3, 100);
								}
						}

				});


				// 커리큘럼 슬라이드
				var curriculumLi = $('.curriculum li');
				var curriCache = $(curriculumLi[0]);
				var curriNowNum = $('.curriculum .num_now');
				var curritotalNum = $('.curriculum .num_total');
				var curriCnt = 0;

				curritotalNum.text(curriculumLi.length);
				$('.curriculum.add_slide .btn_dir button').on('click', function(){
						var self = $(this);
						if(self.hasClass('next')){
								if(curriCnt >= curriculumLi.length - 1){
										curriCnt = 0
								}else{
										curriCnt++
								}
						}else{
								if(curriCnt <= 0){
										curriCnt = curriculumLi.length - 1
								}else{
										curriCnt--
								}
						}
						curriCache.hide();
						$(curriculumLi[curriCnt]).show();
						curriCache = $(curriculumLi[curriCnt]);
						curriNowNum.text(curriCnt+1);
				});

				// 플레이스 홀더
				$('input[placeholder], textarea[placeholder]').placeholder();

				// 커스텀 셀렉트
				$('.custom_select .txt').each(function(){
						$(this).text($(this).next('select').val());
				});
				$('.custom_select select').change(function(){
						$(this).prev('.txt').text($(this).val());
				});
				$('.custom_select select').focusin(function(){
						$(this).parents('.customSelect').addClass('customSelectF');
				});
				$('.custom_select select').focusout(function(){
						$(this).parents('.customSelect').removeClass('customSelectF');
				});

				// 상단 banner 제어
				var isClose = false;
				$('.top_banner').css({'height': '120px'});
				$('.top_banner .close').on('click', function(){
						var self = $(this);
						self.parents('.top_banner').stop().animate({'height': '0'}, 200, function(){
								isClose = true;
								$(this).remove();

						});
				});

				// 오른쪽 공통 퀵메뉴 제어
				var quickMenu = $('#quick_menu');
				var quickMenuH;
				var footerH = $('#footer').height();
				var topBtn = $('#quick_menu .btn_top a');
				var body = $('body, html');
				var scrollTop = 0;
				//var isScroll = true;
				var targetH;

				$(w).on('load', function(){
						quickMenuH = quickMenu.height();
						if($('#contents').children().hasClass('write_wrap')){
								docH = 1500;
						}else{
								docH = $(d).height();
						}
						targetH = docH - footerH - quickMenuH - 250;
						//문서높이 - 푸터높이 - 퀵메뉴높이 - 상단높이
						$(this).on('scroll', function() {
								scrollTop = $(this).scrollTop();
								if(scrollTop > targetH){
										quickMenu.stop(true,true);
								}else{
										quickMenu.stop().animate({'top': scrollTop + 'px'},400);
								};

						});
				});

				topBtn.on('click', function(e){
						e.preventDefault();
						body.animate({'scrollTop' : 0}, 500);
				});



				// 첨부파일 레이어 박스
				var layerShowBtn = $('.view_wrap .btn_file');
				var layerCloseBtn = $('.layer_pop .btn_close');
				layerShowBtn.on('click', function(e){
						e.preventDefault();
						var self = $(this);
						self.parents('.layer_area').children('.layer_pop').show();
				});
				layerCloseBtn.on('click', function(){
						var self = $(this);
						self.parent().hide();
				});

				// textarea placeholder 효과
				var textarea = $('.apply_textarea textarea');
				var val;

				$(d).on('focus', '.apply_textarea textarea', function () {
						var self = $(this);
						self.parent().children('label').hide();
				}).on('blur', '.apply_textarea textarea', function() {
						var self = $(this);
						val = self.val();
						if (val) {
								self.parent().children('label').hide();
						} else {
								self.parent().children('label').show();
						}
				});


						// 고객센터 faq 인터렉션
				//var titleLI = $('.list_faq .depth1_ul li');
				var titleLink = $('.list_faq .title_link');
				var allDetail = $('.list_faq .detail');
				var faqClose = $('.list_faq .btn_close');
				var selfDetail;
				var selfIdx;
				var selfActive = true;
				titleLink.on('click', function(e){
						e.preventDefault();
						var self = $(this);
						selfDetail = self.parent().children('.detail');
						if(self.parent().index() == selfIdx){
								if(selfActive){
										selfActive = false;
										selfDetail.hide();
										self.children().children('.ico').css('background-position', '0 -9px');
								}else{
										selfActive = true;
										selfDetail.show();
										self.children().children('.ico').css('background-position', '0 0');
								}
						}else{
								selfActive = true;
								allDetail.hide();
								selfDetail.show();
								titleLink.children().children('.ico').css('background-position', '0 -9px');
								self.children().children('.ico').css('background-position', '0 0');
						}
						selfIdx = self.parents().index();
				});
				$(d).on('click', '.list_faq .btn_close', function () {
						var self = $(this);
						selfActive = false;
						self.parents('.detail').hide();
				});

				//수강신청 정렬
				$('.product_area li:nth-child(2n-1)').addClass('odd');



		// NAE 소개 - contents & structure Tab
				$('#con_struc .box1 li button').on('click', function(){
						var self = $(this);
						$('#con_struc .box1 li').removeClass('on');
						self.parent().addClass('on');
				});

				// 고객센터 FAQ 자주 묻는 질문 레이어 제어
				$('.quick_list li a, .list .faq li a').click(function(e){
						id = $(this).attr('key');
						$('#layer_faq div.innerWrap').load('/Customer/FaqView.aspx?id='+id);
						$('#layer_faq').show();
						$('#layer_faq .btnClose button').focus();
						e.preventDefault();
				});
				$('#layer_faq .btnClose button').click(function(){
						$('#layer_faq').hide();
				});
				if($('div').hasClass('main')){
						$('#layer_faq .overlay').css('height', '2060px');
				}else{
						$('#layer_faq .overlay').css('height', '1719px');
				}



		//익스이서 iframe z-index문제
		$("iframe").each(function(){
			var ifr_source = $(this).attr('src');
			var wmode = "wmode=transparent";
				if(ifr_source.indexOf('?') != -1) $(this).attr('src',ifr_source+'&'+wmode);
			else $(this).attr('src',ifr_source+'?'+wmode);
		});

		// 게임 스타트 효과
		pika(500);
		function pika(sp){
			var startBtn = $('.side .start .bg_img');
			startBtn.stop().animate({'opacity':'1'},sp,function(){
				startBtn.stop().animate({'opacity':'0.1'},sp,function(){
					pika(sp);
				});
			});
		}
		dongdong(800);
		function dongdong(sp){
			var startBtnHeadset = $('.side .start .headset');
			startBtnHeadset.stop().animate({'top':'35px'},sp,'',function(){
				startBtnHeadset.stop().animate({'top':'55px'},sp,'easeInSine',function(){
					dongdong(sp);
				});
			});
		}

		//최상단 topBanner(최근이미지 위로 쌓임)
		function changeTopBanner(intervalTime){
			var bannerImgWrap = $('.top_banner .img_wrap');
			var imglength = bannerImgWrap.children('div').length;
			var imgPreInx = 0;
			var imgIdx = 0;
			var imgChangeInterval = intervalTime;

			bannerImgWrap.children('div').eq(0).css('display','block');
			setInterval(function() {
				imgPreInx = imgIdx;
				bannerImgWrap.children('div').eq(imgPreInx).css('display','none');
				imgIdx++;
				if( imgIdx === imglength ) imgIdx=0;
				bannerImgWrap.children('div').eq(imgIdx).css('display','block');
			}, imgChangeInterval);
		}
		changeTopBanner(5000);

	// S : 2016-03-04
		//광고 동영상 보기
		function videoCM(mv_url){
			var btnVideoCM = $('#quick_menu .btn_videoCM');
			var CMVideo = $('#pop_videoCM .video_area');
			var movieClose = $('#pop_videoCM .close, #pop_videoCM .bg');

				function loadMovie(){
					CMVideo.tubeplayer({
							width: 718,
							height: 480,
							autoPlay: 0,
							allowFullScreen: "true",
							initialVideo: mv_url, //"XGdbaEDVWp0"
							preferredQuality: "default"
					});
				}

				btnVideoCM.on('click', function(e){
					e.preventDefault();
					loadMovie();
					var self = $(this);
					var href = self.attr('href');
					/* var winW = $(window).width();
					var winH = $(window).height();
					var CMVideoPosL = winW - winW/2 - CMVideo.width()/2;
					var CMVideoPosT= winH - winH/2 - CMVideo.height()/2 + $(window).scrollTop();
					CMVideo.css({'left':CMVideoPosL + 'px', 'top':CMVideoPosT+'px'});*/
					$(href).show();
				});

				movieClose.on('click', function(){
					var self = $(this);
					self.parents('#pop_videoCM').hide();
					CMVideo.tubeplayer('stop');
				});
		}
		videoCM("NG1AuDItuzc");

		//유투브 동영상 들어가는부분 영상 주소 바꾸기
		function CMyoutubeChange(key){
			var youtubeIframe = $('iframe.movieCM'); //about오잉, 프로그램설치, 처음오셨나요? youtube iframe
			var changeUrl = 'https://www.youtube.com/embed/' + key + '?vq=hd1080&modestbranding=1&showinfo=0&rel=0&enablejsapi=1';
			youtubeIframe.attr('src',changeUrl);
		}
		CMyoutubeChange('NG1AuDItuzc'); //바뀌는 영상주소 삽입
	// E : 2016-03-04

	});
})(jQuery, window, document);



//제이쿼리 이징
jQuery.easing['jswing']=jQuery.easing['swing'];jQuery.extend(jQuery.easing,{def:'easeOutQuad',swing:function(x,t,b,c,d){return jQuery.easing[jQuery.easing.def](x,t,b,c,d);},easeInQuad:function(x,t,b,c,d){return c*(t/=d)*t+b;},easeOutQuad:function(x,t,b,c,d){return-c*(t/=d)*(t-2)+b;},easeInOutQuad:function(x,t,b,c,d){if((t/=d/2)<1)return c/2*t*t+b;return-c/2*((--t)*(t-2)-1)+b;},easeInCubic:function(x,t,b,c,d){return c*(t/=d)*t*t+b;},easeOutCubic:function(x,t,b,c,d){return c*((t=t/d-1)*t*t+1)+b;},easeInOutCubic:function(x,t,b,c,d){if((t/=d/2)<1)return c/2*t*t*t+b;return c/2*((t-=2)*t*t+2)+b;},easeInQuart:function(x,t,b,c,d){return c*(t/=d)*t*t*t+b;},easeOutQuart:function(x,t,b,c,d){return-c*((t=t/d-1)*t*t*t-1)+b;},easeInOutQuart:function(x,t,b,c,d){if((t/=d/2)<1)return c/2*t*t*t*t+b;return-c/2*((t-=2)*t*t*t-2)+b;},easeInQuint:function(x,t,b,c,d){return c*(t/=d)*t*t*t*t+b;},easeOutQuint:function(x,t,b,c,d){return c*((t=t/d-1)*t*t*t*t+1)+b;},easeInOutQuint:function(x,t,b,c,d){if((t/=d/2)<1)return c/2*t*t*t*t*t+b;return c/2*((t-=2)*t*t*t*t+2)+b;},easeInSine:function(x,t,b,c,d){return-c*Math.cos(t/d*(Math.PI/2))+c+b;},easeOutSine:function(x,t,b,c,d){return c*Math.sin(t/d*(Math.PI/2))+b;},easeInOutSine:function(x,t,b,c,d){return-c/2*(Math.cos(Math.PI*t/d)-1)+b;},easeInExpo:function(x,t,b,c,d){return(t==0)?b:c*Math.pow(2,10*(t/d-1))+b;},easeOutExpo:function(x,t,b,c,d){return(t==d)?b+c:c*(-Math.pow(2,-10*t/d)+1)+b;},easeInOutExpo:function(x,t,b,c,d){if(t==0)return b;if(t==d)return b+c;if((t/=d/2)<1)return c/2*Math.pow(2,10*(t-1))+b;return c/2*(-Math.pow(2,-10*--t)+2)+b;},easeInCirc:function(x,t,b,c,d){return-c*(Math.sqrt(1-(t/=d)*t)-1)+b;},easeOutCirc:function(x,t,b,c,d){return c*Math.sqrt(1-(t=t/d-1)*t)+b;},easeInOutCirc:function(x,t,b,c,d){if((t/=d/2)<1)return-c/2*(Math.sqrt(1-t*t)-1)+b;return c/2*(Math.sqrt(1-(t-=2)*t)+1)+b;},easeInElastic:function(x,t,b,c,d){var s=1.70158;var p=0;var a=c;if(t==0)return b;if((t/=d)==1)return b+c;if(!p)p=d*.3;if(a<Math.abs(c)){a=c;var s=p/4;}else var s=p/(2*Math.PI)*Math.asin(c/a);return-(a*Math.pow(2,10*(t-=1))*Math.sin((t*d-s)*(2*Math.PI)/p))+b;},easeOutElastic:function(x,t,b,c,d){var s=1.70158;var p=0;var a=c;if(t==0)return b;if((t/=d)==1)return b+c;if(!p)p=d*.3;if(a<Math.abs(c)){a=c;var s=p/4;}else var s=p/(2*Math.PI)*Math.asin(c/a);return a*Math.pow(2,-10*t)*Math.sin((t*d-s)*(2*Math.PI)/p)+c+b;},easeInOutElastic:function(x,t,b,c,d){var s=1.70158;var p=0;var a=c;if(t==0)return b;if((t/=d/2)==2)return b+c;if(!p)p=d*(.3*1.5);if(a<Math.abs(c)){a=c;var s=p/4;}else var s=p/(2*Math.PI)*Math.asin(c/a);if(t<1)return-.5*(a*Math.pow(2,10*(t-=1))*Math.sin((t*d-s)*(2*Math.PI)/p))+b;return a*Math.pow(2,-10*(t-=1))*Math.sin((t*d-s)*(2*Math.PI)/p)*.5+c+b;},easeInBack:function(x,t,b,c,d,s){if(s==undefined)s=1.70158;return c*(t/=d)*t*((s+1)*t-s)+b;},easeOutBack:function(x,t,b,c,d,s){if(s==undefined)s=1.70158;return c*((t=t/d-1)*t*((s+1)*t+s)+1)+b;},easeInOutBack:function(x,t,b,c,d,s){if(s==undefined)s=1.70158;if((t/=d/2)<1)return c/2*(t*t*(((s*=(1.525))+1)*t-s))+b;return c/2*((t-=2)*t*(((s*=(1.525))+1)*t+s)+2)+b;},easeInBounce:function(x,t,b,c,d){return c-jQuery.easing.easeOutBounce(x,d-t,0,c,d)+b;},easeOutBounce:function(x,t,b,c,d){if((t/=d)<(1/2.75)){return c*(7.5625*t*t)+b;}else if(t<(2/2.75)){return c*(7.5625*(t-=(1.5/2.75))*t+.75)+b;}else if(t<(2.5/2.75)){return c*(7.5625*(t-=(2.25/2.75))*t+.9375)+b;}else{return c*(7.5625*(t-=(2.625/2.75))*t+.984375)+b;}},easeInOutBounce:function(x,t,b,c,d){if(t<d/2)return jQuery.easing.easeInBounce(x,t*2,0,c,d)*.5+b;return jQuery.easing.easeOutBounce(x,t*2-d,0,c,d)*.5+c*.5+b;}});

