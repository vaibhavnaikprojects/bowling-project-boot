$(document).ready(function(){
	$frameCount=1; //total no of frames 10
	$playerCount=4; // total no of players 4
	$currentPlayer=1; 
	$currentFrame=1;
	$currenFrameSpin="firstSpin";
	$("#"+$currentPlayer+"frame"+$frameCount).addClass("frame-active");
});

$(".scoreBtn").on("click",function(){
	var value=$(this).attr("id");
	$("#"+$currentPlayer+"frame"+$currentFrame+$currenFrameSpin).html(value);
	if($currenFrameSpin=="secondSpin"){
		$currenFrameSpin="firstSpin";
		$("#"+$currentPlayer+"frame"+$currentFrame).removeClass("frame-active");
		var total=parseInt($("#"+$currentPlayer+"frame"+$currentFrame+"firstSpin").html())+parseInt($("#"+$currentPlayer+"frame"+$currentFrame+"secondSpin").html());
		$("#"+$currentPlayer+"frame"+$currentFrame+"totalSpin").html(total);
		$currentPlayer++;
		if($currentPlayer>$playerCount){
			$currentPlayer=1;
			$currentFrame++;
		}
		$("#"+$currentPlayer+"frame"+$currentFrame).addClass("frame-active");
		enableButton();
	}
	else{
		disableButton(value);
		$currenFrameSpin="secondSpin";
	}
});

function disableButton(value){
	var remainingValue=10-value;
	for(var i=remainingValue+1;i<=10;i++){
		$('#'+i).hide();
	}
}
function enableButton(){
	for(var i=0;i<=10;i++){
		$('#'+i).show();
	}
}