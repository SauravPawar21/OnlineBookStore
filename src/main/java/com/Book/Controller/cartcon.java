package com.Book.Controller;

import java.util.List;
import java.util.Optional;

import javax.persistence.Id;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Book.Modal.book;
import com.Book.Modal.cart;
import com.Book.Modal.user;
import com.Book.Repo.bookinfo;
import com.Book.Repo.cartinfo;
import com.Book.Repo.userinfo;

@Controller
public class cartcon {
	@Autowired
    private cartinfo cartin;
	
	  @GetMapping("/viewCart")
	    public String viewcart(Model model) {
		  
		    System.out.println("This is cart");
	        List<cart> cartItem = cartin.findAll();

//	        System.out.println(cartItem.get(0));
	        model.addAttribute("cart", cartItem);
	        return "AddcartFetch.jsp";
	    }

	
	
	 @PostMapping("/addToCart")
	    public String addTocart(@ModelAttribute cart b) {
	        cartin.save(b);
	        return "redirect:/viewCart";
	    }
	 
	 @RequestMapping("del/{id}")
	    public String deleteuser(@PathVariable int id) {
	        cartin.deleteById(id);
	        return "redirect:/viewCart";
	    }
	    
	  }
