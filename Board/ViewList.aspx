<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewList.aspx.cs" Inherits="WebTest.Board.ViewList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang ="ko">
<meta charset ="utf-8"> 
<meta name="author" content="한빛소프트 서비스개발팀" />
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
<!-- E : 2015-09-14 상단 띠 배너 -->
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
                <!-- S : 2015-09-14 메뉴 이름 수정 -->
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
                <!-- E : 2015-09-14 메뉴 이름 수정 -->
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
                        <li>
                            <a href="#">
                                <img src="../images/common/img_startup_banner0.jpg" alt="90일 학습 이용권, 기본 단문 말하기를 완성한다, 지금부터가 시작이다!">
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="../images/common/img_startup_banner0.jpg" alt="90일 학습 이용권, 기본 단문 말하기를 완성한다, 지금부터가 시작이다!">
                            </a>
                        </li>
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
                <div class="tab_area">
                    <ul class="clearFix">
                        <!-- S : 2015-10-02 span 삭제 -->
                        <li class="tab0"><a href="#" class="on"><!--<span class="ico all"></span>-->전체</a></li>
                        <!-- S : 2015-10-02 span 삭제 -->
                        <li class="tab1"><a href="#">자유</a></li>
                        <li class="tab2"><a href="#">질문</a></li>
                        <li class="tab3"><a href="#">노하우</a></li>
                    </ul>
                </div>
                <p class="path">
                    <span class="ico home"></span>HOME<span class="next_page" title="다음 페이지 위치"> > </span>커뮤니티<span class="next_page" title="다음 페이지 위치"> > </span><span class="now_page" title="현재 페이지 위치">광장</span>
                </p>
            </header>
            <section id="contents">
                <div class="list_wrap">
                    <table >
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
                          
                            <tr>
                                <td class="subject"><a href="#"><img src="#" alt="질문게시판 글" class="category"/>가가가가가가가가가가가가가가가가가가가가<span class="comment_num">[50]</span><img src="../images/common/ico_file.png" alt="첨부파일"><img src="../images/common/ico_new.png" alt="new"></a></td>
                                <td class="writer">가나다라마바사아자차</td>
                                <td class="view"><span class="ico"></span>100</td>
                                <td class="recom"><span class="ico"></span>999</td>
                                <td>15.05.07 12:12</td>
                            </tr>
                            <tr>
                                <td class="subject"><a href="#"><img src="#" alt="노하우게시판 글" class="category"/>가가가가가가가가가가가가가가가가가가가가<span class="comment_num">[50]</span><img src="../images/common/ico_file.png" alt="첨부파일"><img src="../images/common/ico_new.png" alt="new"></a></td>
                                <td class="writer">가나다라마바사아자차</td>
                                <td class="view"><span class="ico"></span>100</td>
                                <td class="recom"><span class="ico"></span>999</td>
                                <td>15.05.07 12:12</td>
                            </tr>
                            <tr>
                                <td class="subject"><a href="#"><img src="#" alt="자유게시판 글" class="category"/>가가가가가가가가가가가가가가가가가가가가<span class="comment_num">[50]</span><img src="../images/common/ico_file.png" alt="첨부파일"><img src="../images/common/ico_new.png" alt="new"></a></td>
                                <td class="writer">가나다라마바사아자차</td>
                                <td class="view"><span class="ico"></span>100</td>
                                <td class="recom"><span class="ico"></span>999</td>
                                <td>15.05.07 12:12</td>
                            </tr>
                            <tr>
                                <td class="subject"><a href="#"><img src="#" alt="질문게시판 글" class="category"/>가가가가가가가가가가가가가가가가가가가가<span class="comment_num">[50]</span><img src="../images/common/ico_file.png" alt="첨부파일"><img src="../images/common/ico_new.png" alt="new"></a></td>
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
                            </tr><tr>
                                <td class="subject"><a href="#"><img src="../images/common/ico_comm_type1.png" alt="질문게시판 글" class="category"/>가가가가가가가가가가가가가가가가가가가가<span class="comment_num">[50]</span><img src="../images/common/ico_file.png" alt="첨부파일"><img src="../images/common/ico_new.png" alt="new"></a></td>
                                <td class="writer">가나다라마바사아자차</td>
                                <td class="view"><span class="ico"></span>100</td>
                                <td class="recom"><span class="ico"></span>999</td>
                                <td>15.05.07 12:12</td>
                            </tr><tr>
                                <td class="subject"><a href="#"><img src="../images/common/ico_comm_type1.png" alt="질문게시판 글" class="category"/>가가가가가가가가가가가가가가가가가가가가<span class="comment_num">[50]</span><img src="../images/common/ico_file.png" alt="첨부파일"><img src="../images/common/ico_new.png" alt="new"></a></td>
                                <td class="writer">가나다라마바사아자차</td>
                                <td class="view"><span class="ico"></span>100</td>
                                <td class="recom"><span class="ico"></span>999</td>
                                <td>15.05.07 12:12</td>
                            </tr><tr>
                                <td class="subject"><a href="#"><img src="../images/common/ico_comm_type1.png" alt="질문게시판 글" class="category"/>가가가가가가가가가가가가가가가가가가가가<span class="comment_num">[50]</span><img src="../images/common/ico_file.png" alt="첨부파일"><img src="../images/common/ico_new.png" alt="new"></a></td>
                                <td class="writer">가나다라마바사아자차</td>
                                <td class="view"><span class="ico"></span>100</td>
                                <td class="recom"><span class="ico"></span>999</td>
                                <td>15.05.07 12:12</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="btn_area clearFix">
                    <p class="fR">
                        <!-- S : 2015-09-03 각 결과 리스트 페이지에서 목록 버튼 노출 -->
                        <button type="button" class="btn list" style="display:none">목록</button>
                        <!-- E : 2015-09-03 각 결과 리스트 페이지에서 목록 버튼 노출 -->
                        <button type="button" class="btn write">글쓰기</button>
                    </p>
                </div>
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
                    <!-- S : 2015-09-14 placeholder 추가-->
                    <input type="text" id="lb_search" class="search_input" placeholder="검색어를 입력하세요."/>
                    <!-- E : 2015-09-14 placeholder 추가-->
                    <button type="button" class="btn_search">검색</button>
                </div>
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
    </form>
</body>
</html>
