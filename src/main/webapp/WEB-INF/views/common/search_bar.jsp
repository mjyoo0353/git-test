<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- 검색 search.js로 연결 -->
<script src="/resources/js/search.js"></script>

<!-- display flex를 주면 자식태그의 내용이 인라인 블럭으로 바뀌어서 끝나도 줄바꿈이 일어나지 않고 폭도 컨텐츠크기만큼만 가짐
	 부모태그로 justify-content-between을 안주면 왼쪽으로 차례대로 정렬됨
	 align-items는 수직방향(높이) / justify-content는 수평방향(왼쪽오른쪽) 정렬 -->
<div class="d-flex justify-content-between align-items-center my-4">
	<div class=" ">총 ${pageMaker.total} 건 
	(${pageMaker.cri.pageNum} .. ${pageMaker.totalPage} page)
	</div>
	<div>
		<form:form id="searchForm" modelAttribute="cri" method="get" class="d-flex">
			<!-- display flex -->
			<form:hidden path="pageNum"/> 
			<form:hidden path="amount"/> 
			<form:select path="type" items="${searchTypes}" class="form-select rounded-0 ml-1"/> <!-- 직각모서리 rounded zero -->
			
			<div class="input-group">
				<form:input path="keyword" cssClass="form-control rounded-0"/>
				<button type="submit" class="btn btn-success rounded-0">
					<i class="fa-solid fa-magnifying-glass"></i>검색
				</button>
			</div>
		</form:form>
	</div>
</div>

