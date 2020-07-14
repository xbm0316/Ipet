package org.zmh.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.zmh.Emtity.Order;
import org.zmh.Emtity.Order_Info;
import org.zmh.Emtity.User;
import org.zmh.Service.UserServiceImpl;

@RequestMapping(value="orderController")
@Controller
public class OrderController {
	
	@Autowired
	@Qualifier("userService")
	private UserServiceImpl userService;

	public void setUserService(UserServiceImpl userService) {
		this.userService = userService;
	}
	
//	��Ӷ���
	
	/**
	 * @param name
	 * @param p_img
	 * @param p_price
	 * @param model
	 * @return
	 */
	@RequestMapping(value="addOrder")
	public String addOrder(@RequestParam(value="username") String name,@RequestParam(value="p_img") String p_img,@RequestParam(value="p_price") int p_price,Model model) {
		Integer id = userService.findUserId(name);
		User user = userService.findUser(id);
		int pid = userService.findProductId(p_img);
		Order order = new Order();
		order.setRe_name(user.getName());
		order.setRe_phone(user.getPhone());
		order.setO_money(p_price);
		order.setRe_address(user.getAddress());
		order.setUser_id(id);
//		System.out.println(user.getId());
		order.setO_pay(0);
		Order_Info orderinfo = new Order_Info();
		//��Ӷ�������
		orderinfo.setProduct_id(pid);
		orderinfo.setBuynum(1);
		userService.addOrder(order);
		userService.addOrderInfo(orderinfo);
//		System.out.println(order);
		model.addAttribute("img",p_img);
		model.addAttribute("cartsuccess", "����ɹ�");
		return "product_info";
	}
	
	@RequestMapping(value="showCart")
	public String showCart(@RequestParam(value="username") String name,@RequestParam(value="start") int currentPage,Model model) {
		int id = userService.findUserId(name);
		int start = (currentPage-1)*2;
		List<Order> orderlist = userService.findOrder(id,start);
		model.addAttribute("orderlist", orderlist);
		
		
		
//		model.addAttribute("payerror", "����ɹ�");s
		return "cart";
	}
	
	@RequestMapping(value="showPayOrder")
	public String showPayOrder(@RequestParam(value="username") String name,@RequestParam(value="start") int currentPage,Model model) {
		int id = userService.findUserId(name);
		int start = (currentPage-1)*2;
		List<Order> orderlist = userService.findPayOrder(id, start);
		model.addAttribute("orderlist", orderlist);
		
		return "pay";
	}

	
	@RequestMapping(value="showPayCart")
	public String showPayCart(@RequestParam(value="username") String name,@RequestParam(value="start") int currentPage,Model model) {
		int id = userService.findUserId(name);
		int start = (currentPage-1)*2;
		List<Order> orderlist = userService.findOrder(id,start);
		model.addAttribute("orderlist", orderlist);
		
		
		
		model.addAttribute("payerror", "����ɹ�");
		return "cart";
	}
	
	//����
	@RequestMapping(value="pay")
	public String pay(@RequestParam(value="username") String name,@RequestParam(value="start") int currentPage,Order order,Model model) {
		order.setO_pay(1);
		userService.pay(order);
		model.addAttribute("username", name);
		model.addAttribute("start", currentPage);
//		model.addAttribute("payerror", "����ɹ���");
		
		return "redirect:/orderController/showPayCart";
	} 
	
}
