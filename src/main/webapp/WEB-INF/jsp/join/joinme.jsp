<%@ page pageEncoding="UTF-8" %>

<!-- joinme : 메인영역 시작 -->
<div id="main">
    <div class="margin30">
        <i class="fa fa-users fa-2x"> 회원가입</i>
        <hr>
    </div> <!-- 타이틀 -->

    <nav aria-label="breadcrumb">
        <ul class="breadcrumb">
            <li class="breadcrumb-item">
                <button type="button"
                    class="btn btn-success" disabled>이용약관</button>
            </li>
            <li class="breadcrumb-item">
                <button type="button"
                    class="btn btn-success" disabled>실명확인</button>
        </li>
            <li class="breadcrumb-item active">
                <button type="button"
                    class="btn btn-success" disabled>정보입력</button>
            </li>
            <li class="breadcrumb-item">
                <button type="button"
                        class="btn btn-light" disabled>가입완료</button>
            </li>
        </ul>
    </nav> <!-- breadcrumb-->

    <div class="margin30">
        <h2>회원정보 입력</h2>
        <small class="text-muted">
            회원정보는 개인정보 취급방침에 따라 안전하게 보호되며,
            회원님의 명백한 동의없이 공개 또는 제3자에게 제공되지 않습니다.
        </small>
        <hr>
    </div> <!-- 중간 타이틀 -->

    <div class="card card-body bg-light mgnpdg15">
        <form name="joinfrm" id="joinfrm"
              method="post">
        <h3>일반회원</h3>

        <div class="row margin30">
            <div class="col"></div>
            <div class="col-11">
                <div class="form-group row">
                    <label class="col-2 col-form-label"
                           for="name">이름</label>
                    <input type="text"
                           class="form-control col-2 border-info"
                           name="name" id="name" value="${param.name}"
                           readonly>
                </div><!-- 이름 -->

                <div class="form-group row">
                    <label class="col-2 col-form-label"
                           for="jumin1">주민등록번호</label>

                    <input type="text"
                           class="form-control col-2 border-warning"
                           name="jumin1" id="jumin1"
                           value="123456" disabled>
                    <label>&nbsp;&ndash;&nbsp;</label>
                    <input type="text"
                           class="form-control col-2 border-warning"
                           name="jumin2" id="jumin2"
                           value="1234567" disabled>
                </div><!-- 주민번호 -->

                <div class="form-group row">
                    <label class="col-2 col-form-label"
                           for="uid">아이디</label>
                    <input type="text"
                           class="form-control col-2 border-info"
                           name="uid" id="uid" maxlength="16">
                    <span class="col-form-label col-7 text-danger">
                        6~16 자의 영문 소문자, 숫자와 특수기호(_)만
                        사용할 수 있습니다.
                    </span>
                </div><!-- 아이디 -->

                <div class="form-group row">
                    <label class="col-2 col-form-label"
                           for="pwd">비밀번호</label>
                    <input type="password"
                           class="form-control col-2 border-info"
                           name="pwd" id="pwd" maxlength="16">
                    <span class="col-form-label col-7 text-danger">
                        6~16 자의 영문 소문자, 숫자와 특수기호(_)만
                        사용할 수 있습니다.
                    </span>
                </div><!-- 비밀번호 -->

                <div class="form-group row">
                    <label class="col-2 col-form-label"
                           for="repwd">비밀번호 확인</label>
                    <input type="password"
                           class="form-control col-2 border-info"
                           name="repwd" id="repwd" maxlength="16">
                    <span class="col-form-label col-7 text-danger">
                        이전 항목에서 입력했던 비밀번호를 한번 더 입력하세요.
                    </span>
                </div><!-- 비밀번호확인 -->

                <div class="form-group row">
                    <label class="col-2 col-form-label"
                           for="zip1">우편번호</label>
                    <input type="text"
                           class="form-control col-1 border-info"
                           name="zip1" id="zip1" maxlength="3" readonly>
                    <label class="col-form-label">&nbsp;&ndash;&nbsp;</label>
                    <input type="text"
                           class="form-control col-1 border-info"
                           name="zip2" id="zip2" maxlength="3" readonly>
                    <span class="col-7">
                        <button class="btn btn-dark" type="button"
                            data-toggle="modal" data-target="#zipcode">
                            <i class="fa fa-question-circle"></i>
                            우편번호 찾기
                        </button>
                    </span>
                </div><!-- 우편번호 -->

                <div class="form-group row">
                    <label class="col-2 col-form-label"
                           for="addr1">주소</label>
                    <input type="text"
                           class="form-control col-4 border-info"
                           name="addr1" id="addr1" readonly>
                    &nbsp;
                    <input type="text"
                           class="form-control col-4 border-info"
                           name="addr2" id="addr2">
                </div><!-- 주소 -->

                <div class="form-group row">
                    <div class="input-group">
                        <label class="col-2 col-form-label"
                           for="email1">전자우편 주소</label>
                        <input type="text"
                               class="form-control col-3 border-info"
                               name="email1" id="email1">
                        <div class="input-group-append">
                            <span class="input-group-text">@</span>
                        </div>
                        <input type="text"
                               class="form-control col-2 border-info"
                               name="email2" id="email2">&nbsp;
                        <select id="email3" class="form-control col-2">
                            <option>선택하세요</option>
                            <option>naver.com</option>
                            <option>daum.net</option>
                            <option>gmail.com</option>
                            <option>hotmail.com</option>
                            <option>직접입력하기</option>
                        </select>
                    </div>
                </div><!-- 전자우편 주소 -->

                <div class="form-group row">
                    <label class="col-2 col-form-label"
                           for="hp1">개인연락처</label>

                    <select id="hp1" name="hp1"
                        class="form-control col-2">
                        <option>국번</option>
                        <option>010</option>
                        <option>011</option>
                        <option>019</option>
                    </select>
                    <label class="col-form-label">&nbsp;&ndash;&nbsp;
                    </label>
                    <input type="text"
                           class="form-control col-2 border-info"
                           name="hp2" id="hp2">
                    <label class="col-form-label">&nbsp;&ndash;&nbsp;
                    </label>
                    <input type="text"
                           class="form-control col-2 border-info"
                           name="hp3" id="hp3">

                </div><!-- 개인연락처 -->

                <div class="form-group row">
                    <label class="col-2 col-form-label"
                           for="captcha">자동가입방지</label>
                    <img src="../img/google_recaptcha.gif"
                         width="50%" height="50%"
                         style="margin-left: -5px; margin-bottom: 5px;">
                    <input type="text"
                           class="form-control col-4 border-info"
                           name="captcha" id="captcha"
                           style="margin-left: 155px">&nbsp;
                    <button type="button" class="btn btn-dark">
                        <i class="fa fa-refresh"></i>
                        다른 captcha 보기</button>
                </div><!-- 자동가입방지 -->

                <div class="row justify-content-center"
                     style="margin-top: 85px;">
                    <button type="button" class="btn btn-primary" id="joinokbtn">
                        <i class="fa fa-check"></i>입력하기
                    </button>&nbsp;
                    <button type="button" class="btn btn-danger" id="joinnobtn">
                        <i class="fa fa-remove"></i>취소하기
                    </button>
                </div><!-- 버튼들 -->
            </div>
        </div>
        </form>
    </div><!-- 회원정보 입력 -->

</div>
<!-- 메인영역 끝 -->

<!-- 우편번호 찾기 모달 시작 -->
<div id="zipcode" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">우편번호 찾기</h3>
                <button type="button" data-dismiss="modal"
                        class="btn btn-light">&times</button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="row">
                        <div class="col-1"></div>
                        <div class="col-3">
                            <label for="dong"
                                   class="text-right text-danger"
                                style="margin-top: -7px">
                                검색하실 주소의<br> 동이름을
                                입력하세요
                            </label>
                        </div>
                        <div class="col-4">
                            <input type="text" id="dong"
                               name="dong"
                               class="form-control border-danger">
                        </div>
                        <div class="col-3">
                            <button type="button"
                                    class="btn btn-primary">
                                <i class="fa fa-search"></i>
                                검색하기
                            </button>
                        </div>
                        <div class="col-1"></div>
                    </div>

                    <div class="row">
                        <div class="col-1"></div>
                        <div class="col-11">
                            <hr class="col-10" style="margin-left: -18px">
                            <p>지역의 읍/면/동의 이름을 공백없이 입력하신 후,
                                [검색하기] 버튼을 클릭하세요</p>
                            <select id="addrlist" name="addrlist"
                                size="10" class="form-control col-10">
                                <option>123-456 서울 종로구 창신동</option>
                                <option>123-456 서울 종로구 창신동</option>
                                <option>123-456 서울 종로구 창신동</option>
                                <option>123-456 서울 종로구 창신동</option>
                                <option>123-456 서울 종로구 창신동</option>
                                <option>123-456 서울 종로구 창신동</option>
                                <option>123-456 서울 종로구 창신동</option>
                                <option>123-456 서울 종로구 창신동</option>
                                <option>123-456 서울 종로구 창신동</option>
                                <option>123-456 서울 종로구 창신동</option>
                                <option>123-456 서울 종로구 창신동</option>
                                <option>123-456 서울 종로구 창신동</option>
                                <option>123-456 서울 종로구 창신동</option>
                                <option>123-456 서울 종로구 창신동</option>
                                <option>123-456 서울 종로구 창신동</option>
                            </select>
                        </div>
                        <div class="col-1"></div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" id="zipbtn"
                   class="btn btn-danger">선택하고 닫기</button>
            </div>
        </div>
    </div>
</div>
<!-- 우편번호 찾기 모달 끝 -->

