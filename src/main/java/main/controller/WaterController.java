package main.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import main.common.CommonConst;
import main.common.URLConst;
import main.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

@Controller
@Transactional
public class WaterController extends BaseController{
	private static final Logger logger = LogManager.getLogger(WaterController.class);

	@Autowired
	UserService userService;

	@RequestMapping(value = URLConst.Water.WATER_HOME , method = RequestMethod.GET)
	public ModelAndView view(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		session.setAttribute("pageActive", CommonConst.COMMON_PAGE.WATER);
		session.setAttribute("nameUser", getUser().getName());
		return new ModelAndView("water");
	}


	@RequestMapping(value = URLConst.Water.WATER_HOME_1 , method = RequestMethod.GET)
	public ModelAndView view2(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		session.setAttribute("pageActive", CommonConst.COMMON_PAGE.WATER1);
		session.setAttribute("nameUser", getUser().getName());
		return new ModelAndView("water1");
	}

}
