<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="WebTest.Board.View" %>

<!doctype html>
<html lang="ko" xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="author" content="한빛소프트 서비스개발팀" />
<meta name="subject" content="당신의 인생을 바꿀 단 한가지 영어 학습 습관! '오잉(Oh! English)'"/>
<meta name="description" content="보고, 듣고, 말하며 자연스럽게 익히는 영어 학습 프로그램 '오잉(Oh! English)', 단어 학습과 흥미로운 스피킹 연습으로 학습 동기를 높이며, 학습자에게 맞는 학습관리 시스템과 다양한 참여 컨텐츠를 통해 영어 말하기 실력을 키울 수 있습니다.">
<meta name="keywords" content="오잉,OhEnglish,English,뉴오디션잉글리시,뉴오잉,뉴오디션잉글리쉬,오디션잉글리시,NAE,학습,영어학습,영어말하기,e-learning,영어학습프로그램,어휘공부,생활영어,영어공부">
<title>오잉(Oh! English) | 1:1 영어말하기 전문학습 프로그램</title>
<link rel="stylesheet" href="../css/style.css" />
<script src="../js/jq-1.10.2.js"></script>
<script src="../js/placeholder.js"></script>
<script src="../js/html5.js"></script>
<script src="../js/nae_common.js"></script>
    <title></title>
</head>


    
<body>
    <form id="form1" runat="server">
        <div class="top_banner">
    <div class="inner">
        <img src="../images/common/img_top_banner.png" alt="영어로 자유롭게 대화를 하고 싶으신가요? NAE"/>
        <button type="button" class="close"><img src="../images/common/btn_close_banner.png" alt="close"/></button>
    </div>
</div>

<div id="wrap">
    <!-- S : header -->
    <header id="header">
        <div class="inner">
            <h1><a href="#"><img src="../images/common/img_logo.png" alt="NEW AUDITION ENGLISH"/></a></h1>

         </div>
        <nav>
            <div class="inner clearFix">
                <div class="nav_banner">
                    <a href="#"><img src="../images/common/img_240X243.gif" alt="상단 배너"/></a>
                </div>
                <!-- S : 2015-09-14 메뉴 이름 변경 -->
                <ul class="gnb clearFix">
                    <li class="depth1">
                        <h2 class="intro"><a href="#">오잉 소개</a></h2><!-- ★2015-12-04 수정 -->
                        <ul class="menu">
                            <li><a href="#">About 오잉</a></li><!-- ★2015-12-04 수정 -->
                            <li><a href="#">Contents &amp; Structure</a></li>
                            <li><a href="#">습득법 및 효과</a></li>
                            <li><a href="#">커리큘럼</a></li><!-- ★2015-12-04 수정 -->
                            <li><a href="#">처음오셨나요?</a></li><!-- ★2015-12-04 수정 -->
                            <li><a href="#">프로그램 설치</a></li>
                        </ul>
                    </li>
                    <li class="depth1">
                        <h2 class="free"><a href="#">오잉 체험</a></h2><!-- ★2015-12-04 수정 -->
                        <ul class="menu">
                            <li><a href="#">오잉 맛보기</a></li><!-- ★2015-12-04 수정 -->
                            <li><a href="#">레벨 테스트</a></li>
                            <li><a href="#">무료 체험권</a></li>
                        </ul>
                    </li>
                    <li class="depth1">
                        <h2 class="request"><a href="#">수강 신청</a></h2>
                        <ul class="menu">
                            <li><a href="#">수강신청</a></li>
                        </ul>
                    </li>
                    <li class="depth1">
                        <h2 class="comm"><a href="#">커뮤니티</a></h2>
                        <ul class="menu">
                            <li><a href="#">광장</a></li>
                            <li><a href="#">수강후기</a></li>
                            <li><a href="#">오잉체험영상</a></li><!-- ＠2015-12-11 추가 -->
                            <li><a href="#">뉴스&amp;정보</a></li><!-- ★2015-12-04 추가 -->
                        </ul>
                    </li>
                    <li class="depth1">
                        <h2 class="cust"><a href="#">고객센터</a></h2>
                        <ul class="menu">
                            <li><a href="#">공지사항</a></li>
                            <li><a href="#">이벤트</a></li>
                            <li><a href="#">FAQ</a></li>
                            <li><a href="#">1:1 문의</a></li>
                            <li><a href="#">환급신청안내</a></li><!-- ★2015-12-04 추가 -->

                        </ul>
                    </li>
                    <li class="depth1">
                        <h2 class="mynae"><a href="#">마이 페이지</a></h2><!-- ★2015-12-04 수정 -->
                        <ul class="menu">
                            <li><a href="#">내오잉 정보</a></li><!-- ★2015-12-04 수정 -->
                            <li><a href="#">습득통계</a></li>
                            <li><a href="#">쿠폰관리</a></li>
                            <li><a href="#">결제내역</a></li>
                            <li><a href="#">수강확인증</a></li>
                        </ul>
                    </li>
                </ul>
                <!-- E : 2015-09-14 메뉴 이름 변경 -->
            </div>
            <div class="gnb_bg"></div>
        </nav>
    </header>
    <!-- E : header -->

    <!-- S : container -->
    <div id="container" class="clearFix">
        <!-- S : 2015-09-14 왼쪽 공통 영역 -->
        <aside class="side left">
            <div class="personalize">
                <h3 class="blind">로그인 영역</h3>
                <!-- S : 로그인 전 -->
                <div class="after_login">
                    <p class="greeting"><span class="txt_red">NAE</span>에 오신 것을<br>환영합니다.</p>
                    <p class="btn_area btn_type">
                        <a href="#pop_login" class="pop_login btn_blue">로그인</a>
                        <a href="#" class="btn_red">회원가입</a>
                    </p>
                </div>
                <!-- E : 로그인 전 -->
                <!-- S : 로그인 후 - 수강중인 상태가 아닌 경우 -->
                <div class="after_login" style="display:none;">
                    <p class="greeting"><span class="txt_red">한글최대10글자</span> 님<br> 어서 오세요!</p>
                    <p class="btn_area">
                        <a href="#" class="btn_blue">수강신청</a>
                        <a href="#" class="btn_red">로그아웃</a>
                    </p>
                </div>
                <!-- E : 로그인 후 - 수강중인 상태가 아닌 경우-->
                <!-- S : 로그인 후 - 수강중 일때 -->
                <div class="after_login" style="display:none;">
                    <p class="greeting"><span class="txt_red">한글최대10글자</span>님<br> (2015-08-28 까지 수강)</p>
                    <p class="btn_area">
                        <a href="#" class="btn_blue">MY NAE</a>
                        <a href="#" class="btn_red">로그아웃</a>
                    </p>
                </div>
                <!-- E : 로그인 후 - 수강중 일때-->
                <!-- S : 로그인 후 - 휴강중 일때 -->
                <div class="after_login" style="display:none;">
                    <p class="greeting"><span class="txt_red">한글최대10글자</span>님<br> (2015-12-31 까지 휴강)</p>
                    <p class="btn_area">
                        <a href="#" class="btn_blue">MY NAE</a>
                        <a href="#" class="btn_red">로그아웃</a>
                    </p>
                </div>
                <!-- E : 로그인 후 - 휴강중 일때-->
                <!-- S : 로그인 후 - 이용중지 상태 -->
                <div class="after_login" style="display:none;">
                    <p class="greeting"><span class="txt_red">한글최대10글자</span>님<br> (이용중지 상태)</p>
                    <p class="btn_area">
                        <a href="#" class="btn_blue">MY NAE</a>
                        <a href="#" class="btn_red">로그아웃</a>
                    </p>
                </div>
                <!-- E : 로그인 후 - 이용중지 상태 -->
            </div>
            <div class="start">
                <h3 class="blind">게임시작</h3>
                <p class="down">
                    <a href="#"><img src="../images/common/btn_down.gif" alt="게임 다운로드"/></a>
                </p>
                <button type="button"><img src="../images/common/btn_start.jpg" alt="학습시작"></button>
            </div>
            <div class="add_slide" id="sub_promotion">
                <h3 class="blind">이벤트 배너</h3>
                <div class="mask">
                    <ul class="clearFix">
                        <li>
                            <a href="#">
                                <img src="../images/common/img_sub_banner0.jpg" alt="이벤트 배너 1">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="../images/common/img_sub_banner1.jpg" alt="이벤트 배너 2">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="../images/common/img_sub_banner2.jpg" alt="이벤트 배너 3">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="../images/common/img_sub_banner3.jpg" alt="이벤트 배너 4">
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="btn_dir">
                    <button type="button" class="prev">이전</button>
                    <button type="button" class="next">다음</button>
                    <p class="page"><span class="num_now">1</span>/<span class="num_total">5</span></p>
                </div>
            </div>
            <div class="box add_slide" id="recommend">
                <h3>START-UP N.A.E</h3>
                <div class="mask">
                    <ul class="clearFix">
                        <li>
                            <a href="#">
                                <img src="../images/common/img_startup_banner0.jpg" alt="90일 학습 이용권, 기본 단문 말하기를 완성한다, 지금부터가 시작이다!">
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="btn_dir">
                    <button type="button" class="prev">이전</button>
                    <button type="button" class="next">다음</button>
                    <p class="page"><span class="num_now">1</span>/<span class="num_total">5</span></p>
                </div>
            </div>
            <div class="box add_slide" id="union">
                <h3>PREMIUM N.A.E</h3>
                <div class="mask">
                    <ul class="clearFix">
                        <li>
                            <a href="#">
                                <img src="../images/common/img_premium_banner0.jpg" alt="영구학습이용권과 헤드셋, 평생 수강권과 고급 핸드셋을 받을 수 있는 프리패스권">
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="btn_dir">
                    <button type="button" class="prev">이전</button>
                    <button type="button" class="next">다음</button>
                    <p class="page"><span class="num_now">1</span>/<span class="num_total">5</span></p>
                </div>
            </div>
            <div class="etc_link">
                <h3 class="blind">기타 링크</h3>
                <ul>
                    <li><a href="#"><img src="../images/main/img_register.jpg" alt="NAE CLASS 수강신청"/></a></li>
                    <li><a href="#"><img src="../images/main/img_coupon.jpg" alt="NAE COUPON 쿠폰등록"></a></li>
                </ul>
            </div>
        </aside>
        <!-- E : 2015-09-14 왼쪽 공통 영역 -->
        <article class="inner_contents" id="square">
            <header class="contents_title clearFix">
                <h2 class="title">광장</h2>
                <p class="path">
                    <span class="ico home"></span>HOME<span class="next_page" title="다음 페이지 위치"> > </span>커뮤니티<span class="next_page" title="다음 페이지 위치"> > </span><span class="now_page" title="현재 페이지 위치">광장</span>
                </p>
            </header>
            <!-- S : 2015-10-06 view 클래스 추가 -->
            <section id="contents" class="view">
            <!-- E : 2015-10-06 view 클래스 추가 -->
                <div class="view_wrap clearFix">
                    <!-- S : 공지 아이콘 ico_comm_notice.png -->
                    <!-- S : 자유게시판 아이콘 ico_comm_type0.png -->
                    <!-- S : 질문게시판 아이콘 ico_comm_type1.png -->
                    <!-- S : 노하우게시판 아이콘 ico_comm_type2.png -->
                    <!-- S : 2015-10-02 게시판 별 이미지 추가 -->
                    <h3><img src="../images/common/ico_comm_type0.png" alt="자유게시판 글">가가가가가가가가가가가가가가가가가가가가가가가가가가가가가가</h3>
                    <!-- E : 2015-10-02 게시판 별 이미지 추가 -->
                    <div class="info clearFix">
                        <dl class="fL">
                            <dt>작성자</dt>
                            <dd>망소</dd>
                        </dl>
                        <dl class="fR">
                            <!-- S : 2015-10-02 등록일을 작성일로 변경 -->
                            <dt>작성일</dt>
                            <!-- E : 2015-10-02 등록일을 작성일로 변경 -->
                            <dd>2015.05.31</dd>
                            <dt>조회수</dt>
                            <dd>565</dd>
                        </dl>
                    </div>
                    <div class="view_contents">
                        <div class="file layer_area">
                            <p><a href="#file_pop" class="btn_file">첨부파일 <span>[1]</span></a></p>
                            <div id="file_pop" class="layer_pop">
                                <ul>
                                    <li><a href="#">오디션.jpg</a></li>
                                    <li><a href="#">오디션.jpg</a></li>
                                </ul>
                                <button type="button" class="btn_close"><img src="../images/common/btn_close_file.png" alt="닫기"/></button>
                            </div>
                        </div>
                        <div class="content_txt" runat="server">
                            <p>가갸거겨고교구규가갸거겨고교구규가갸거겨고교구규가갸거겨고교구규가갸거겨고교구규가갸거겨고교구규가갸거겨고교구규가갸거겨고교구규가갸거겨고교구규가갸거겨고교구규가갸거겨고교구규가갸거겨고교구규가갸거겨고교구규가갸거겨고교구규특문특문★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★</p>
                            <p>영어도써본다
                                Im waking up to ash and dust,
                                I wipe my brow and I sweat my rust,
                                Im breathing in, the chemicals, gahh ahhh.
                                Im breaking in, shaping up, then checking out on the prison bus.
                                This is it, the apocalypse, woah.

                                Im waking up, I feel it in my bones
                                Enough to make my systems blow
                                Welcome to the new age, to the new age.
                                Welcome to the new age, to the new age.
                                Woah, woah, Im radioactive, radioactive.
                                Woah, woah, Im radioactive, radioactive.</p>
                            <p>가갸거겨고교구규</p>
                            <p>숫자숫자654989878786549898787896549898787896549898787896549898787896549898787896549898787896549898787896549898787896549898787896549898787896549898787896549898787896549898787896549898787896549898787896549898787896549898787899</p>
                            <p>가갸거겨고교구규</p>
                            <p>가갸거겨고교구규</p>
                        </div>

                    </div>
                    <p class="btn_recommend">
                        <a href="#" class="btn">추천 99+</a>
                    </p>
                </div>
                <!-- S : 2015-07-21 구조 변경 -->
                <div class="btn_area clearFix">
                    <p class="fL">
                        <button type="button" class="btn delete">삭제</button>
                        <button type="button" class="btn edit">수정</button>
                    </p>
                    <p class="fR">
                        <button type="button" class="btn list">목록</button>
                        <button type="button" class="btn write">글쓰기</button>
                    </p>
                </div>
                <div class="comments_list">
                    <p class="count">총 <span>$n$개</span>의 댓글이 있습니다.</p>
                    <div class="comment_write clearFix">
                        <div class="apply_textarea">
                            <!-- S : 2015-09-14 로그인 전 label에 '로그인이 필요합니다.' 문구 삽입 -->
                            <label for="lb3">내용을 입력하세요.</label>
                            <!-- E : 2015-09-14 로그인 전 label에 '로그인이 필요합니다.' 문구 삽입 -->
                            <textarea id="lb3" cols="50" rows="3"></textarea>
                        </div>
                        <button type="button" class="btn submit">댓글쓰기</button>
                        <!--<p class="caution_board">- 욕설, 도배, 비방, 루머 등 운영정책에 어긋나는 게시물 등록 시에는 글쓰기 제한 등 불이익을 받으실 수 있습니다.</p>-->
                    </div>

                    <ul>
                        <li>
                            <div class="comment_inner">
                                <dl class="clearFix">
                                    <dt>댓글 내용</dt>
                                    <dd class="contents">베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트v</dd>
                                    <dt>유저 닉네임</dt>
                                    <dd class="name">망소</dd>
                                    <dt>댓글이 달린 날짜</dt>
                                    <dd class="date">15.06.02</dd>
                                </dl>
                            </div>
                            <ul class="comment_menu clearFix">
                                <li class="btn_recommend"><a href="#" class="btn">99+</a></li>
                                <!-- S : 2015-09-22 내가 쓴 댓글일 경우 -->
                                <li>
                                    <ul class="clearFix">
                                        <li><button type="button" class="btn reply_edit">수정</button></li>
                                        <li><button type="button" class="btn reply_delete">삭제</button></li>
                                    </ul>
                                </li>
                                <!-- E : 2015-09-22 내가 쓴 댓글일 경우 -->
                            </ul>
                            <!-- S : 2015-09-21 추가 -->
                            <div class="comment_edit">
                                <div class="apply_textarea">
                                    <label for="lb4">수정할 내용</label>
                                    <textarea id="lb4" cols="50" rows="3"></textarea>
                                </div>
                                <button type="button" class="btn comment_edit">수정하기</button>
                            </div>
                            <!-- E : 2015-09-21 추가 -->
                        </li>
                        <li>
                            <div class="comment_inner">
                                <!-- S : 2015-10-02 gm이 쓴 댓글일 경우 dl에 gm 클래스 추가-->
                                <dl class="gm clearFix">
                                    <dt>댓글 내용</dt>
                                    <dd class="contents">베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트v</dd>
                                    <dt>유저 닉네임</dt>
                                    <dd class="name"><img src="../images/common/img_gm.png" alt="오잉 gm"/></dd>
                                    <dt>댓글이 달린 날짜</dt>
                                    <dd class="date">15.06.02</dd>
                                </dl>
                                <!-- E : 2015-10-02 gm이 쓴 댓글일 경우 dl에 gm 클래스 추가-->
                            </div>
                            <ul class="comment_menu clearFix">
                                <!-- S : 2015-09-22 다른유저가 쓴 댓글일 경우 -->
                                <li class="btn_recommend"><a href="#" class="btn">99+</a></li>
                                <!-- E : 2015-09-22 다른유저가 쓴 댓글일 경우 -->

                            </ul>
                        </li>
                        <li>
                            <div class="comment_inner">
                                <dl class="clearFix">
                                    <dt>댓글 내용</dt>
                                    <dd class="contents">베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트v</dd>
                                    <dt>유저 닉네임</dt>
                                    <dd class="name">톰메</dd>
                                    <dt>댓글이 달린 날짜</dt>
                                    <dd class="date">15.06.02</dd>
                                </dl>
                            </div>
                            <ul class="comment_menu clearFix">
                                <li class="btn_recommend"><a href="#" class="btn">99+</a></li>
                                <li>
                                    <ul class="clearFix">
                                        <li><button type="button" class="btn reply_edit">수정</button></li>
                                        <li><button type="button" class="btn reply_delete">삭제</button></li>
                                    </ul>
                                </li>

                            </ul>
                        </li>
                        <li>
                            <div class="comment_inner">
                                <dl class="clearFix">
                                    <dt>댓글 내용</dt>
                                    <dd class="contents">베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트v</dd>
                                    <dt>유저 닉네임</dt>
                                    <dd class="name">톰메</dd>
                                    <dt>댓글이 달린 날짜</dt>
                                    <dd class="date">15.06.02</dd>
                                </dl>
                            </div>
                            <ul class="comment_menu">
                                <li class="btn_recommend"><a href="#" class="btn">99+</a></li>
                            </ul>
                        </li>
                        <li>
                            <div class="comment_inner">
                                <dl class="gm " class="clearFix">
                                <dt>댓글 내용</dt>
                                <dd class="contents" id="contents89">테스트 테스트<br /><br />입니다.<br /><br />그리고그리고<br /><br />줄 바꿔쓰기 테스트테스트<br /><br />입니다입니다.</dd>
                                <dt>유저 닉네임</dt>
                                <dd class="name">Eddy</dd>
                                <dt>댓글이 달린 날짜</dt>
                                <dd class="date">2015.10.27</dd>
                                </dl>
                            </div>
                            <ul class="comment_menu clearFix">
                                <li class="btn_recommend"><a href="#" class="btn" id="Recommendins">0</a><input type="hidden" name="recommendkey" value="89"></li>
                            </ul>
                        </li>
                        <li>
                            <div class="comment_inner">
                                <dl class="clearFix">
                                    <dt>댓글 내용</dt>
                                    <dd class="contents">베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트v</dd>
                                    <dt>유저 닉네임</dt>
                                    <dd class="name">톰메</dd>
                                    <dt>댓글이 달린 날짜</dt>
                                    <dd class="date">15.06.02</dd>
                                </dl>
                            </div>
                            <ul class="comment_menu">
                                <li class="btn_recommend"><a href="#" class="btn">99+</a></li>
                            </ul>
                        </li>
                        <li>
                            <div class="comment_inner">
                                <dl class="clearFix">
                                    <dt>댓글 내용</dt>
                                    <dd class="contents">베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트v</dd>
                                    <dt>유저 닉네임</dt>
                                    <dd class="name">톰메</dd>
                                    <dt>댓글이 달린 날짜</dt>
                                    <dd class="date">15.06.02</dd>
                                </dl>
                            </div>
                            <ul class="comment_menu">
                                <li class="btn_recommend"><a href="#" class="btn">99+</a></li>
                            </ul>
                        </li>
                        <li>
                            <div class="comment_inner">
                                <dl class="clearFix">
                                    <dt>댓글 내용</dt>
                                    <dd class="contents">베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트v</dd>
                                    <dt>유저 닉네임</dt>
                                    <dd class="name">톰메</dd>
                                    <dt>댓글이 달린 날짜</dt>
                                    <dd class="date">15.06.02</dd>
                                </dl>
                            </div>
                            <ul class="comment_menu">
                                <li class="btn_recommend"><a href="#" class="btn">99+</a></li>
                            </ul>
                        </li>
                        <li>
                            <div class="comment_inner">
                                <dl class="clearFix">
                                    <dt>댓글 내용</dt>
                                    <dd class="contents">베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트v</dd>
                                    <dt>유저 닉네임</dt>
                                    <dd class="name">톰메</dd>
                                    <dt>댓글이 달린 날짜</dt>
                                    <dd class="date">15.06.02</dd>
                                </dl>
                            </div>
                            <ul class="comment_menu">
                                <li class="btn_recommend"><a href="#" class="btn">99+</a></li>
                            </ul>
                        </li>
                        <li>
                            <div class="comment_inner">
                                <dl class="clearFix">
                                    <dt>댓글 내용</dt>
                                    <dd class="contents">베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트v</dd>
                                    <dt>유저 닉네임</dt>
                                    <dd class="name">톰메</dd>
                                    <dt>댓글이 달린 날짜</dt>
                                    <dd class="date">15.06.02</dd>
                                </dl>
                            </div>
                            <ul class="comment_menu">
                                <li class="btn_recommend"><a href="#" class="btn">99+</a></li>
                            </ul>
                        </li>
                        <li>
                            <div class="comment_inner">
                                <dl class="clearFix">
                                    <dt>댓글 내용</dt>
                                    <dd class="contents">베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트베스트v</dd>
                                    <dt>유저 닉네임</dt>
                                    <dd class="name">톰메</dd>
                                    <dt>댓글이 달린 날짜</dt>
                                    <dd class="date">15.06.02</dd>
                                </dl>
                            </div>
                            <ul class="comment_menu">
                                <li class="btn_recommend"><a href="#" class="btn">99+</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- S : 2015-09-03 추가 -->
                <p class="pagination">
                    <a href="#" class="prev"><img src="../images/common/btn_paging_prev.gif" alt="이전"/></a>
                    <strong>1</strong>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#" class="next"><img src="../images/common/btn_paging_next.gif" alt="다음"/></a>
                </p>
                <div class="list_wrap">
                    <table>
                        <caption>광장 리스트</caption>
                        <colgroup>
                            <col style="width:53.8%">
                            <col style="width:17%">
                            <col style="width:7.4%">
                            <col style="width:7.4%">
                            <col style="width:14.3%">
                        </colgroup>
                        <thead>
                        <tr>
                            <th scope="col">제목</th>
                            <th scope="col">작성자</th>
                            <th scope="col">조회수</th>
                            <th scope="col">추천수</th>
                            <th scope="col">작성일</th>
                        </tr>
                        </thead>
                        <tbody>
                        <!-- S : 검색 결과나 작성된 글이 없을 경우 노출 -->
                        <tr class="no_list" style="display:none;">
                            <td colspan="5">작성된 게시글이 없습니다.</td>
                        </tr>
                        <!-- E : 검색 결과나 작성된 글이 없을 경우 노출 -->
                        <tr class="em">
                            <!-- S : 공지 아이콘 ico_comm_notice.png -->
                            <!-- S : 자유게시판 아이콘 ico_comm_type0.png -->
                            <!-- S : 질문게시판 아이콘 ico_comm_type1.png -->
                            <!-- S : 노하우게시판 아이콘 ico_comm_type2.png -->
                            <td class="subject"><a href="#"><img src="../images/common/ico_comm_notice.png" alt="공지 글" class="category"/>가가가가가가가가가가가가가가가가가가가가<span class="comment_num">[50]</span><img src="../images/common/ico_file.png" alt="첨부파일"><img src="../images/common/ico_new.png" alt="new"></a></td>
                            <!-- S : 2015-10-02 gm 이미지 alt값 변경 -->
                            <td class="writer"><img src="../images/common/img_gm.png" alt="오잉 gm"/></td>
                            <!-- E : 2015-10-02 gm 이미지 alt값 변경 -->
                            <td class="view"></td>
                            <td class="recom"></td>
                            <td>15.05.07 12:12</td>
                        </tr>
                        <tr class="em">
                            <td class="subject"><a href="#"><img src="../images/common/ico_comm_notice.png" alt="공지 글" class="category"/>가가가가가가가가가가가가가가가가가가가가<span class="comment_num">[50]</span><img src="../images/common/ico_file.png" alt="첨부파일"><img src="../images/common/ico_new.png" alt="new"></a></td>
                            <!-- S : 2015-10-02 gm 이미지 alt값 변경 -->
                            <td class="writer"><img src="../images/common/img_gm.png" alt="오잉 gm"/></td>
                            <!-- E : 2015-10-02 gm 이미지 alt값 변경 -->
                            <td class="view"></td>
                            <td class="recom"></td>
                            <td>15.05.07 12:12</td>
                        </tr>
                        <!-- S : 2015-09-14 내가 보고 있는 글에 read 클래스 추가 -->
                        <tr class="read">
                            <td class="subject"><a href="#"><img src="../images/common/ico_comm_type1.png" alt="질문게시판 글" class="category"/>가가가가가가가가가가가가가가가가가가가가<span class="comment_num">[50]</span><img src="../images/common/ico_file.png" alt="첨부파일"><img src="../images/common/ico_new.png" alt="new"></a></td>
                            <td class="writer">가나다라마바사아자차</td>
                            <td class="view"><span class="ico"></span>100</td>
                            <td class="recom"><span class="ico"></span>999</td>
                            <td>15.05.07 12:12</td>
                        </tr>
                        <!-- S : 2015-09-14 내가 보고 있는 글에 read 클래스 추가 -->
                        <tr>
                            <td class="subject"><a href="#"><img src="../images/common/ico_comm_type1.png" alt="질문게시판 글" class="category"/>가가가가가가가가가가가가가가가가가가가가<span class="comment_num">[50]</span><img src="../images/common/ico_file.png" alt="첨부파일"><img src="../images/common/ico_new.png" alt="new"></a></td>
                            <td class="writer">가나다라마바사아자차</td>
                            <td class="view"><span class="ico"></span>100</td>
                            <td class="recom"><span class="ico"></span>999</td>
                            <td>15.05.07 12:12</td>
                        </tr>
                        <tr>
                            <td class="subject"><a href="#"><img src="../images/common/ico_comm_type1.png" alt="질문게시판 글" class="category"/>가가가가가가가가가가가가가가가가가가가가<span class="comment_num">[50]</span><img src="../images/common/ico_file.png" alt="첨부파일"><img src="../images/common/ico_new.png" alt="new"></a></td>
                            <td class="writer">가나다라마바사아자차</td>
                            <td class="view"><span class="ico"></span>100</td>
                            <td class="recom"><span class="ico"></span>999</td>
                            <td>15.05.07 12:12</td>
                        </tr>
                        <tr>
                            <td class="subject"><a href="#"><img src="../images/common/ico_comm_type1.png" alt="질문게시판 글" class="category"/>가가가가가가가가가가가가가가가가가가가가<span class="comment_num">[50]</span><img src="../images/common/ico_file.png" alt="첨부파일"><img src="../images/common/ico_new.png" alt="new"></a></td>
                            <td class="writer">가나다라마바사아자차</td>
                            <td class="view"><span class="ico"></span>100</td>
                            <td class="recom"><span class="ico"></span>999</td>
                            <td>15.05.07 12:12</td>
                        </tr>
                        <tr>
                            <td class="subject"><a href="#"><img src="../images/common/ico_comm_type1.png" alt="질문게시판 글" class="category"/>가가가가가가가가가가가가가가가가가가가가<span class="comment_num">[50]</span><img src="../images/common/ico_file.png" alt="첨부파일"><img src="../images/common/ico_new.png" alt="new"></a></td>
                            <td class="writer">가나다라마바사아자차</td>
                            <td class="view"><span class="ico"></span>100</td>
                            <td class="recom"><span class="ico"></span>999</td>
                            <td>15.05.07 12:12</td>
                        </tr>
                        <tr>
                            <td class="subject"><a href="#"><img src="../images/common/ico_comm_type1.png" alt="질문게시판 글" class="category"/>가가가가가가가가가가가가가가가가가가가가<span class="comment_num">[50]</span><img src="../images/common/ico_file.png" alt="첨부파일"><img src="../images/common/ico_new.png" alt="new"></a></td>
                            <td class="writer">가나다라마바사아자차</td>
                            <td class="view"><span class="ico"></span>100</td>
                            <td class="recom"><span class="ico"></span>999</td>
                            <td>15.05.07 12:12</td>
                        </tr>
                        <tr>
                            <td class="subject"><a href="#"><img src="../images/common/ico_comm_type1.png" alt="질문게시판 글" class="category"/>가가가가가가가가가가가가가가가가가가가가<span class="comment_num">[50]</span><img src="../images/common/ico_file.png" alt="첨부파일"><img src="../images/common/ico_new.png" alt="new"></a></td>
                            <td class="writer">가나다라마바사아자차</td>
                            <td class="view"><span class="ico"></span>100</td>
                            <td class="recom"><span class="ico"></span>999</td>
                            <td>15.05.07 12:12</td>
                        </tr>
                        <tr>
                            <td class="subject"><a href="#"><img src="../images/common/ico_comm_type1.png" alt="질문게시판 글" class="category"/>가가가가가가가가가가가가가가가가가가가가<span class="comment_num">[50]</span><img src="../images/common/ico_file.png" alt="첨부파일"><img src="../images/common/ico_new.png" alt="new"></a></td>
                            <td class="writer">가나다라마바사아자차</td>
                            <td class="view"><span class="ico"></span>100</td>
                            <td class="recom"><span class="ico"></span>999</td>
                            <td>15.05.07 12:12</td>
                        </tr>
                        <tr>
                            <td class="subject"><a href="#"><img src="../images/common/ico_comm_type1.png" alt="질문게시판 글" class="category"/>가가가가가가가가가가가가가가가가가가가가<span class="comment_num">[50]</span><img src="../images/common/ico_file.png" alt="첨부파일"><img src="../images/common/ico_new.png" alt="new"></a></td>
                            <td class="writer">가나다라마바사아자차</td>
                            <td class="view"><span class="ico"></span>100</td>
                            <td class="recom"><span class="ico"></span>999</td>
                            <td>15.05.07 12:12</td>
                        </tr>
                        <tr>
                            <td class="subject"><a href="#"><img src="../images/common/ico_comm_type1.png" alt="질문게시판 글" class="category"/>가가가가가가가가가가가가가가가가가가가가<span class="comment_num">[50]</span><img src="../images/common/ico_file.png" alt="첨부파일"><img src="../images/common/ico_new.png" alt="new"></a></td>
                            <td class="writer">가나다라마바사아자차</td>
                            <td class="view"><span class="ico"></span>100</td>
                            <td class="recom"><span class="ico"></span>999</td>
                            <td>15.05.07 12:12</td>
                        </tr>
                        <tr>
                            <td class="subject"><a href="#"><img src="../images/common/ico_comm_type1.png" alt="질문게시판 글" class="category"/>가가가가가가가가가가가가가가가가가가가가<span class="comment_num">[50]</span><img src="../images/common/ico_file.png" alt="첨부파일"><img src="../images/common/ico_new.png" alt="new"></a></td>
                            <td class="writer">가나다라마바사아자차</td>
                            <td class="view"><span class="ico"></span>100</td>
                            <td class="recom"><span class="ico"></span>999</td>
                            <td>15.05.07 12:12</td>
                        </tr>
                        <tr>
                            <td class="subject"><a href="#"><img src="../images/common/ico_comm_type1.png" alt="질문게시판 글" class="category"/>가가가가가가가가가가가가가가가가가가가가<span class="comment_num">[50]</span><img src="../images/common/ico_file.png" alt="첨부파일"><img src="../images/common/ico_new.png" alt="new"></a></td>
                            <td class="writer">가나다라마바사아자차</td>
                            <td class="view"><span class="ico"></span>100</td>
                            <td class="recom"><span class="ico"></span>999</td>
                            <td>15.05.07 12:12</td>
                        </tr>
                        <tr>
                            <td class="subject"><a href="#"><img src="../images/common/ico_comm_type1.png" alt="질문게시판 글" class="category"/>가가가가가가가가가가가가가가가가가가가가<span class="comment_num">[50]</span><img src="../images/common/ico_file.png" alt="첨부파일"><img src="../images/common/ico_new.png" alt="new"></a></td>
                            <td class="writer">가나다라마바사아자차</td>
                            <td class="view"><span class="ico"></span>100</td>
                            <td class="recom"><span class="ico"></span>999</td>
                            <td>15.05.07 12:12</td>
                        </tr>
                        <tr>
                            <td class="subject"><a href="#"><img src="../images/common/ico_comm_type1.png" alt="질문게시판 글" class="category"/>가가가가가가가가가가가가가가가가가가가가<span class="comment_num">[50]</span><img src="../images/common/ico_file.png" alt="첨부파일"><img src="../images/common/ico_new.png" alt="new"></a></td>
                            <td class="writer">가나다라마바사아자차</td>
                            <td class="view"><span class="ico"></span>100</td>
                            <td class="recom"><span class="ico"></span>999</td>
                            <td>15.05.07 12:12</td>
                        </tr>
                        <tr>
                            <td class="subject"><a href="#"><img src="../images/common/ico_comm_type1.png" alt="질문게시판 글" class="category"/>가가가가가가가가가가가가가가가가가가가가<span class="comment_num">[50]</span><img src="../images/common/ico_file.png" alt="첨부파일"><img src="../images/common/ico_new.png" alt="new"></a></td>
                            <td class="writer">가나다라마바사아자차</td>
                            <td class="view"><span class="ico"></span>100</td>
                            <td class="recom"><span class="ico"></span>999</td>
                            <td>15.05.07 12:12</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- E : 2015-09-03 추가 -->
                <!-- S : 2015-09-03 추가 -->
                <p class="pagination">
                    <a href="#" class="prev"><img src="../images/common/btn_paging_prev.gif" alt="이전"/></a>
                    <strong>1</strong>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#" class="next"><img src="../images/common/btn_paging_next.gif" alt="다음"/></a>
                </p>
                <div class="search_area clearFix">
                    <div class="custom_select">
                        <p class="txt"></p>
                        <select>
                            <option selected>제목</option>
                            <option>글쓴이</option>
                        </select>
                    </div>
                    <label for="lb_search" class="blind">검색</label>
                    <!-- S : 2015-09-14 placeholder 추가 -->
                    <input type="text" id="lb_search" class="search_input" placeholder="검색어를 입력하세요."/>
                    <!-- E : 2015-09-14 placeholder 추가 -->
                    <button type="button" class="btn_search">검색</button>
                </div>
                <!-- E : 2015-09-03 추가 -->
            </section>

        </article>
        <!-- S : 2015-09-14 오른쪽 퀵 메뉴 -->
        <div id="quick_menu">
            <h4 class="blind">빠른 메뉴 이용하기</h4>
            <ul class="menu">
                <li><a href="#"><img src="../images/common/img_quick_m0.jpg" alt="프로그램 설치"></a></li>
                <li><a href="#"><img src="../images/common/img_quick_m1.jpg" alt="학습 가이드"></a></li>
                <li><a href="#"><img src="../images/common/img_quick_m2.jpg" alt="레벨 테스트"></a></li>
                <li><a href="#"><img src="../images/common/img_quick_m3.jpg" alt="수강신청"></a></li>
            </ul>
            <h4 class="blind">퀵 배너</h4>
            <ul class="banner">
                <li><a href="#"><img src="../images/common/img_banner_quick1.jpg" alt="수강신청"></a></li>
                <li><a href="#"><img src="../images/common/img_banner_quick2.jpg" alt="수강신청"></a></li>
            </ul>
            <p class="btn_top">
                <a href="#wrap"><img src="../images/common/btn_top.jpg" alt="상단으로 이동하기"></a>
            </p>
        </div>
        <!-- E : 2015-09-14 오른쪽 퀵 메뉴 -->
    </div>
    <!-- E : container -->
</div>



    <div>
    <label for="view_writer" runat="server">작성자</label>
    <p id="view_writer" runat="server"></p>
    </div>
    <br /><br />

    <div>
        <label for="view_title" runat="server">제목</label>
        <p id="view_title" runat="server"></p>
    </div>
    <br /><br />

    <div>
        <label for="view_contents" runat="server">내용</label>
        <p id="view_contents" runat="server"></p>
    </div>
        <br /> <br />
        <div>
        <label id="Label1" for="view_filepath" runat="server">파일경로</label>
        <p id="view_filepath" runat="server"></p>
    </div>
    <br />
    <button id="modify_btn" onserverclick="modify_btn_ServerClick" runat="server" value="수정(미작성)">수정(미작성)</button>
    <button id="view_btn" runat="server" onserverclick="view_btn_ServerClick" value="목록">목록</button>
    </form>
</body>
</html>
