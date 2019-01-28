package com.fyxt.w.controller.info;


import com.fyxt.w.controller.base.BaseController;
import com.fyxt.w.entity.info.StoreGuide;
import com.fyxt.w.service.info.StoreGuideService;
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
 * 储藏指导
 */
@Controller
@RequestMapping(value = "/sys/info/storage")
public class StoreGuideController extends BaseController{
	@Autowired
	private StoreGuideService storeGuideService;

	@RequestMapping
	public String list(Model model, StoreGuide storeGuide) {
		model.addAttribute("page", storeGuideService.findPage(storeGuide));

		return "info/storage/list";
	}

	@GetMapping("/create")
	public String createForm(Model model) {

		return "info/storage/form";
	}

	@PostMapping("/create")
	public String create(StoreGuide storeGuide, BindingResult result,
						 Model model, RedirectAttributes attrs) {

		int r = storeGuideService.save(storeGuide);
		if(r > 0){
			super.addMessage(attrs, "保存储藏指导成功");
		}else{
			super.addMessage(attrs, "保存储藏指导失败，请重试！");
		}

		return "redirect:/sys/info/storage";
	}

	@GetMapping("/update/{id}")
	public String updateForm(@PathVariable("id") Long id, Model model) {
		model.addAttribute("storage", storeGuideService.get(id));

		return "info/storage/form";
	}

	@PostMapping("/update/{id}")
	public String update(StoreGuide storeGuide, BindingResult result,
						 Model model, RedirectAttributes attrs) {
		int r = storeGuideService.update(storeGuide);
		if(r > 0){
			super.addMessage(attrs, "修改储藏指导成功");
		}else{
			super.addMessage(attrs, "修改储藏指导失败，请重试！");
		}

		return "redirect:/sys/info/storage";
	}

	@GetMapping("/delete/{id}")
	public String delete(@PathVariable("id") Long id, RedirectAttributes attrs) {
		int r = storeGuideService.delete(id);
		if(r > 0){
			super.addMessage(attrs, "删除储藏指导成功");
		}else{
			super.addMessage(attrs, "删除储藏指导失败，请重试！");
		}

		return "redirect:/sys/info/storage";
	}
}
