package org.zmh.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.zmh.Emtity.Pet;
import org.zmh.Emtity.Product;
import org.zmh.Service.UserServiceImpl;


@RequestMapping(value="search")
@Controller
public class SearchController {
	
	@Autowired
	@Qualifier("userService")
	private UserServiceImpl userService;
	
	
	public void setUserService(UserServiceImpl userService) {
		this.userService = userService;
	}


	@RequestMapping(value="searchController")
	public String searchController(@RequestParam(value="searchthing") String thing,@RequestParam(value="currentPage",required = false) Integer currentPage,Model model) {
		if(thing.equals("�·�")||thing.equals("è")||thing.equals("��")) {
			int start  = (currentPage-1)*8;
			List<Product> products = userService.findProduct(thing,start);
			model.addAttribute("productlist", products);
			
			model.addAttribute("category",thing);
			return "product";
		}else if(thing.equals("���")) {
			int start  = (currentPage-1)*8;
			List<Product> products = userService.findProduct(thing,start);
			model.addAttribute("productlist", products);
			
			model.addAttribute("category",thing);
			return "product";
			
		}else if(thing.equals("����")) {
			
			return "petspecies";
			
		}else {
			model.addAttribute("error","������������Ʒ����û��");
			return "search";
		}
		
		
	}
}
