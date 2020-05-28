<%@ page pageEncoding="UTF-8" %>

    <!-- 메인영역 시작 -->
    <div id="main">
        <div class="margin30">
            <i class="fa fa-upload fa-2x"> 자료실</i>
            <hr>
        </div> <!-- 타이틀 -->

        <div class="row margin1050">
            <div class="col-6">
               <h4><i class="fa fa-pencil-square-o"></i>
                   수정하기</h4>
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
                           class="form-control col-9"
                        value="[날씨]&quot;숨이 턱턱&quot;..전국 곳곳 &apos;폭염경보&apos;">
                </div><!-- 제목 -->

                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">
                        작성자</label>
                    <input type="text" id="userid" name="userid"
                         class="form-control col-9" readonly value="902호 달인">
                </div><!-- 작성자 -->

                <div class="form-group row">
                    <label class="col-form-label col-2 text-right">
                        본문내용</label>
                    <textarea id="contents" name="contents" rows="15"
                         class="form-control col-9">중복(中伏)인 28일 불볕더위가 이어지며 전국 곳곳에 폭염특보가 발효 중이다.



기상청에 따르면 이날 오전 11시 이후 강원도 강릉시평지, 충청북도 옥천군, 전라남도 나주시·곡성군·구례군·화순군 등에 폭염경보가 내려져 있다.

경상북도에는 구미시·영천시·경산시·군위군·청도군·고령군·성주군·칠곡군·김천시·상주시·문경시·예천군·안동시·영주시·의성군·청송군·영덕군·

포항시·경주시에, 경상남도는 양산시·창원시·김해시·밀양시·의령군·함안군·창녕군·진주시·하동군·산청군·함양군·거창군·합천군·사천시에

폭염경보가 발효 중이다.

광주, 대구, 부산, 울산 역시 폭염경보 발효지역이다.



서울을 비롯해 대전, 세종시, 김포시를 제외한 경기도 지역 등에는 폭염주의보가 내려져 있다.

기상청은 "폭염특보가 발효된 지역에서는 가급적 야외활동을 자제하고 물을 평소보다 자주 섭취하라"며 "실내에서는 햇볕을 막아주고

통풍이 잘되도록 환기하라"고 당부했다.

폭염특보 발표구역의 일최고열지수(Heat Index)는 34~45℃로 예상된다.



한편 이날 제주도를 중심으로 소나기가 오는 곳이 있겠다.

기상청은 "제주도는 현재 대기 불안정으로 천둥·번개를 동반한 소나기가 내리는 곳이 있어 시설물관리와 안전에 유의하라"고 말했다.

                    </textarea>
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
                        <i class="fa fa-pencil-square-o"></i>수정하기
                    </button>&nbsp;
                    <button type="button" class="btn btn-danger">
                        <i class="fa fa-remove"></i>취소하기
                    </button>
                </div><!-- 버튼들 -->

            </form>
        </div><!-- 새글쓰기 폼 -->
    </div>
    <!-- 메인영역 끝 -->
