<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="bs4/css/bootstrap.min.css">
    <link rel="stylesheet" href="fa47/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/semiproject.css">
    <title>부트스트랩4-index</title>
</head>
<body>
<div class="container">
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
            <li class="nav-item"><a class="nav-link" href="">프로젝트소개</a></li>
            <li class="nav-item"><a class="nav-link" href="">회원가입</a></li>
            <li class="nav-item"><a class="nav-link" href="">게시판</a></li>
            <li class="nav-item"><a class="nav-link" href="">자료실</a></li>
            <li class="nav-item"><a class="nav-link" href="">갤러리</a></li>
            <li class="nav-item"><a class="nav-link" href="">관리자</a></li>
        </ul>
    </nav>

    <div></div>
    <footer>
        <h6 class="bg-light text-right">Copyright &copy; Lorem Ipsum 2020.
            All right Reserved. Created by Bootstrap4.</h6>
    </footer>
</div>

<!-- 로그인 모달 시작 -->
<div id="loginmodal" class="modal fade" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">로그인</h3>
                <button class="btn btn-light" type="button"
                        data-dismiss="modal">닫기</button>
            </div>
            <div class="modal-body">
                <form id="loginfrm">
                    <div class="form-group row text-center">
                        <label for="uid"
                               class="col-form-label col-4">아이디</label>
                        <input type="text" id="uid"
                               class="form-control col-6">
                    </div>
                    <div class="form-group row text-center">
                        <label for="pwd"
                                class="col-form-label col-4">비밀번호</label>
                        <input type="password" id="pwd"
                                class="form-control col-6">
                    </div>
                    <div class="form-group row text-center">
                        <div class="col-4"></div>
                        <div class="form-check">
                            <input type="checkbox"
                                   class="form-check-input">
                            <label class="form-check-label">
                                로그인 상태 유지</label>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button"
                        class="btn btn-danger">로그인</button>
                <button type="button"
                        class="btn btn-success">아이디/비밀번호 찾기</button>
            </div>
        </div>
    </div>
</div>
<!-- 로그인 모달 끝 -->

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="bs4/js/bootstrap.min.js"></script>
</body>
</html>