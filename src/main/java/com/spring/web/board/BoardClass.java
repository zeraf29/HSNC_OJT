package com.spring.web.board;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.web.dao.BoardBean;
import com.spring.web.dao.SqlMapClient;
import com.spring.web.dao.UserBean;

@Controller
public class BoardClass {
	@RequestMapping(value = "/boardList", method = {RequestMethod.GET, RequestMethod.POST})
	public String boardList(Locale locale, Model model){
		
		
		//String[] boardTitleList = {"No.","title","date"};
		
		
		
		SqlMapClient sqlMapClient = new SqlMapClient();
		SqlSession session = sqlMapClient.getSqlSession();

		
		List<BoardBean> boardList = session.selectList("User.getBoardList");
		
		model.addAttribute("boardList", boardList);
		
		session.close();
		
		return "boardList";
	}
	
	
	@RequestMapping(value = "/boardView", method = {RequestMethod.GET, RequestMethod.POST})
	public String boardView(Locale locale, Model model,@RequestParam("idx") int idx){
		
		
		//String[] boardTitleList = {"No.","title","date"};
		
		//System.out.println(idx);
		
		SqlMapClient sqlMapClient = new SqlMapClient();
		SqlSession session = sqlMapClient.getSqlSession();

		
		Object boardList = session.selectOne("User.getBoardContent", idx);
		
		model.addAttribute("boardList", boardList);
		
		session.close();
		
		return "boardView";
	}
}
