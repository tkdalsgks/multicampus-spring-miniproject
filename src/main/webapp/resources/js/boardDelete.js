let boardNo;

function getBoardNo(param_boardNo) {
    console.log(param_boardNo);
    boardNo = param_boardNo;
}
document.getElementById("btn2").addEventListener("click", deleteHandler);

function deleteHandler() {
    alert("삭제되었습니다.");
    location.href = `boarddelete?boardNo=${boardNo}`
}