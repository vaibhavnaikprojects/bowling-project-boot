package com.pratikjarandeprojects.bowlingapp.model;

public class GameRequestBean {
	private String player1;
	private String player2;
	private String player3;
	private String player4;
	private String player5;
	private String player6;
	
	public String getPlayer1() {
		return player1;
	}
	public void setPlayer1(String player1) {
		this.player1 = player1;
	}
	public String getPlayer2() {
		return player2;
	}
	public void setPlayer2(String player2) {
		this.player2 = player2;
	}
	public String getPlayer3() {
		return player3;
	}
	public void setPlayer3(String player3) {
		this.player3 = player3;
	}
	public String getPlayer4() {
		return player4;
	}
	public void setPlayer4(String player4) {
		this.player4 = player4;
	}
	public String getPlayer5() {
		return player5;
	}
	public void setPlayer5(String player5) {
		this.player5 = player5;
	}
	public String getPlayer6() {
		return player6;
	}
	public void setPlayer6(String player6) {
		this.player6 = player6;
	}
	@Override
	public String toString() {
		return "GameRequestBean [player1=" + player1 + ", player2=" + player2
				+ ", player3=" + player3 + ", player4=" + player4
				+ ", player5=" + player5 + ", player6=" + player6 + "]";
	}
}
