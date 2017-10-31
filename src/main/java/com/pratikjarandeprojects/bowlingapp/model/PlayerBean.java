package com.pratikjarandeprojects.bowlingapp.model;

import java.util.List;

public class PlayerBean {
	private int playerId;
	private String playerName;
	private List<FrameBean> frameBeans;
	private int totalScore;
	public PlayerBean(){
	}
	public PlayerBean(int playerId, String playerName) {
		this.playerId=playerId;
		this.playerName=playerName;
	}
	public int getPlayerId() {
		return playerId;
	}
	public void setPlayerId(int playerId) {
		this.playerId = playerId;
	}
	public String getPlayerName() {
		return playerName;
	}
	public void setPlayerName(String playerName) {
		this.playerName = playerName;
	}
	public List<FrameBean> getFrameBeans() {
		return frameBeans;
	}
	public void setFrameBeans(List<FrameBean> frameBeans) {
		this.frameBeans = frameBeans;
	}
	public int getTotalScore() {
		return totalScore;
	}
	public void setTotalScore(int totalScore) {
		this.totalScore = totalScore;
	}
	@Override
	public String toString() {
		return "PlayerBean [playerId=" + playerId + ", playerName="
				+ playerName + ", frameBeans=" + frameBeans + ", totalScore="
				+ totalScore + "]";
	}
}
