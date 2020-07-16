<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function a(m_no){
		if(m_no == 1){
			window.location = "/movie/theatherList?m_no="+m_no;
			
		}else{
			alert("상영중인 상영관이 없습니다.")
		}
	}
</script>
</head>
<body>
<%-- ${listMovie } --%>
<c:forEach items="${listMovie }" var="movie">
	영화제목 : ${movie.m_title }<br>
	나이제한 : ${movie.m_age }<br>
	영화평점 : ${movie.m_score }<br>
	영화예매율 : ${movie.m_advance_rate }<br>
	영화장르 : ${movie.m_genre }<br>
	러닝타임 : ${movie.m_running_time }<br>
	개봉일 : ${movie.m_opendate }<br>
	영화감독 : ${movie.m_director }<br>
	출연배우 : ${movie.m_actors }<br>
	영화포스터 : <img src="${movie.m_main_poster }"><br>
	<div>
	<button type="button" id="${movie.m_no }" onclick="a(${movie.m_no })"><b style="color: red;">예약하기</b></button>
	</div>
</c:forEach>
</body>
</html>