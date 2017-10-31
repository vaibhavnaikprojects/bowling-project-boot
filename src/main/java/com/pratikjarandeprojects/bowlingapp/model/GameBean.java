package com.pratikjarandeprojects.bowlingapp.model;

import java.util.List;

public class GameBean {
	private int gameId;
	private List<PlayerBean> playerBeans;
	public GameBean(){
	}
	public GameBean(int gameId) {
		super();
		this.gameId = gameId;
	}
	public int getGameId() {
		return gameId;
	}
	public void setGameId(int gameId) {
		this.gameId = gameId;
	}
	public List<PlayerBean> getPlayerBeans() {
		return playerBeans;
	}
	public void setPlayerBeans(List<PlayerBean> playerBeans) {
		this.playerBeans = playerBeans;
	}
	@Override
	public String toString() {
		return "GameBean [gameId=" + gameId + ", playerBeans=" + playerBeans
				+ "]";
	}
}
