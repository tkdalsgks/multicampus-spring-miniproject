/**
 * @author Seongil, Yoon
 */
 const boardType = "qeus";
 let pageNum = 1;
 
 /*
 function boardListAjax() {
   $(".boardLine").remove();
   let html = "";
   $.ajax({
     url: `boardlist/${boardType}?page=${pagenum}`,
     type: "GET",
     dataType: "json", //json 으로 받기
     success: function (result) {
       console.log(result);
       for (let i = 0; i < result.length; i++) {
         html += `
             <li class="boardLine" value="${result[i].boardNo}">
                 <div>
                     <a class="contents" id="boardInfo" name="boardInfo" href="free_view.html">
                         <span>${result[i].boardNo}</span>
                         <span>${result[i].boardName}</span>
                         <span>${result[i].boardContent}</span>
                         <span>${result[i].userName}</span>
                         <span>${timeForToday(result[i].regdate)}</span>
                     </a>
                 </div>
                 <div>
                     <a class="btnClass" id="alterBtn" name="alterBtn" href="freeboard_alter.html">
                         글 수정
                     </a>
                     <a class="btnClass" id="delBtn" name="delBtn";">
                         글 삭제
                     </a>
                 </div>
             </li>
           `;
       } //end of for
       $("ul[class=boardList]").append(html);
     },
     error: function (error) {
       //서버오류 500  찾는 자료없음 404  권한없음  401
       if (error.status == 404) {
         swal('찾는 자료가 없습니다', '', 'error');
       } else if (error.status == 401) {
         swal('접근 권한이 없습니다', '', 'error');
       } else if (error.status == 500) {
         swal('서버 오류 관리자에게 문의 하세요', '', 'error');
       }
     }
   }); //end of ajax
 }
 */
 
 
 function deleteHandler() {
   $(document).on("click", "#delBtn", function (event) {
     let boardNo = $(event.target).parents(".boardLine").val();
     swal({
         title: `${boardNo}번글 다시 확인해 주세요`,
         text: "게시글을 삭제하면 다시 복구가 불가능합니다",
         icon: "warning",
         buttons: true,
         dangerMode: true,
       })
       .then((willDelete) => {
         if (willDelete) { //true
           //이벤트 부모태그인 li의 value값 가져오기
           $.ajax({
             url: `boarddelete?boardNo=${boardNo}`,
             type: "GET", //데이터 전달방식
             success: function (result, textStatus, jqxHR) {
               if (jqxHR.status == 200) {
                 swal({
                   title: "게시글이 삭제되었습니다",
                   text: "",
                   icon: "info",
                   type: "success",
                   timer: 1.1 * 1000
                 }).then(() => {
                     location.href = "free";
                 })
               }
             },
             error: function (error) {
               //서버오류 500  찾는 자료없음 404  권한없음  401
               if (error.status == 404) {
                 swal('찾는 자료가 없습니다', '', 'error');
               } else if (error.status == 401) {
                 swal('삭제 권한이 없습니다', '', 'error');
               } else if (error.status == 500) {
                 swal('서버 오류 관리자에게 문의 하세요', '', 'error');
               }
             }
           }) //end of ajax
         } else {
           // swal("취소하였습니다.");
         }
       });
   }); //end of click
 }
 
 //시간차이 계산 함수
 function timeForToday(value) {
   const today = new Date();
   const timeValue = new Date(value);
   // const timeValue = new Date(value[0], value[1] - 1, value[2], value[3], value[4], value[5], 0);
 
   //시간은 1970-01-01을 기준으로 한 에포크시간.
   const betweenTime = Math.floor((today.getTime() - timeValue.getTime()) / 1000 / 60);
   if (betweenTime < 1) return '방금전';
   if (betweenTime < 60) {
     return `${betweenTime}분전`;
   }
 
   const betweenTimeHour = Math.floor(betweenTime / 60);
   if (betweenTimeHour < 24) {
     return `${betweenTimeHour}시간전`;
   }
 
   const betweenTimeDay = Math.floor(betweenTime / 60 / 24);
   if (betweenTimeDay < 365) {
     if (betweenTimeDay == 0) {
       return `오늘 작성`;
     }
     return `${betweenTimeDay}일전 작성`;
   }
 
   return `${Math.floor(betweenTimeDay / 365)}년전`;
 }
 
 function main() {
   // boardListAjax();
   // boardCountAjax();
   deleteHandler();
 
   //  게시판 DOM순회 후 각 게시글 시간차 계산
   $(".boardLine").each(function (index, element) {
     let regdate = $(element).find("#timeForToday").text();
     let timeMsg = timeForToday(regdate);
     $(element).find("#timeForToday").text(timeMsg);
   });
 
 }
 
 main();
 
 
 
 
 //JSP파일 Model-pagenum속성값
 function pagelistReady(pagenum) {
   pageNum = pagenum;
   let html = "";
   for (let i = 1; i <= pageNum; i++) {
     html += `<a href="${boardType}?page=${i}">${i}</a><span style="width: 50px;display: inline-block;"></span>`;
   }
   $("#boardPageNum").append(html);
 }