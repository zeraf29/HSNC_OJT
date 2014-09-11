package com.spring.web.board;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.web.dao.SqlMapClient;
import com.spring.web.dao.UserBean;

@Controller
public class BoardClass {
	@RequestMapping(value = "/boardList", method = {RequestMethod.GET, RequestMethod.POST})
	public String boardList(Locale locale, Model model){
		
		ArrayList<String> boardTitleList =new ArrayList<String>();
		boardTitleList.add("No.");
		boardTitleList.add("title");
		boardTitleList.add("date");
		//String[] boardTitleList = {"No.","title","date"};
		model.addAttribute("boardTitleList", boardTitleList);
		
		

		/*
		
		SqlMapClient sqlMapClient = new SqlMapClient();
		SqlSession session = sqlMapClient.getSqlSession();
		
		List<UserBean> list = session.selectList("User.getUser");
		 System.out.println("여러개 뽑기 : ");
	        for(UserBean u : list)
	            System.out.println(u.getName());
		session.close();
		*/
		
		return "boardList";
	}
}
