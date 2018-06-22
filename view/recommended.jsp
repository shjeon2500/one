<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="../css/bootstrap.css">
	<link rel="stylesheet" href="../css/custom.css">
	<title>Syno의 홈페이지</title>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="../js/bootstrap.js"></script>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		if (userID == null) {
			session.setAttribute("messageType", "오류 메시지");
			session.setAttribute("messageContent", "현재 로그인이 되어 있지 않습니다.");
			response.sendRedirect("login.jsp");
			return;
		}
	%>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">Syno의 홈페이지</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a></li>
				<li><a href="latest.jsp">최신영화</a></li>
				<li class="active"><a href="recommended.jsp">추천영화</a></li>
				<li><a href="category.jsp">카테고리</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-extended="false">회원관리<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="serviceCenter.jsp">고객센터</a></li>
						<li><a href="update.jsp">회원정보수정</a></li>
						<li><a href="profileUpdate.jsp">프로필 수정</a></li>
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container" style="margin-top: 50px;">
		<br>
		<div class="row">
			<div class="col-xs-3">
				<img src="../images/one1.png" class="latest">
			</div>
			<div class="col-xs-3">
				<img src="../images/one2.png" class="latest">
			</div>
			<div class="col-xs-3">
				<img src="../images/one3.png" class="latest">
			</div>
			<div class="col-xs-3">
				<img src="../images/one1.png" class="latest">
			</div>
		</div>
		<div class="row">
			<div class="col-xs-3">
				<img src="../images/one1.png" class="latest">
			</div>
			<div class="col-xs-3">
				<img src="../images/one2.png" class="latest">
			</div>
			<div class="col-xs-3">
				<img src="../images/one3.png" class="latest">
			</div>
			<div class="col-xs-3">
				<img src="../images/one1.png" class="latest">
			</div>
		</div>
		<div class="row">
			<div class="col-xs-3">
				<img src="../images/one1.png" class="latest">
			</div>
			<div class="col-xs-3">
				<img src="../images/one2.png" class="latest">
			</div>
			<div class="col-xs-3">
				<img src="../images/one3.png" class="latest">
			</div>
			<div class="col-xs-3">
				<img src="../images/one1.png" class="latest">
			</div>
		</div>
		<div class="row">
			<div class="col-xs-3">
				<img src="../images/one1.png" class="latest">
			</div>
			<div class="col-xs-3">
				<img src="../images/one2.png" class="latest">
			</div>
			<div class="col-xs-3">
				<img src="../images/one3.png" class="latest">
			</div>
			<div class="col-xs-3">
				<img src="../images/one1.png" class="latest">
			</div>
		</div>
		<br>
	</div>
	<footer style="background-color: #000000; color: #ffffff;">
		<div class="container">
			<br>
			<p style="text-align: center;"><img src="../images/footer_Logo.png"></p>
			<h5 style="text-align: center; color: #ffffff;">이용약관 ｜개인정보처리방침 ｜ 고객센턴 </h5>
			<h5 style="text-align: center; color: #ffffff;">사업자명 (#######) 사업자번호(123-45-67890)<br>
			Copyright &copy; 2018 by SunHwan. Inc. All rights reserved</h5>
		</div>
	</footer>
	<%
		String messageContent = null;
		if (session.getAttribute("messageContent") != null) {
			messageContent = (String) session.getAttribute("messageContent");
		} 
		String messageType = null;
		if (session.getAttribute("messageType") != null) {
			messageType = (String) session.getAttribute("messageType");
		} 
		if (messageContent != null) {
	%>
	<div class="modal fade" id="messageModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div class="modal-content <% if(messageType.equals("오류 메시지")) out.println("panel-warning"); else out.println("panel-success"); %>">
					<div class="modal-header panel-heading">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span>
							<span class="sr-only">close</span>
						</button>
						<h4 class="modal-title">
							<%= messageType %>
						</h4>
					</div>
					<div class="modal-body">
						<%= messageContent %>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$('#messageModal').modal("show");
	</script>
	<%
		session.removeAttribute("messageContent");
		session.removeAttribute("messageType");
		}
	%>
	<div class="modal fade" id="checkModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div id="checkType" class="modal-content panel-info">
					<div class="modal-header panel-heading">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span>
							<span class="sr-only">close</span>
						</button>
						<h4 class="modal-title">
							확인 메시지
						</h4>
					</div>
					<div id="checkMessage" class="modal-body">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>