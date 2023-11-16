
 $(document).ready(function() {
	// 검색어 미입력시 출력화면
	// searchForm의 후손 중에서 버튼에 클릭 이벤트핸들러 걸기 (띄어쓰기는 후손)
	let searchForm = $('#searchForm');
	
	$('#searchForm button').on('click', function(e){
		let type = searchForm.find('option:selected');// :는 상태선택자, 선택된 옵션의 value를 return해달라는 요청
		if(!type.val()){
			alert('검색 대상을 선택하세요.');
			return false; // submit 하지 말라는 뜻
		}
		
		let keyword = searchForm.find('input[name="keyword"]');
		if(!keyword.val()){ //필수요소 체크
			alert('검색어를 입력하세요.');
			keyword.focus(); // 강조
			return false;			
		}
		
		searchForm.find('input[name="pageNum"]').val('1');
		e.preventDefault();
		
		searchForm.submit();
	});
});
 
 
 
 
 
 /* 	let actionForm = $('#actionForm');
	// 페이지 이동
	$('a.page-link').on('click', function(e) {
		e.preventDefault(); // 해당 태그의 디폴트 액션 실행 막음
		console.log("click")

	actionForm.find('input[name="pageNum"]').val($(this).attr('href'));
	actionForm.submit();
	});
	
	// 상세보기
	$('.move').on('click', function(e){
		e.preventDefault();
		actionForm.append('<input type="hidden" name="bno"/>');
		actionForm.find('input[name="bno"]')
					.val($(this).attr('href'));
		actionForm.attr('action', '/board/get'); // action attribute를 board/get으로 변경
		actionForm.submit();
	}); */