
// agree
$('#okagree').on('click', function() {
    if (!$('#agree1').is(':checked'))
        alert('이용약관에 동의하세요!');
    else if (!$('#agree2').is(':checked'))
        alert('개인정보 활용에 동의하세요!');
    else
        location.href = '/join/checkme.do';
}); // 모두 동의함

$('#noagree').on('click', function() {
    location.href = '/index.do';
}); // 동의하지 않음

// checkme
$('#checkbtn').on('click', function() {
    if ($('#name').val() == '')
        alert('이름을 입력하세요');
    else if ($('#byear').val() == "년도" ||
             $('#bmonth').val() == "월" ||
             $('#bday').val() == "일" )
        alert('생년월일을 선택하세요');
    else if (!$('#female').is(':checked') &&
             !$('#male').is(':checked'))
        alert('성별을 선택하세요');
    else
        location.href =
            '/join/verifyme.do?name=' + $('#name').val();

}); // 실명 확인하기

$('#cancelbtn').on('click', function() {
    location.href = '/index.do';
}); // 실명확인 취소하기

// verifyme
$('#requestbtn').on('click', function () {
    if ($('#hp1').val() == '국번' ||
        $('#hp2').val() == '' ||
        $('#hp3').val() == '')
        alert('휴대폰 번호를 입력하세요!!')
    else
        location.href =
            '/join/joinme.do?name=' + $('#name').val();

}); // 인증번호 요청

// joinme
$('#joinokbtn').on('click', function () {
    if( $('#name').val() == '' ) {
        alert('이름을 입력하세요!!');
        $('#name').focus();

    } else if( $('#jumin1').val() == '' ||
               $('#jumin2').val() == '' ) {
        alert('주민번호를 입력하세요!!');
        $('#jumin1').focus();

    }else if( $('#uid').val() == '' ) {
        alert('아이디를 입력하세요!!');
        $('#uid').focus();

    }else if( $('#pwd').val() == '' ) {
        alert('비밀번호를 입력하세요!!');
        $('#pwd').focus();

    }else if( $('#repwd').val() == '' ) {
        alert('비밀번호 확인을 입력하세요!!');
        $('#repwd').focus();

    }else if( $('#pwd').val() != $('#repwd').val() ) {
        alert('비밀번호를 확인하세요!!');
        $('#pwd').focus();

    //}else if( $('#zip1').val() == '' || $('#zip2').val() == '') {
    //    alert('우편번호를 입력하세요!!');
    //    $('#zip1').focus();

    //}else if( $('#addr1').val() == '' || $('#addr2').val() == '') {
    //    alert('나머지 주소를 입력하세요!!');
    //    $('#addr2').focus();

    }else if( $('#email1').val() == '' || $('#email2').val() == '' ) {
        alert('이메일을 입력하세요!!');
        $('#email1').focus();
        
    }else if( $('#hp1').val() == '' ||
        $('#hp2').val() == '' || $('#hp3').val() == '') {
        alert('전화번호를 입력하세요!!');
        $('#hp1').focus();

    } else {
		$('#joinfrm').submit();
	}
}); // 회원가입완료

$('#joinnobtn').on('click', function () {
    location.href = '/index.do';
}); // 회원가입취소

// joinok
$('#go2index').on('click', function () {
    location.href = '/index.do';
}); // 메인으로

