package org.zmh.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.zmh.Emtity.Pet;
import org.zmh.Service.UserServiceImpl;

@RequestMapping(value="petController")
@Controller
public class PetController {
	
	@Autowired
	@Qualifier("userService")
	private UserServiceImpl userService;

	public void setUserService(UserServiceImpl userService) {
		this.userService = userService;
	}
	
	//’“≥ËŒÔ1
	@RequestMapping(value="findPet")
	public String findPet(@RequestParam(value="pet") String pet,Model model) {
		List<Pet> petinfo = userService.findPet(pet);
		model.addAttribute("petInfo", petinfo);
		return "petspecies";
	}
	
	//’“≥ËŒÔ2
	@RequestMapping(value="findCate")
	public String findCate(@RequestParam(value="category") String category,Model model) {
		String url = userService.findPetByCate(category);
		model.addAttribute("img", url);
		return "petspecies";
	}
}
