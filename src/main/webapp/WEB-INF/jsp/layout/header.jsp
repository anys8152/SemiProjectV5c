<%@ page pageEncoding="UTF-8" %>
<header><!-- 상단로고/로그인,회원가입버튼 -->
    <div class="row">
        <div class="col-md-6">
            <h1>Lorem Ipsum</h1>
        </div>
        <div class="col-md-6 text-right">
            <h1><button type="button"
                        class="btn btn-danger"
                        data-toggle="modal"
                        data-target="#loginmodal">로그인</button>
                <button type="button"
                        class="btn btn-primary"
                        id="joinbtn">회원가입</button></h1>
        </div>
    </div>
</header>

<nav class="nav navbar-expand-md navbar-dark bg-dark">
    <ul class="nav navbar-nav nav-fill w-100">
        <li class="nav-item"><a class="nav-link" href="/intro.do">프로젝트소개</a></li>
        <li class="nav-item"><a class="nav-link" href="/join/agree.do">회원가입</a></li>
        <li class="nav-item"><a class="nav-link" href="/board/list.do">게시판</a></li>
        <li class="nav-item"><a class="nav-link" href="/pds/list.do">자료실</a></li>
        <li class="nav-item"><a class="nav-link" href="/gallery/list.do">갤러리</a></li>
        <li class="nav-item"><a class="nav-link" href="/admin.do">관리자</a></li>
    </ul>
</nav>

