(function ($, w, d){
    $(d).ready(function(){

        //S : 프로모션 배너
        var mainPtomotionSpeed = 7000;
        var mainPtomotionViewThumbLen = 3; //보이는 썸네일 개수
        var mainPtomotion = $('#main_promotion_center');
        var mainPtomotionThumbUl = mainPtomotion.find('.thumb_wrap ul');
        var mainPtomotionThumbLi = mainPtomotion.find('.thumb_wrap li');
        var mainPtomotionThumbLiW = parseInt(mainPtomotionThumbLi.css('width'));
        var mainPtomotionThumbMoveW = mainPtomotionThumbLiW * mainPtomotionViewThumbLen; //썸네일이 슬라이드 될 거리(썸네일당 width*보이는 개수)
        var mainPtomotionViewUl = mainPtomotion.find('.view ul');
        var mainPtomotionViewLi = mainPtomotion.find('.view li');
        var mainPtomotionViewLiLen = mainPtomotionViewLi.length;
        var mainPtomotionDataIdx = 0;
        var mainPtomotionCurDataIdx = 0;
        var mainPtomotionCheck = true;
        var mainPtomotionThumbSlide = true;//썸네일 슬라이드 여부
        var mainPtomotionInterval;
        var mainPtomotionReverseThumbArr = mainPtomotionThumbLi.get().reverse();
        var mainPtomotionReverseViewArr = mainPtomotionViewLi.get().reverse();

        //프로모션 세팅
        if(mainPtomotionViewLiLen <= 1) mainPtomotionCheck = false;//썸네일개수 1개면 아무것도 동작 안함
        else if(mainPtomotionViewLiLen <= mainPtomotionViewThumbLen)mainPtomotionThumbSlide = false;//보이는썸네일개수 이하면 썸네일 슬라이드 동작 안함
        mainPtomotionThumbLi.remove();
        mainPtomotionViewLi.remove();
        for(var i = 0; i < mainPtomotionViewLiLen; i++){
            mainPtomotionThumbUl.append(mainPtomotionReverseThumbArr[i]);
            mainPtomotionThumbUl.find('li').eq(i).attr('data-idx',i);//이부분 문자열 추가로 바꿔보기
            mainPtomotionViewUl.append(mainPtomotionReverseViewArr[i]);
            if(i == mainPtomotionViewLiLen-1){//마지막에 썸네일 첫번째 li에 on클래스 추가하고 뷰 첫번째 li 보이기
                mainPtomotionViewLi = $('.view li');
                mainPtomotionThumbLi = $('.thumb_wrap li');
                mainPtomotionThumbLi.eq(0).addClass('on');
                mainPtomotionViewLi.eq(0).show();
            }
        }

        //썸네일 버튼 클릭시
        $(document).on('click', '.thumb_wrap a',function(e){
            e.preventDefault();
            if(mainPtomotionCheck){
                mainPtomotionDataIdx = $(this).parent().attr('data-idx');
                if(mainPtomotionCurDataIdx == mainPtomotionDataIdx){
                    return false;
                }
                slider_focus();
            }
        });

        //이전버튼 클릭시
        var prevBtn = $('.controller .prev');
        var thumbWrapUl = $('.thumb_wrap ul');
        var cloneObj;

        prevBtn.on('click',function(){
            mainPtomotionThumbLi = mainPtomotionThumbUl.find('li');//li가 지우고 다시써지기 때문에 다시 가져와야함
            if(mainPtomotionCheck){
                var prevIdx =  mainPtomotionThumbUl.find('[data-idx='+mainPtomotionDataIdx+']').prev().attr('data-idx');
                mainPtomotionDataIdx = prevIdx || parseInt(mainPtomotionDataIdx) - 1;//mainPtomotionDataIdx는 prevIdx가 존재하면 prevIdx, 존재하지 않으면 마지막 li번호
                if(!prevIdx && mainPtomotionThumbSlide){
                    mainPtomotionCheck = false;
                    for(var i = mainPtomotionThumbLi.length - 1; i >= mainPtomotionThumbLi.length - mainPtomotionViewThumbLen; i--){
                        cloneObj = $(mainPtomotionThumbLi[i]).clone();
                        cloneObj.prependTo(thumbWrapUl);
                    }
                    thumbWrapUl.css('left', -(mainPtomotionThumbMoveW) +'px');
                    thumbWrapUl.stop().animate({'left': '0'},600, function(){
                        for(var i = mainPtomotionThumbLi.length; i >= mainPtomotionThumbLi.length - mainPtomotionViewThumbLen; i--){
                            $(mainPtomotionThumbLi[i]).remove();
                            $(this).css('left', '0');
                            mainPtomotionCheck = true;
                        }
                    });
                }
                slider_focus();
            }
        });

        //다음버튼 클릭시
        var nextBtn = $('.controller .next');
        nextBtn.on('click',function(){
            mainPtomotionThumbLi = mainPtomotionThumbUl.find('li');//li가 지우고 다시써지기 때문에 다시 가져와야함.
            if(mainPtomotionCheck) {
                var nextIdx = mainPtomotionThumbUl.find('[data-idx='+mainPtomotionDataIdx+']').next().attr('data-idx');
                mainPtomotionDataIdx = nextIdx;
                if(nextIdx == mainPtomotionThumbLi.eq(mainPtomotionViewThumbLen).attr('data-idx') && mainPtomotionThumbSlide){
                    mainPtomotionCheck = false;
                    for(var i = 0; i < mainPtomotionViewThumbLen; i++){
                        cloneObj = $(mainPtomotionThumbLi[i]).clone();
                        cloneObj.appendTo(thumbWrapUl);
                    }
                    thumbWrapUl.stop().animate({'left': -(mainPtomotionThumbMoveW) + 'px'},600,function(){
                        for(var i = 0; i < mainPtomotionViewThumbLen; i++){
                            $(mainPtomotionThumbLi[i]).remove();
                            mainPtomotionCheck = true;
                        }
                        $(this).css('left', '0');
                    });
                }
                slider_focus();
            }
        });

        //오토롤링
        promoAuto = function(){
            nextBtn.trigger('click');
        };
        mainPtomotionInterval = setInterval(promoAuto,mainPtomotionSpeed);

        //번호를 넣으면 해당 번호로 포커스가 가고 뷰가 보이는 함수
        function slider_focus(){
            clearInterval(mainPtomotionInterval);
            mainPtomotionInterval = setInterval(promoAuto,mainPtomotionSpeed);
            if( mainPtomotionDataIdx < 0){//맨앞번호 li면 마지막 li로 감
                mainPtomotionDataIdx = mainPtomotionViewLiLen - 1;
            }
            else if(mainPtomotionDataIdx > mainPtomotionViewLiLen - 1 || !mainPtomotionDataIdx){//맨뒷번호 li이거나, 뒷번호 li가 더이상 없으면(썸네일 슬라이드되지 않는 경우) 맨 앞li로 감
                mainPtomotionDataIdx = 0;
            }
            mainPtomotionViewLi.eq(mainPtomotionDataIdx).show();
            mainPtomotionViewLi.eq(mainPtomotionCurDataIdx).hide();
            mainPtomotionThumbUl.find('[data-idx='+mainPtomotionDataIdx+']').addClass('on');
            mainPtomotionThumbUl.find('[data-idx='+mainPtomotionCurDataIdx+']').removeClass('on');
            mainPtomotionCurDataIdx = mainPtomotionDataIdx;
        }
        //E : 프로모션 배너
    });
})(jQuery, window, document);

