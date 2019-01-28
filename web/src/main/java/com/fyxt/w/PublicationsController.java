package com.fyxt.w;

import com.fyxt.w.base.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * home页
 * @author ATH
 *
 */
@Controller
@RequestMapping("/web/publications")
public class PublicationsController extends BaseController{
	
	@RequestMapping
	public ModelAndView home(Model model){
        return new ModelAndView("publications.jsp");
	}
}
