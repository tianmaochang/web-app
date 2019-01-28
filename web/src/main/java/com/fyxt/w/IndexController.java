package com.fyxt.w;

import com.fyxt.w.service.info.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fyxt.w.base.BaseController;

/**
 * 主页
 */
@Controller
@RequestMapping("/web")
public class IndexController extends BaseController{

	@Autowired
	ExplainService explainService;

	@Autowired
	ImgService imgService;

	@Autowired
	CustomerService customerService;

	@Autowired
	PublicationService publicationService;

	@Autowired
	StoreGuideService storeGuideService;

	@Autowired
	CompanyService companyService;

	@RequestMapping("/index")
	public ModelAndView home(Model model){
		model.addAttribute("explain", explainService.findAll());
		model.addAttribute("img", imgService.findAll());
		model.addAttribute("customer", customerService.findAll());
		model.addAttribute("publication", publicationService.findAll());
		model.addAttribute("guide", storeGuideService.findAll());
		model.addAttribute("company", companyService.findAll());
		return new ModelAndView("index.jsp");
	}
}
