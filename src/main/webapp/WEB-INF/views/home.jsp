<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet"  media="all" type="text/css">
<link href="<c:url value="/css/main.css"/>" rel="stylesheet"  media="all" type="text/css">
<title>Bowling App</title>
</head>
<body>
</body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
	  	<div class="row">
	  		<div id="divnoOfPlayers" class="col-sm-12 col-md-4 col-lg-4 offset-md-4 offset-lg-4">
				<div class="card">
					<div class="card-block">
						<h5 class="card-title">Enter Number of Players</h5>
						<div class="card-text">
						    		<div id="textDivnoOfPlayers" class="form-group">
							    		<div class="input-group">
							    			<span class="input-group-addon icon-color"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></span>
								          	<input id="textnoOfPlayers" type="number" class="form-control" name="userId" placeholder="Enter player count (2-6)">
								    	</div>
								    	<div id="noOfPlayersFeedback" style="display: none" class="form-control-feedback">Only 2-6 players can play</div>
							    	</div>
									<div class="form-group">
										<div class="col-sm-12 col-md-4 col-lg-4 offset-md-8 offset-lg-8" style="padding: 0px">
											<button id="btnnoOfPlayers" class="btn btn-block btn-outline-primary" type="submit">Next</button>
										</div>
									</div>
						</div>
					</div>
				</div>
			</div>
			<div id="divplayerdetails" class="col-sm-12 col-md-6 col-lg-6 offset-md-3 offset-lg-3" style="display: none">
				<div class="card">
					<div class="card-block">
						<h5 class="card-title">Enter Player Details</h5>
						<div class="card-text">
							<form id="gameForm" class="form-horizontal" method="post" action="game">
							<div id="playerDetailsGrid">
							</div>
								<div class="row">
									<div class="col-sm-12 col-md-4 col-lg-4 offset-md-4 offset-lg-4">
										<button id="btnbackPlayerDetails" class="btn btn-block btn-outline-primary" type="button">Back</button>
									</div>
									<div class="col-sm-12 col-md-4 col-lg-4" style="padding-left: 0px;">
										<button id="btnsubmitPlayerDetails" class="btn btn-block btn-success" type="submit">Start Game</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
	  	</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript" src="<c:url value="/js/api/jquery-3.1.1.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/api/tether.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/api/bootstrap.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/validations/homeValidations.js"/>"></script>
</html>