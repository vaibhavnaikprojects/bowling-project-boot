<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet"  media="all" type="text/css">
<link href="<c:url value="/css/main.css"/>" rel="stylesheet"  media="all" type="text/css">
<title>Bowling App : GAME</title>
</head>
<body>
</body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container" style="margin-bottom: 50px;">
	  	<div class="row">
	  		<div class="buttons" style="position: fixed;">
	  			<button  id="0" type="button" class="btn btn-block btn-secondary scoreBtn">0</button>
	  			<button  id="1" type="button" class="btn btn-block btn-secondary scoreBtn">1</button>
	  			<button  id="2" type="button" class="btn btn-block btn-secondary scoreBtn">2</button>
	  			<button  id="3" type="button" class="btn btn-block btn-secondary scoreBtn">3</button>
	  			<button  id="4" type="button" class="btn btn-block btn-secondary scoreBtn">4</button>
	  			<button  id="5" type="button" class="btn btn-block btn-secondary scoreBtn">5</button>
	  			<button  id="6" type="button" class="btn btn-block btn-secondary scoreBtn">6</button>
	  			<button  id="7" type="button" class="btn btn-block btn-secondary scoreBtn">7</button>
	  			<button  id="8" type="button" class="btn btn-block btn-secondary scoreBtn">8</button>
	  			<button  id="9" type="button" class="btn btn-block btn-secondary scoreBtn">9</button>
	  			<button  id="10" type="button" class="btn btn-block btn-secondary scoreBtn">10</button>
	  		</div>
	  		<div id="divGame" class="col-sm-12 col-md-11 col-lg-11 offset-md-1 offset-lg-1">
				<c:forEach var="player" items="${game.playerBeans}">
				<div class="card active">
					<div class="card-block padding-10">
						<h6 class="card-title"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> ${player.playerName}</h6>
						<div id="player" class="card-text">
							<div class="row padding-left-right-15">
							<c:forEach begin="1" end="9" varStatus="count">
								<div id="${player.playerId}frame${count.index}" class="col-sm-1 col-md-1 col-lg-1 frame">
									<p class="text-center frame-header">${count.index}</p>
									<div class="row padding-left-right-15">
										<div class="col-sm-6 col-md-6 col-lg-6" id="${player.playerId}frame${count.index}firstSpin"></div>
										<div class="col-sm-6 col-md-6 col-lg-6 frame-right" id="${player.playerId}frame${count.index}secondSpin"></div>
									</div>
									<div class="row padding-left-right-15">
										<div class="col-sm-12 col-md-12 col-lg-12 frame-bottom" id="${player.playerId}frame${count.index}totalSpin"></div>
									</div>
								</div>
							</c:forEach>
							<div class="col-sm-2 col-md-2 col-lg-2 frame">
								<p class="text-center frame-header">10</p>
								<div class="row padding-left-right-15">
									<div class="col-sm-4 col-md-4 col-lg-4" id="${player.playerId}frame10firstSpin"></div>
									<div class="col-sm-4 col-md-4 col-lg-4 frame-right" id="${player.playerId}frame10secondSpin"></div>
									<div class="col-sm-4 col-md-4 col-lg-4 frame-right" id="${player.playerId}frame10thirdSpin"></div>
								</div>
								<div class="row padding-left-right-15">
									<div class="col-sm-12 col-md-12 col-lg-12 frame-bottom" id="${player.playerId}frame10totalSpin"></div>
								</div>
							</div>
							<div class="col-sm-1 col-md-1 col-lg-1 frame">
								<p class="text-center frame-header">Score</p>
								<div class="row padding-left-right-15">
									<div class="col-sm-12 col-md-12 col-lg-12" style="font-weight: bold;" id="${player.playerId}total"></div>
								</div>
							</div>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
	  	</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript" src="<c:url value="/js/api/jquery-3.1.1.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/api/tether.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/api/bootstrap.min.js"/>"></script>
	<script type="text/javascript">
		var playerCount='${game.playerBeans}';
		console.log("playerCount"+playerCount);
	</script>
	<script type="text/javascript" src="<c:url value="/js/validations/gameValidations.js"/>"></script>
</html>