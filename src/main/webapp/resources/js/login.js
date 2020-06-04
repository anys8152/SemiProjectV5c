
// 회원가입버튼
$('#joinbtn').on('click', function () {
    location.href = 'join/agree.do';
});

// 로그인하기
$('#loginbtn').on('click', function () {
    if ($('#userid').val() == '')
        alert('아이디를 입력하세요!');
    else if ($('#password').val() == '')
        alert('비밀번호를 입력하세요!');
    else {
        $('#loginfrm').attr('action', '/login/login');
        $('#loginfrm').submit();
    }
});

// 로그아웃하기
$("#logoutbtn").on('click', function () {
   location.href='login/logout';
});
