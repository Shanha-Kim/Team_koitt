<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head> 
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS & theme -->
<link rel="stylesheet" href="/css/bootstrap-lux.css">
<link rel="stylesheet" href="/css/bootstrap.custom.css">

<!-- Font Awesome 5 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<title>MainPage</title>
</head>
<body class="bg-primary">
    <jsp:include page="nav.jsp" flush="false" />
    
	<c:if test="${empty SID}">
		<div class="container" id="main">
			<div class="card text-white bg-primary mb-" style="max-width:40rem;">
				<div class="card-header">Main Page</div>
					<div class="card-body">
						<h4 class="card-title" style="margin-bottom: 30px;">Welcome to MUSICOLOR</h4>
						<br> 
						<button id="login" class="btn btn-info" style="width: 49.5%; display: inline;">로그인</button>
						<button id="join" type="button" class="btn btn-info" style="width: 49.5%; display: inline;">회원가입</button>
					</div>
			</div> 
		</div> 
	</c:if>
	<c:if test="${not empty SID}">
		<div class="container" id="main">
			<div class="card text-white bg-primary mb-" style="max-width:40rem;">
				<div class="card-header">Main Page</div>
				<div class="card-body">
					<h4 class="card-title" style="margin-bottom: 30px;">Welcome to MUSICOLOR</h4>
					<div class="card-header">${SID}님 환영합니다.</div>
					<br>
					<button id="logout" type="button" class="btn btn-info" style="width: 100%; display: inline;">로그아웃</button>
				</div>
			</div>
		</div>
	</c:if>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#login').click(function() {
			$(location).attr('href', '/login.mr');
		})
		
		$('#join').click(function() {
			$(location).attr('href', '/join.mr');
		})
		
		$('#logout').click(function(){
			$(location).attr('href', '/logout.mr');
		});
	});
</script>
	  
</body>
</html>