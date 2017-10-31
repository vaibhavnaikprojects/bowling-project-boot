$(document).ready(function(){
	/*$.ajax({
		type : "GET",
		contentType : "application/json",
		url : encodeURI("api/users/"+mavId+"/todoItems"),
		dataType : 'json',
		success : function(todoItems) {
			console.log(todoItems);
			$todoItemsArr=todoItems;
		},
		error : function(e) {
			console.log(e);
		}
	});*/
});

$("#btnnoOfPlayers").on("click",function(){
	var playerCount=$("#textnoOfPlayers").val();
	if(playerCount>6 || playerCount<2){
		$("#noOfPlayersFeedback").show();
		$("#textnoOfPlayers").addClass("form-control-danger");
		$("#textDivnoOfPlayers").addClass("has-danger");
		return false;
	}
	else{
		$("#noOfPlayersFeedback").hide();
		$("#textnoOfPlayers").removeClass("form-control-danger");
		$("#textDivnoOfPlayers").removeClass("has-danger");
	}
	$("#divnoOfPlayers").hide();
	$("#divplayerdetails").show();
	for(var i=1;i<=playerCount;i++){
		$("#playerDetailsGrid").append(
			'<div id="textDivplayer'+i+'" class="form-group"><div class="input-group"><span class="input-group-addon icon-color">P'+i+'</span>'+
	       	'<input id="player'+i+'" type="text" class="form-control players" name="player'+i+'" placeholder="Enter Player Name at Position '+i+'">'+
	   		'</div></div>');
	}
});

$("#btnbackPlayerDetails").on("click",function(){
	$("#textnoOfPlayers").val('');
	$("#divnoOfPlayers").show();
	$("#divplayerdetails").hide();
	$("#playerDetailsGrid").html('');
});

$("#btnsubmitPlayerDetails").on("click",function(){
	var invalidPlayers=[];
	$(".players").each(function() {
	    if($(this).val()==""){
	    	invalidPlayers.push($(this).attr('id'));
	    	$("#textDiv"+$(this).attr('id')).addClass("has-danger");
	    	$("#"+$(this).attr('id')).addClass("form-control-danger");
	    }
	    else{
	    	$("#textDiv"+$(this).attr('id')).removeClass("has-danger");
	    	$("#"+$(this).attr('id')).removeClass("form-control-danger");
	    }
	});
	if(invalidPlayers.length>0){
		return false;
	}
	return true;
});
