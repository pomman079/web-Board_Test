<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Board/Write.aspx.cs" CodeBehind="Write.aspx.cs" Inherits="WebTest.Board.Write" %>

<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
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

        <script lang="text/javascript">
            function button_click() {
                var Text_Title = document.getElementById('<%= Text_Title.ClientID%>');
                var Text_Title = document.getElementById('Text_Title');

                if (Text_Title.value.length == 0 || Text_Title.value.toString() == "제목을 입력해 주세요.") {
                    alert("제목을 채워주세요");
                    lb1.focus();
                    return -1;
                }

                if (Text_Contents.value.length == 0 || Text_Contents.value.toString() == "내용을 입력해 주세요.") {
                    alert("내용을 채워주세요");
                    Text_Contents.focus();
                    return -2;
                }
            }

 

        </script>
</head>

    
<body>
    <form runat="server" id="form1">
<!-- S : 2015-09-14 상단 띠 배너 -->
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
            <section id="contents">
                <div class="write_wrap">
                    <h3 class="blind">글쓰기</h3>
                    <div class="title clearFix">
                        <div class="custom_select clearFix">
                            <p class="txt"></p>
                            <select>
                                <option selected>자유</option>
                                <option>질문</option>
                                <option>노하우</option>
                            </select>
                        </div>

                        <p class="input_area">
                            <label for="lb3" class="blind">작성자</label>
                            <input type="text" id="Text_Writer" placeholder="제목을 입력해 주세요." runat="server"/>
                        </p>

                        <p class="input_area">
                            <label for="lb3" class="blind">제목</label>
                            <input type="text" id="Text_Title" placeholder="제목을 입력해 주세요."  runat="server"/>
                        </p>
                    </div>
                    <div class="editor">
                        <textarea id="Text_Contents" runat="server" />
                        <img src="../images/common/img_840X433.gif" alt="840X433"/>
                    </div>
                    <div class="limit clearFix">
                        <div class="fL">
                            <h3><label for="lb4">파일 첨부</label></h3>
                            <select id="lb4" multiple="multiple">
                                <option>---------------------------------------------------------------- 파일 첨부 ----------------------------------------------------------------</option>
                            </select>
                        </div>
                        <div class="max fL">
                            <p class="clearFix">
                                <input type="text" value="300" readonly/>
                                <span>KB / 2000KB</span>
                            </p>
                            <button type="btn_delete">삭제</button>
                        </div>
                    </div>
                </div>
            </section>
            <div class="btn_area clearFix">
                <p class="fR">
                    <button type="button" class="btn cancel">취소</button>
                    <button type="button" class="btn complete" runat="server" id="write" onserverclick="write_ServerClick">작성완료</button>
                </p>
            </div>

            <p id="Result" runat="server"></p>
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
<!-- S : footer 2015-09-14 수정-->
<footer id="footer">
    <section class="footer_con clearFix">
        <div class="inner clearFix">
            <div class="company fL">
                <ul>
                    <li><a href="http://www.hanbitsoft.co.kr/" target="_blank"><img src="../images/common/logo_hanbiton.png" alt="한빛소프트" /></a></li>
                    <li><a href="http://www.t3.co.kr/" target="_blank"><img src="../images/common/logo_t3.png" alt="t3entertainment" /></a></li>
                </ul>
            </div>
            <div class="fL">
                <ul class="clause clearFix">
                    <li><a href="#" target="_blank">회사소개</a></li>
                    <li><a href="#" target="_blank">이용약관</a></li>
                    <li><a href="#" target="_blank"><strong>개인정보취급방침</strong></a></li>
                    <li><a href="#" target="_blank">고객센터</a></li>
                </ul>
                <address>
                    서울특별시 구로구 경인로610코리아빌딩5층 | (주)한빛소프트 | 대표이사  | 사업자등록번호 118-81-19570<br>
                    통신판매업신고번호 제 2010-서울구로-1030호 | <a href="#">사업자정보확인</a> | 고객센터  전화 : 02)703-0743 | MAIL : SECURITY@HANBITSOFT.CO.KR
                </address>
                <p class="copyright">COPYRIGHT&copy; HANBITSOFT INC. ALL RIGHTS RESERVED.</p>
            </div>
        </div>
    </section>
</footer>
<!-- E : footer 2015-09-14 수정-->
<!-- S : 로그인 레이어 팝업 -->
<div id="pop_login" style="display:none;">
    <div class="bg"></div>
    <div class="login_area clearFix">
        <div class="login_header">
            <h2>로그인</h2>
        </div>
        <div class="left">
            <fieldset>
                <legend>로그인 정보 입력 폼</legend>
                <p class="type_txt">
                    <label for="lb_email">E-mail</label>
                    <input type="text" id="lb_email" placeholder="E-mail을 입력 하세요."/>
                </p>
                <p class="type_txt">
                    <label for="lb_pw">비밀번호</label>
                    <input type="password" id="lb_pw" placeholder="비밀번호를 입력 하세요."/>
                </p>
                <div class="btm_area clearFix">
                    <p class="fL type_check">
                        <input type="checkbox" id="lb_check"/>
                        <label for="lb_check">이메일 저장</label>
                    </p>
                    <p class="fL btn_login">
                        <button type="button">로그인</button>
                    </p>
                </div>
            </fieldset>
        </div>
        <div class="right">
            <p class="desc">가입만 해도<br><strong>무료 체험권</strong> 제공!</p>
            <p class="btn_join">
                <button type="button" class="btn">회원가입</button>
            </p>
            <ul class="login_cust">
                <li><a href="#">아이디 찾기</a></li>
                <li><a href="#">비밀번호 찾기</a></li>
            </ul>
        </div>
        <button type="button" class="close"><img src="../images/common/btn_close_login.png" alt="닫기"></button>
    </div>
</div>
        </form>
<!-- E : 로그인 레이어 팝업 -->
</body>

</html>












<%--

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>게시판 글 등록</title>
    

</head>
<body>
    
    <form id="WebForm" method="post" runat="server">
            <div align="center">
                <label for="Text_Title" class="Write">제목</label>&nbsp;&nbsp;
                <input type="text" id="Text_Title" runat="server" />
           <br /><br />
           
                <label for="Text_Writer" class="Write">작성자</label>&nbsp;&nbsp;
                <input type="text" id="Text_Writer" runat="server" />
           <br /><br />
           
                <label for="Text_Contents" class="Write">내용</label>&nbsp;&nbsp;
                <textarea id="Text_Contents" runat="server" />
           <br /><br />
           
                <input type="hidden" id="Text_Status" value="0"/>
                <input type="submit" id="write" value="등록" OnServerClick="write_ServerClick" class="Write" runat="server" />
                <input type="button" id="btn_write" runat="server" onserverclick="btn_write_ServerClick" />

                
            </div><br />

        <%--<asp:Repeater ID="rpt" runat="server">
            <ItemTemplate>
                <input type="hidden" id="Text_Status" value="<%# Eval("writer").ToString() %>"/>
            </ItemTemplate>
        </asp:Repeater>--%>
    </form>
</body>
</html>--%>
