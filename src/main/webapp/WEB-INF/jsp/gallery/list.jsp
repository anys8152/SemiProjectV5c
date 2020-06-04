<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%-- 썸내일 이미지 출력시 사용할 기본 주소 설정 --%>
<c:set var="thumbURL" value="http://127.0.0.1/cdn/_thumb/small_" />

    <!-- 메인영역 시작 -->
    <div id="main">
        <div class="margin30">
            <i class="fa fa-picture-o fa-2x"> 갤러리</i>
            <hr>
        </div> <!-- 타이틀 -->

        <div class="row margin1050">
            <c:if test="${not empty UID}">
                <div class="col-12 text-right">
                    <button type="button" id="newgal"
                            class="btn btn-light">
                        <i class="fa fa-plus-circle"> </i>
                        새글쓰기
                    </button>
                </div>
            </c:if>
        </div><!-- 버튼들 -->

        <div class="row margin1050">
            <div class="col-12">
                <ul class="list-inline">

                    <c:forEach var="g" items="${glist}">

                    <li class="list-inline-item">
                        <a href="/gallery/view?gno=${g.gno}">
                            <img src="${thumbURL}${g.gno}.${fn:split(g.fname1,'.' )[1]}"
                                 class="img-thumbnail" width="235"
                            title="${g.title} / ${g.userid} /
                            ${fn:substring(g.regdate,0,10)} / ${g.views}"></a></li>
                    </c:forEach>

                </ul>
            </div>
        </div><!-- 갤러리 목록 -->

        <div class="row margin1050">
            <div class="col-12">
                <nav>
                    <ul class="pagination justify-content-center">
                        <li class="page-item disabled">
                            <a href="#" class="page-link">이전</a></li>
                        <li class="page-item active">
                            <a href="#" class="page-link">1</a></li>
                        <li class="page-item ">
                            <a href="#" class="page-link">2</a></li>
                        <li class="page-item ">
                            <a href="#" class="page-link">3</a></li>
                        <li class="page-item ">
                            <a href="#" class="page-link">4</a></li>
                        <li class="page-item ">
                            <a href="#" class="page-link">5</a></li>
                        <li class="page-item ">
                            <a href="#" class="page-link">6</a></li>
                        <li class="page-item ">
                            <a href="#" class="page-link">7</a></li>
                        <li class="page-item ">
                            <a href="#" class="page-link">8</a></li>
                        <li class="page-item ">
                            <a href="#" class="page-link">9</a></li>
                        <li class="page-item ">
                            <a href="#" class="page-link">10</a></li>
                        <li class="page-item ">
                            <a href="#" class="page-link">다음</a></li>
                    </ul>
                </nav>
            </div>
        </div><!-- 페이지 네비게이션 -->

    </div>
    <!-- 메인영역 끝 -->
