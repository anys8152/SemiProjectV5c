<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%-- 줄바꿈 문자를 newChar 변수에 저장 --%>
<c:set var="newChar" value="
" scope="page" />


<!-- 메인영역 시작 -->
    <div id="main">
        <div class="margin30">
            <i class="fa fa-comments fa-2x"> 자유게시판</i>
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
                <button type="button" id="newbd"
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
                    <h3>${b.title}</h3>
                </th></tr>
                <tr style="background: #ccff99">
                    <td class="text-left">${b.userid}</td>
                    <td class="text-right">${b.regdate} / ${b.views} / ${b.thumbup}</td></tr>
                <tr style="background: #ffffcc">
                    <td colspan="2" class="text-left"
                        style="border-bottom: 3px solid black;">${fn:replace(b.contents, newChar , "<br>" )}</td></tr>
            </table>
            <input type="hidden" id="bno" value="${param.bno}">
        </div><!-- 본문 -->

        <div class="row margin1050">
            <div class="col-6">
                <button type="button" id="updbd"
                        class="btn btn-warning"
                        style="margin-left: -14px">
                    <i class="fa fa-pencil"> </i>
                    수정하기
                </button>
                <button type="button" id="delbd"
                        class="btn btn-danger">
                    <i class="fa fa-trash-o"> </i>
                    삭제하기
                </button>
            </div>
            <div class="col-6 text-right">
                <button type="button" id="lstbd"
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
                <c:forEach var="c" items="${r}">
                    <c:if test="${c.rno eq c.refno}">
                    <tr><!-- 댓글 시작 -->
                        <td style="width:25%" class="text-left"><h4>${c.userid}</h4></td>
                         <td>
                          <div style="background: yellow; padding: 5px 0">${c.regdate} / ${c.thumbup}</div>
                             <span style="float:right;">
                                 <a href="javascript:addReply('${c.rno}')"> [추가] </a>
                                 [수정] [삭제]</span>
                          <p style="padding: 5px 0">${c.reply}</p>
                        </td></tr> <!-- 댓글 끝 -->
                    </c:if>

                    <c:if test="${c.rno ne c.refno}" >
                    <tr><!-- 댓글의 댓글 시작 -->
                        <td style="width:25%" class="text-left"><h4>${c.userid}</h4>&nbsp;</td>
                        <td>
                            <div style="background: lime; padding: 5px 0 ">
                                <span><b>${c.userid}</b></span>
                                <span style="float: right;">${c.regdate} / ${c.thumbup}</span></div>
                            <p style="padding: 5px 0">${c.reply}</p>
                        </td></tr> <!-- 댓글의 댓글 끝 -->
                    </c:if>
                </c:forEach>

            </table>
        </div><!-- 댓글 -->

        <div class="row margin1050">
            <form class="card card-body bg-light" method="post"
                style="margin: 30px 0;" name="replyfrm" id="replyfrm">
                <div class="form-group row">
                    <label style="margin:auto">로그인하세요</label>

                    <textarea id="reply" rows="10" name="reply"
                        class="form-control col-7"></textarea>

                    <button type="button" id="replybtn"
                        class="btn btn-dark" style="margin:auto">
                        <i class="fa fa-commenting"></i>
                        댓글쓰기</button>
                </div>
                <input type="hidden" name="userid" value="${param.uid}" />
                <input type="hidden" name="bno" value="${param.bno}" />
            </form>
        </div><!-- 댓글쓰기 -->

        <div class="modal hide" id="cmtModal" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3 class="modal-header">대댓글 쓰기</h3>
                    </div>
                    <div class="modal-body">
                        <form name="cmtfrm" id="cmtfrm"
                              method="post" class="well form-inline">
                            <textarea name="reply" id="comment" rows="8" cols="75" class="span4"></textarea>
                            <input type="hidden" name="userid"  value="${param.uid}">
                            <input type="hidden" name="bno" value="${param.bno}">
                            <input type="hidden" id="refno" name="refno">
                        </form>
                    </div>
                    <div class="modal-footer justify-content-center" >
                        <button type="button" id="cmtbtn" class="btn btn-danger">대댓글 작성</button>
                    </div>
                </div>
            </div>


        </div><!-- 대댓글 쓰기-->

    </div>
    <!-- 메인영역 끝 -->

