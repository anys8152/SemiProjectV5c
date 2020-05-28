$('#bdregbtn').on('click', function () {
    if ($('#title').val() == '') {
        alert('제목을 입력하세요!!');
        $('#title').focus();

    } else if ($('#userid').val() == '') {
        alert('작성자를 입력하세요!!');
        $('#userid').focus();

    } else if ($('#contents').val() == '') {
        alert('본문을 입력하세요!!');
        $('#contents').focus();

    } else {
        $('#bdfrm').submit();
    }
}); // 새글등록

$('#newbd').on('click', function () {
    location.href = '/board/write.do';
}); // 새글쓰기

$('#lstbd').on('click', function () {
    location.href = '/board/list.do';
}); // 목록으로

$('#bdnobtn').on('click', function () {
    location.href = '/board/list.do';
}); // 취소하기

$('#deltbd').on('click', function () {
    location.href =
        '/board/delete.do?bno=${param.bno}';
}); // 삭제하기

$('#updbd').on('click', function () {
    location.href =
        '/board/update.do?bno=${param.bno}';
}); // 수정하기