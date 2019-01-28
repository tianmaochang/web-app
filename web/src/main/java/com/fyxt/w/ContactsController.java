package com.fyxt.w;

import com.fyxt.w.base.BaseController;
import com.fyxt.w.entity.info.Contacts;
import com.fyxt.w.entity.info.Explain;
import com.fyxt.w.service.info.ContactsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * home页
 * @author ATH
 *
 */
@Controller
@RequestMapping("/web/user")
public class ContactsController extends BaseController{

	@Autowired
	ContactsService contactsService;

	@PostMapping("/create")
	public String create(Contacts contacts, BindingResult result,
						 Model model, RedirectAttributes attrs) {

		int r = contactsService.save(contacts);

		return "redirect:/web/index";
	}
}
