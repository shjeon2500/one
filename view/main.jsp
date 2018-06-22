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
				<li class="active"><a href="main.jsp">메인</a></li>
				<li><a href="latest.jsp">최신영화</a></li>
				<li><a href="recommended.jsp">추천영화</a></li>
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
	<div class="container-fluid" style="background-color: black; margin-top: 50px;">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="container">
				<div class="carousel-inner">
					<div class="item active">
						<div class="row">
							<div class="col-sm-6">
								<a><img src="../images/poster1.png" class="poster"></a>
							</div>
							<div class="col-sm-6">
								<div class="posterContent">
									<br>
									<h2>범죄도시</h2>
									<br>
									<p>청불, 2017, 범죄, 액션, 한국, 121분</p>
									<p>감독  강윤성</p>
									<p>출연  마동석, 윤계상, 진선규, 최귀화, 박지환 등</p>
									<p>
									2004년 서울…하얼빈에서 넘어와 단숨에 기존 조직들을 장악하고 가장 강력한 세력인 춘식이파 보스
									‘황사장(조재윤 분)’까지 위협하며 도시 일대의 최강자로 급부상한 신흥범죄조직의 악랄한 보스 ‘장첸(윤계상 분)’. 
									대한민국을 뒤흔든 ‘장첸(윤계상 분)’ 일당을 잡기 위해 오직 주먹 한방으로 도시의 평화를 유지해 온
									괴물형사 ‘마석도(마동석 분)’와 인간미 넘치는 든든한 리더 ‘전일만(최귀화 분)’ 반장이 이끄는 강력반은 나쁜 놈들을 한방에
									쓸어버릴 끝.짱.나.는. 작전을 세우는데… 통쾌하고! 화끈하고! 살벌하게!올 추석,
									 나쁜 놈들 때려잡는 강력반 형사들의 ‘조폭소탕작전’이 시작된다!</p>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="row">
							<div class="col-sm-6">
								<a><img src="../images/poster2.png" class="poster"></a>
							</div>
							<div class="col-sm-6">
								<div class="posterContent">
									<br>
									<h2>세얼간이</h2>
									<br>
									<p>12세, 2009, 드라마, 볼리우드, 인도, 171분</p>
									<p>감독  라지쿠마르 히라니</p>
									<p>출연  아미르 칸, 카리나 카푸르, R. 마드하반, 샤르만 조시, 보먼 이라니 등</p>
									<p>
									천재들만 간다는 일류 명문대 ICE, 성적과 취업만을 강요하는 학교를 발칵 뒤집어 놓은 대단한 녀석 란초!​아버지가 정해준 꿈, `공학자`가 되기 위해 정작 본인이 좋아하는 일은 포기하고 공부만 하는 파파보이 파르한!찢어지게 가난한 집, 병든 아버지와 식구들을 책임지기 위해 무조건 대기업에 취직해야만 하는 라주!​친구라는 이름으로 뭉친 `세 얼간이`! 삐딱한 천재들의 진정한 꿈을 찾기 위한 세상 뒤집기 한판이 시작된다!</p>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="row">
							<div class="col-sm-6">
								<a><img src="../images/poster3.png" class="poster"></a>
							</div>
							<div class="col-sm-6">
								<div class="posterContent">
									<br>
									<h2>초능력자</h2>
									<br>
									<p>15세, 2010, 스릴러, 드라마, 한국, 119분</p>
									<p>감독  김민석</p>
									<p>출연  강동원, 고수, 정은채, 에네스 카야, 최덕문 등</p>
									<p>
									괴물 같은 놈을 만났다!규남이 일하는 작고 외진 전당포, '유토피아'. 돈을 훔치러 들어온 초인이 사람들을 조종하기 시작하지만 초인의 통제를 벗어나 누군가가 힘겹게 움직이기 시작한다. 그 주인공은 바로 초능력이 통하지 않는 단 한 사람은 바로 규남이다. 너 도대체 정체가 뭐야! 당황한 초인은 사람을 죽이고 그 장면은 고스란히 CCTV에 담겨진다. 그 날부터 초인은 자신의 조용한 삶을 한 순간에 날려버릴 결정적 단서를 손에 쥔 규남을, 규남은 자신의 평화로운 일상을 쑥대밭으로 만들어 놓은 초인을 쫒기 시작하는데... 너는 나를 절대 만나지 말았어야 했어... 아무도 초인의 존재를 믿어주지 않는 가운데 홀로 뢰물 같은 상대와 싸움을 벌여야 하는 규남과 자신의 능력이 통하지 않는 상대와 싸워야 하는 초인, 두 남자의 피할 수 없는 대결이시작된다!</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div><!-- carousel end -->
	</div>
	<div class="container-fluid" style="background-color: #dddddd">
		<div class="container">
			<h2>최신영화</h2>
		</div>
		<div id="myCarousel1" class="carousel slide" data-ride="carousel">
			<div class="container">
				<div class="carousel-inner">
					<div class="item active">
						<div class="row">
							<img src="../images/one1.png" class="one">
							<img src="../images/one1.png" class="one">
							<img src="../images/one1.png" class="one">
							<img src="../images/one1.png" class="one">
							<img src="../images/one1.png" class="one">
							<img src="../images/one1.png" class="one">
							<img src="../images/one1.png" class="one">
							<img src="../images/one1.png" class="one">
						</div>
					</div>
					<div class="item">
						<div class="row">
							<img src="../images/one2.png" class="one">
							<img src="../images/one2.png" class="one">
							<img src="../images/one2.png" class="one">
							<img src="../images/one2.png" class="one">
							<img src="../images/one2.png" class="one">
							<img src="../images/one2.png" class="one">
							<img src="../images/one2.png" class="one">
							<img src="../images/one2.png" class="one">
						</div>
					</div>
					<div class="item">
						<div class="row">
							<img src="../images/one3.png" class="one">
							<img src="../images/one3.png" class="one">
							<img src="../images/one3.png" class="one">
							<img src="../images/one3.png" class="one">
							<img src="../images/one3.png" class="one">
							<img src="../images/one3.png" class="one">
							<img src="../images/one3.png" class="one">
							<img src="../images/one3.png" class="one">
						</div>
					</div>
				</div>
			</div>
			<br><br><br>
			<ol class="carousel-indicators">
				<li data-target="#myCarousel1" data-slide-to="0" style="background-color: black;" class="active"></li>
				<li data-target="#myCarousel1" data-slide-to="1" style="background-color: black;"></li>
				<li data-target="#myCarousel1" data-slide-to="2" style="background-color: black;"></li>
			</ol>
			<a class="left carousel-control" href="#myCarousel1" data-slide="prev" style="background-image: linear-gradient(to right, rgba(0, 0, 0, .0001) 100%, rgba(0, 0, 0, .5) 100%)">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel1" data-slide="next" style="background-image: linear-gradient(to right, rgba(0, 0, 0, .0001) 100%, rgba(0, 0, 0, .5) 100%)">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>		
	<div class="container-fluid" style="background-color: #262932;">
		<div class="container">
			<h2 style="color: white;">추천영화</h2>
			<br>
			<button class="btn btn-primary btn-xs btn-two">&nbsp;Drama&nbsp;</button>
			<button class="btn btn-primary btn-xs btn-two">&nbsp;Comedy&nbsp;</button>
			<button class="btn btn-primary btn-xs btn-two">&nbsp;Animation&nbsp;</button>
			<button class="btn btn-primary btn-xs btn-two">&nbsp;Thriller&nbsp;</button>
			<button class="btn btn-primary btn-xs btn-two">&nbsp;Crime&nbsp;</button>
			<button class="btn btn-primary btn-xs btn-two">&nbsp;Documentary&nbsp;</button>
			<button class="btn btn-primary btn-xs btn-two">&nbsp;Fear&nbsp;</button>
			<button class="btn btn-primary btn-xs btn-two">&nbsp;Action&nbsp;</button>
			<button class="btn btn-primary btn-xs btn-two">&nbsp;Romance&nbsp;</button>
			<button class="btn btn-primary btn-xs btn-two">&nbsp;SF&nbsp;</button>
			<button class="btn btn-primary btn-xs btn-two">&nbsp;Mystery&nbsp;</button>
		</div>
		<br>
		<div id="myCarousel2" class="carousel slide" data-ride="carousel">
			<div class="container">
				<div class="carousel-inner">
					<div class="item active">
						<div class="row">
							<img src="../images/two1.png" class="two">
							<img src="../images/two1.png" class="two">
							<img src="../images/two1.png" class="two">
							<img src="../images/two1.png" class="two">
							<img src="../images/two1.png" class="two">
							<img src="../images/two1.png" class="two">
							<img src="../images/two1.png" class="two">
							<img src="../images/two1.png" class="two">
							<img src="../images/two1.png" class="two">
							<img src="../images/two1.png" class="two">
						</div>
					</div>
					<div class="item">
						<div class="row">
							<img src="../images/two2.png" class="two">
							<img src="../images/two2.png" class="two">
							<img src="../images/two2.png" class="two">
							<img src="../images/two2.png" class="two">
							<img src="../images/two2.png" class="two">
							<img src="../images/two2.png" class="two">
							<img src="../images/two2.png" class="two">
							<img src="../images/two2.png" class="two">
							<img src="../images/two2.png" class="two">
							<img src="../images/two2.png" class="two">
						</div>
					</div>
					<div class="item">
						<div class="row">
							<img src="../images/two3.png" class="two">
							<img src="../images/two3.png" class="two">
							<img src="../images/two3.png" class="two">
							<img src="../images/two3.png" class="two">
							<img src="../images/two3.png" class="two">
							<img src="../images/two3.png" class="two">
							<img src="../images/two3.png" class="two">
							<img src="../images/two3.png" class="two">
							<img src="../images/two3.png" class="two">
							<img src="../images/two3.png" class="two">
						</div>
					</div>
				</div>
			</div>
			<br><br><br>
			<ol class="carousel-indicators">
				<li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel2" data-slide-to="1"></li>
				<li data-target="#myCarousel2" data-slide-to="2"></li>
			</ol>
			<a class="left carousel-control" href="#myCarousel2" data-slide="prev" style="background-image: linear-gradient(to right, rgba(0, 0, 0, .0001) 100%, rgba(0, 0, 0, .5) 100%)">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel2" data-slide="next" style="background-image: linear-gradient(to right, rgba(0, 0, 0, .0001) 100%, rgba(0, 0, 0, .5) 100%)">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
		<br>
	</div>
	<div class="container">
		<h2>이벤트</h2>
		<div class="row">
			<div class="col-sm-4">
				<img src="../images/event.png" class="three">
				<p style="font-size: 13px;">신규가입시 포인트 3000점 즉시 지급!</p>
				<p style="font-size: 13px;">2018.04.01 ~ 2018.04.30</p>
			</div>
			<div class="col-sm-4">
				<img src="../images/event.png" class="three">
				<p style="font-size: 13px;">신규가입시 포인트 3000점 즉시 지급!</p>
				<p style="font-size: 13px;">2018.04.01 ~ 2018.04.30</p>
			</div>
			<div class="col-sm-4">
				<img src="../images/event.png" class="three">
				<p style="font-size: 13px;">신규가입시 포인트 3000점 즉시 지급!</p>
				<p style="font-size: 13px;">2018.04.01 ~ 2018.04.30</p>
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
	<!-- 	모달창 -->
<!-- 	<div class="modal fade" id="Modal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true"> -->
<!-- 		<div class="modal-dialog"> -->
<!-- 			<div class="modal-content"> -->
<!-- 				<div class="modal-header"> -->
<!-- 					<button type="button" class="close" data-dismiss="modal" aria-label="Close"> -->
<!-- 						<span aria-hidden="ture">&times;</span> -->
<!-- 					</button> -->
<!-- 					<img src="../images/poster1.png" style="width: 100%"> -->
<!-- 				</div> -->
<!-- 				<div class="modal-body"> -->
					
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
</body>
</html>