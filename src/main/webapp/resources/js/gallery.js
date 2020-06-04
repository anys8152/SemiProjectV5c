$('#galokbtn').on('click', function () {
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
        $('#galleryfrm').submit();
    }
}); // 새글등록

$('#newgal').on('click', function () {
    location.href = '/gallery/write.do';
}); // 새글쓰기

$('#lstgal').on('click', function () {
    location.href = '/gallery/list.do';
}); // 목록으로

$('#galnobtn').on('click', function () {
    location.href = '/gallery/list.do';
}); // 취소하기

$('#delgal').on('click', function () {
    location.href =
        '/gallery/delete.do?gno=';
}); // 삭제하기

$('#updgal').on('click', function () {
    location.href =
        '/gallery/update.do?gno=';
}); // 수정하기