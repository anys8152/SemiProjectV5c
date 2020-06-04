<%@ page  pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%-- 썸내일 이미지 출력시 사용할 기본 주소 설정 --%>
<c:set var="imgURL" value="http://127.0.0.1/cdn/" />

    <!-- 메인영역 시작 -->
    <div id="main">
        <div class="margin30">
            <i class="fa fa-picture-o fa-2x"> 갤러리</i>
            <hr>
        </div> <!-- 타이틀 -->

        <div class="row margin1050">
            <div class="col-6">
                <button type="button" id="prevbd"
                        class="btn btn-light"
                        style="margin-left: -14px">
                    <i class="fa fa-chevron-left"> </i>
                    이전게시물
                </button>
                <button type="button" id="nextbd"
                        class="btn btn-light">
                    <i class="fa fa-chevron-right"> </i>
                    다음게시물
                </button>
            </div>
            <div class="col-6 text-right">
                <button type="button" id="newgal"
                        class="btn btn-light"
                        style="margin-right: -14px">
                    <i class="fa fa-plus-circle"> </i>
                    새글쓰기
                </button>
            </div>
        </div><!-- 버튼들 -->

        <div class="row margin1050">
            <table class="table">
                <tr><th colspan="2"
                    style="border-bottom: 3px solid black;
                           background: #dff0f8">
                    <h3>${g.title}</h3>
                </th></tr>
                <tr style="background: #ccff99">
                    <td class="text-left">종로 고양이 맘</td>
                    <td class="text-right">2012.07.28 16:02:35 / 13</td></tr>
                <tr style="background: #ffffcc">
                    <td colspan="2" class="text-left"
                        style="border-bottom: 3px solid black;">
                        <img src="${imgURL}${g.fname1}" class="img-fluid"><br>
                        <c:if test="${ not empty g.fname2}" >
                            <img src="${imgURL}${g.fname2}" class="img-fluid"><br></c:if>
                        <c:if test="${ not empty g.fname3}" >
                            <img src="${imgURL}${g.fname3}" class="img-fluid"><br></c:if>
                    </td></tr>
                <tr><td class="text-left">이미지1</td><td>${g.fname1} (123KB)</td></tr>
                <c:if test="${ not empty g.fname2}" >
                    <tr><td class="text-left">이미지2</td><td>${g.fname2} (1.3MB)</td></tr></c:if>
                <c:if test="${ not empty g.fname3}" >
                    <tr><td class="text-left">이미지3</td><td>${g.fname3} (1.3MB)</td></tr></c:if>
            </table>
        </div><!-- 본문 -->

        <div class="row margin1050">
            <div class="col-6">
                <button type="button" id="updgal"
                        class="btn btn-warning"
                        style="margin-left: -14px">
                    <i class="fa fa-pencil"> </i>
                    수정하기
                </button>
                <button type="button" id="delgal"
                        class="btn btn-danger">
                    <i class="fa fa-trash-o"> </i>
                    삭제하기
                </button>
            </div>
            <div class="col-6 text-right">
                <button type="button" id="lstgal"
                        class="btn btn-light"
                        style="margin-right: -14px">
                    <i class="fa fa-list"> </i>
                    목록으로
                </button>
            </div>
        </div><!-- 버튼들 -->

        <div class="row margin1050">
            <h3 style="margin-top: 45px"><i class="fa fa-commenting"></i> 나도 한마디</h3>
            <table class="table" style="border-top: 3px solid black;
                                        border-bottom:3px solid black">
                <tr><td style="width:25%" class="text-left"><h4>zzyigy</h4></td>
                    <td>
                        <div style="background: yellow; padding: 5px 0">2012-02-08 14:43:49</div>
                        <p style="padding: 5px 0">지금도 등골 브레이커 맞습니다.<br>
                            애들 레고교육센터인가 뭔가 보낼려다가...학원비는 둘째치고, <br>
                           재료비에서 깜놀...<br><br>
                            그냥 작은 거 사다가 애들하고 맞추고 놀고 있습죠 ^^</p>
                        <ul class="list-unstyled"><!-- 댓글의 댓글 시작 -->
                            <li>
                                <div style="background: lime; padding: 5px 0">
                                    <span><b>zzyzzy</b></span>
                                    <span style="float: right">2012-02-08 14:50:35</span></div>
                                <p style="padding: 5px 0">정말인가요? 우아~ 심하다!~</p>
                            </li>
                        </ul>
                    </td></tr>

                <tr><td style="width:25%" class="text-left"><h4>zzyigy</h4></td>
                    <td>
                        <div style="background: yellow; padding: 5px 0">2012-02-08 14:43:49</div>
                        <p style="padding: 5px 0">지금도 등골 브레이커 맞습니다.<br>
                            애들 레고교육센터인가 뭔가 보낼려다가...학원비는 둘째치고, <br>
                            재료비에서 깜놀...<br><br>
                            그냥 작은 거 사다가 애들하고 맞추고 놀고 있습죠 ^^</p>
                    </td></tr>

                <tr><td style="width:25%" class="text-left"><h4>zzyigy</h4></td>
                    <td>
                        <div style="background: yellow; padding: 5px 0">2012-02-08 14:43:49</div>
                        <p style="padding: 5px 0">지금도 등골 브레이커 맞습니다.<br>
                            애들 레고교육센터인가 뭔가 보낼려다가...학원비는 둘째치고, <br>
                            재료비에서 깜놀...<br><br>
                            그냥 작은 거 사다가 애들하고 맞추고 놀고 있습죠 ^^</p>
                    </td></tr>

                <tr><td style="width:25%" class="text-left"><h4>zzyigy</h4></td>
                    <td>
                        <div style="background: yellow; padding: 5px 0">2012-02-08 14:43:49</div>
                        <p style="padding: 5px 0">지금도 등골 브레이커 맞습니다.<br>
                            애들 레고교육센터인가 뭔가 보낼려다가...학원비는 둘째치고, <br>
                            재료비에서 깜놀...<br><br>
                            그냥 작은 거 사다가 애들하고 맞추고 놀고 있습죠 ^^</p>
                    </td></tr>

                <tr><td style="width:25%" class="text-left"><h4>zzyigy</h4></td>
                    <td>
                        <div style="background: yellow; padding: 5px 0">2012-02-08 14:43:49</div>
                        <p style="padding: 5px 0">지금도 등골 브레이커 맞습니다.<br>
                            애들 레고교육센터인가 뭔가 보낼려다가...학원비는 둘째치고, <br>
                            재료비에서 깜놀...<br><br>
                            그냥 작은 거 사다가 애들하고 맞추고 놀고 있습죠 ^^</p>
                    </td></tr>


            </table>
        </div><!-- 댓글 -->

        <div class="row margin1050">
            <form class="card card-body bg-light"
                style="margin: 30px 0;">
                <div class="form-group row">
                    <label style="margin:auto">로그인하세요</label>

                    <textarea id="comment" rows="10"
                        class="form-control col-7"></textarea>

                    <button type="button" id="bdcmt"
                        class="btn btn-dark" style="margin:auto">
                        <i class="fa fa-commenting"></i>
                        댓글쓰기</button>
                </div>
            </form>
        </div><!-- 댓글쓰기 -->

    </div>
    <!-- 메인영역 끝 -->

