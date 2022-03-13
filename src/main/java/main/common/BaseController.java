package main.common;

import main.entity.User;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;

import main.service.UserService;

@Controller
public abstract class BaseController {
	@Autowired
	UserService userService;

	private static final Logger logger = LogManager.getLogger(BaseController.class);

	protected User getUser(){
		try{
			 Authentication  authen = SecurityContextHolder.getContext().getAuthentication();
			 return  userService.getUserInfoByName(authen.getName());
		}catch (Exception ex){
			logger.error(ex.getMessage(),ex);
			throw new RuntimeException("ERROR_EXCEPTION");
		}
	}
}
