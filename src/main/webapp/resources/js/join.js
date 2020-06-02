
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


// checkid
// 아이디 중복체크
function checkuid() {

}
$('#uid').on('blur',function () {

   $.ajax({
       url: 'join/checkuid',
       type: 'GET',
       data: { uid: $('#uid').val() }
   })   // 비동기 요청
       .done(function (data) {
            /*alert(data);*/
            var msg = '사용 불가능 한 아이디 입니다.';
            if( data.trim() == '0' ){
                msg = '사용가능합니다.';
            }
            $('#uidmsg').text(msg);
       })   // 처리완료
       .fail(function (xhr, status, error) {
           alert("오류 : " + xhr.status + " / " + error);
       });  // 처리 실패

   $('#uidmsg').text(msg);
});


//showzip
// 우편번호 찾기 모달창 표시

$('#showzipbtn').on('click',function () {
    $('#dong').val("");
    $('#addrlist').find('option').remove();

    $('#zipcode').modal('show')
})


// findzip
// ajax로 우편번호 검색 후 결과 출력
// 실제 요청 주소 : /join/zipcode?dong=창신
function findzipcode() {

    $.ajax({
        url: '/join/zipcode',
        type: 'GET',
        data: { dong: $('#dong').val() }
    })// 비동기 요청 정의
        .done(function (data) {
            // 서버에서 넘어온 데이터는 JSON형이므로 출력시 Object로만 보여짐
           /* alert("데이터 : " + $('#dong').val() + "\n" + "결과 : " + data);*/

           var opts = "";
           $.each(data, function () {   // 행단위 반복 처리
              var zip = "";
              $.each(this, function (k, v) {
                  if (v != null) zip += v + " ";
              });
              opts += "<option>" + zip + "</option>";
           });

           $('#addrlist').find("option").remove();
           // 기존의 option 태그를 제거
           $('#addrlist').append(opts);
           //

})  // 요청 후 넘어온 응답 결과 처리
        .fail(function (xhr, status, error) {
            alert("오류 : "  + xhr.status + "/" + error)
        }); // 요청 실패후 처리

}

$("#findzipbtn").on('click', function(){
    findzipcode();
});


// sendzip
function sendzipcode() {
    var addr = $('#addrlist option:selected').val();
    // 선택한 주소항목의 값을 변수로 지정
    
    if(addr == undefined){
        alert('주소를 선택하세요~!!~');
        return;
    }
    
    var addrs = addr.split(" "); // 공백으로 분리

    // 분리된 주소를 지정한 위치로 보냄
    $("#zip1").val(addrs[0].split("-")[0]);
    $("#zip2").val(addrs[0].split("-")[1]);

    // 공백으로 분리한 나머지 주소는 기본주소로 채움
    $("#addr1").val(addrs[1]+" "+addrs[2]+" "+addrs[3]/*+" "+addrs[4]*/);
}

$("#sendzipbtn").on('click', function(){
    sendzipcode();
});
