package com.pratikjarandeprojects.bowlingapp.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.pratikjarandeprojects.bowlingapp.model.GameBean;
import com.pratikjarandeprojects.bowlingapp.model.GameRequestBean;
import com.pratikjarandeprojects.bowlingapp.model.PlayerBean;

@Service
public class BowlingServiceImpl {
	private static int GAME_COUNT=1;
	public GameBean setPlayers(GameRequestBean gameRequestBean) {
		GameBean gameBean=new GameBean(GAME_COUNT++);
		List<PlayerBean> playerBeans=new ArrayList<PlayerBean>();
		if(gameRequestBean.getPlayer1()!=null)
			playerBeans.add(createPlayer(gameRequestBean.getPlayer1(),1));
		if(gameRequestBean.getPlayer2()!=null)
			playerBeans.add(createPlayer(gameRequestBean.getPlayer2(),2));
		if(gameRequestBean.getPlayer3()!=null)
			playerBeans.add(createPlayer(gameRequestBean.getPlayer3(),3));
		if(gameRequestBean.getPlayer4()!=null)
			playerBeans.add(createPlayer(gameRequestBean.getPlayer4(),4));
		if(gameRequestBean.getPlayer5()!=null)
			playerBeans.add(createPlayer(gameRequestBean.getPlayer5(),5));
		if(gameRequestBean.getPlayer6()!=null)
			playerBeans.add(createPlayer(gameRequestBean.getPlayer6(),6));
		gameBean.setPlayerBeans(playerBeans);
		return gameBean;
	}

	private PlayerBean createPlayer(String playerName,int playerId) {
		return new PlayerBean(playerId,playerName);
	}
	
}
