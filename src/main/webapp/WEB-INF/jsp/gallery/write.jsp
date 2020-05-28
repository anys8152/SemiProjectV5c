<%@ page  pageEncoding="UTF-8" %>

    <!-- 메인영역 시작 -->
    <div id="main">
        <div class="margin30">
            <i class="fa fa-picture-o fa-2x"> 갤러리</i>
            <hr>
        </div> <!-- 타이틀 -->

        <div class="row margin1050">
            <div class="col-6">
               <h4><i class="fa fa-plus-circle"></i>
                   새글쓰기</h4>
            </div>
            <div class="col-6 text-right">
                <button type="button" id="lstbd"
                        class="btn btn-light">
                    <i class="fa fa-list"> </i>
                    목록으로
                </button>
            </div>
        </div><!-- 버튼들 -->

        <div class="row mgnpdg15">
            <form class="card card-body bg-light">
                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">
                        제목</label>
                    <input type="text" id="title" name="title"
                           class="form-control col-9">
                </div><!-- 제목 -->

                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">
                        작성자</label>
                    <input type="text" id="userid" name="userid"
                         class="form-control col-9" readonly>
                </div><!-- 작성자 -->

                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">
                        본문내용</label>
                    <textarea id="contents" name="contents" rows="15"
                         class="form-control col-9"></textarea>
                </div><!-- 본문내용 -->

                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">
                        파일첨부</label>

                    <div class="custom-file col-7">
                        <input type="file" id="file1" name="files"
                                class="custom-file-input">
                        <label class="custom-file-label">
                                첨부할 파일을 선택하세요</label>
                    </div>
                    <div class="custom-file col-7 offset-2">
                        <input type="file" id="file2" name="files"
                               class="custom-file-input">
                        <label class="custom-file-label">
                            첨부할 파일을 선택하세요</label>
                    </div>
                    <div class="custom-file col-7 offset-2">
                        <input type="file" id="file3" name="files"
                               class="custom-file-input">
                        <label class="custom-file-label">
                            첨부할 파일을 선택하세요</label>
                    </div>
                </div><!-- 파일첨부 -->

                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">
                        자동가입방지</label>
                    <img src="../img/google_recaptcha.gif"
                         width="50%" height="50%"
                         style="margin-left: -5px">
                </div><!-- 자동가입방지 -->

                <div class="row justify-content-center"
                    style="margin-top: 55px">
                    <hr style="width:90%; color:grey; margin: 35px 0">
                    <button type="button" class="btn btn-primary">
                        <i class="fa fa-check"></i>입력하기
                    </button>&nbsp;
                    <button type="button" class="btn btn-danger">
                        <i class="fa fa-remove"></i>취소하기
                    </button>
                </div><!-- 버튼들 -->

            </form>
        </div><!-- 새글쓰기 폼 -->
    </div>
    <!-- 메인영역 끝 -->

