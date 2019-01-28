package com.fyxt.w.controller.info;


import com.fyxt.w.common.config.FileConfig;
import com.fyxt.w.controller.base.BaseController;
import com.fyxt.w.entity.common.ImageNewsType;
import com.fyxt.w.entity.info.Img;
import com.fyxt.w.service.info.ImgService;
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
 * 图库Controller
 */
@Controller
@RequestMapping(value = "/sys/info/img")
public class ImgController extends BaseController{

	@Autowired
	private ImgService imgService;
	
	@Autowired
	private FileConfig fileConfig;

	@RequestMapping
	public String list(Model model, Img img) {
		model.addAttribute("page", imgService.findPage(img));

		return "info/img/list";
	}
	
	@GetMapping("/create")
	public String createForm(Model model) {

		return "info/img/form";
	}

	@PostMapping("/create")
	public String create(Img img, BindingResult result,
						 Model model, RedirectAttributes attrs) {
		
		int r = imgService.save(img);
		if(r > 0){
			super.addMessage(attrs, "保存图片成功");
		}else{
			super.addMessage(attrs, "保存图片失败，请重试！");
		}
		
		return "redirect:/sys/info/img";
	}

	@GetMapping("/update/{id}")
	public String updateForm(@PathVariable("id") Long id, Model model) {
		model.addAttribute("img", imgService.get(id));
		
		return "info/img/form";
	}

	@PostMapping("/update/{id}")
	public String update(Img img, BindingResult result,
						 Model model, RedirectAttributes attrs) {
		int r = imgService.update(img);
		if(r > 0){
			super.addMessage(attrs, "修改图片成功");
		}else{
			super.addMessage(attrs, "修改图片失败，请重试！");
		}
		
		return "redirect:/sys/info/img";
	}

	@GetMapping("/delete/{id}")
	public String delete(@PathVariable("id") Long id, RedirectAttributes attrs) {
		int r = imgService.delete(id);
		if(r > 0){
			super.addMessage(attrs, "删除图片成功");
		}else{
			super.addMessage(attrs, "删除图片失败，请重试！");
		}
		
		return "redirect:/sys/info/img";
	}
}
