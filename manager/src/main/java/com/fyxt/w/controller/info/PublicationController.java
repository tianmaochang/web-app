package com.fyxt.w.controller.info;


import com.fyxt.w.controller.base.BaseController;
import com.fyxt.w.entity.info.Publication;
import com.fyxt.w.service.info.PublicationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * 出版物
 */
@Controller
@RequestMapping(value = "/sys/info/publication")
public class PublicationController extends BaseController {

	@Autowired
	private PublicationService publicationService;

	@RequestMapping
	public String list(Model model, Publication publication) {
		model.addAttribute("page", publicationService.findPage(publication));

		return "info/publication/list";
	}

	@GetMapping("/create")
	public String createForm(Model model) {

		return "info/publication/form";
	}

	@PostMapping("/create")
	public String create(Publication publication, BindingResult result,
						 Model model, RedirectAttributes attrs) {

		int r = publicationService.save(publication);
		if(r > 0){
			super.addMessage(attrs, "保存出版物成功");
		}else{
			super.addMessage(attrs, "保存出版物失败，请重试！");
		}

		return "redirect:/sys/info/publication";
	}

	@GetMapping("/update/{id}")
	public String updateForm(@PathVariable("id") Long id, Model model) {
		model.addAttribute("publication", publicationService.get(id));

		return "info/publication/form";
	}

	@PostMapping("/update/{id}")
	public String update(Publication publication, BindingResult result,
						 Model model, RedirectAttributes attrs) {
		int r = publicationService.update(publication);
		if(r > 0){
			super.addMessage(attrs, "修改出版物成功");
		}else{
			super.addMessage(attrs, "修改出版物失败，请重试！");
		}

		return "redirect:/sys/info/publication";
	}

	@GetMapping("/delete/{id}")
	public String delete(@PathVariable("id") Long id, RedirectAttributes attrs) {
		int r = publicationService.delete(id);
		if(r > 0){
			super.addMessage(attrs, "删除出版物成功");
		}else{
			super.addMessage(attrs, "删除出版物失败，请重试！");
		}

		return "redirect:/sys/info/publication";
	}
}
