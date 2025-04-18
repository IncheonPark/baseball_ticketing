package com.baseball.app;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.baseball.app.matches.MatchDTO;
import com.baseball.app.matches.MatchService;
import com.baseball.app.users.UserDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private MatchService matchService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) throws Exception {
		
		// 테스트용 자동 로그인
//		UserDTO user = new UserDTO();
//		//user.setUserId("admin");
//		session.setAttribute("user", user);
		
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		
		List<MatchDTO> list = matchService.getMatchListHome();
		
		if(list != null) {
			System.out.println("list size? " + list.size());
			System.out.println("date? " + list.get(0).getMatchDate());
			
		} else {
			System.out.println("list null? " + list);
		}
		
		
		model.addAttribute("list", list);
		model.addAttribute("serverTime", formattedDate );
		
		
		return "index";
	}
	
}
