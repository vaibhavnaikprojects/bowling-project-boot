package com.pratikjarandeprojects.bowlingapp.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pratikjarandeprojects.bowlingapp.model.GameBean;
import com.pratikjarandeprojects.bowlingapp.model.GameRequestBean;
import com.pratikjarandeprojects.bowlingapp.services.BowlingServiceImpl;

@Controller
public class BowlingController {
	@Autowired
	BowlingServiceImpl bowlingService;
	
	@RequestMapping("/")
	public ModelAndView home(){
		return new ModelAndView("home");
	}
	
	@RequestMapping(value="/game",method=RequestMethod.POST)
	public ModelAndView game(@ModelAttribute GameRequestBean gameRequestBean,HttpServletRequest request){
		GameBean gameBean=bowlingService.setPlayers(gameRequestBean);
		System.out.println(gameBean);
		ModelAndView view= new ModelAndView("game","game",gameBean);
		view.addObject("playerCount", gameBean.getPlayerBeans().size());
		return view;
	}
	@RequestMapping(value="/game",method=RequestMethod.GET)
	public ModelAndView gameGet( HttpServletRequest request){
		return new ModelAndView("home");
	}
}
