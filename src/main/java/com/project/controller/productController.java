package com.project.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.Respo.FeedbackRepo;
import com.project.Respo.InventRespo;
import com.project.Respo.contactRepo;
import com.project.Respo.messageRespo;
import com.project.Respo.orderRepo;
import com.project.Respo.productRespo;
import com.project.Respo.userproductrespo;
import com.project.model.InventModel;
import com.project.model.productModel;
import com.project.model.userproductdata;


@Controller
public class productController {
	
	@Autowired
	productRespo res;
	
	@Autowired
	messageRespo repo;
	
	@Autowired
	orderRepo repo1;
	
	@Autowired
	contactRepo repo2;
	
	@Autowired
	FeedbackRepo repo3;
	
	@Autowired
	private InventRespo objreg;
	
	    @Autowired
	private userproductrespo userproduct;
	
	@RequestMapping("/product")
	public String AddProduct(@ModelAttribute productModel ob)
	{
		res.save(ob);
		System.out.println("product added");
		return "product.jsp";
	}
	@RequestMapping("/home")
	public String ProFetched(Model m)
	{
		int count = repo.getmessagecont();
		int cnt=repo1.getnameCount();
		int pro=res.getproductCount();
		Double price=res.getbuyingprice();
		int name=repo2.cntByName();
		int feedback=repo3.cntbyName();
		Double sel=res.getSellingprice();
		
	
		List<productModel>al=res.findAll();
		m.addAttribute("data", al);
		m.addAttribute("mcount", count);
		m.addAttribute("iscountName", cnt);
		m.addAttribute("iscountpro", pro);
		m.addAttribute("isbuyprice", price);
		m.addAttribute("iscntName", name);
		m.addAttribute("cntName", feedback);
		m.addAttribute("isSel", sel);
		return "Dashboard.jsp";
	}
	@RequestMapping("/delete/{id}")
	public String isDelete(@PathVariable int id)
	{
		res.deleteById(id);
		return "redirect:/home";
	}
	@RequestMapping("/{id}")
	public String oldData(@PathVariable int id,Model m)
	{
		productModel ob=res.getById(id);
		m.addAttribute("isdata", ob);
		return "oldData.jsp";
	}
	@RequestMapping("/updateData")
	public String proUpdate(@ModelAttribute productModel o)
	{
	productModel ob=res.findById(o.getId()).orElse(null);
		System.out.println(ob);
		if(ob!=null)
		{
			ob.setId(o.getId());
			ob.setProduct_name(o.getProduct_name());
			ob.setCategory(o.getCategory());
			ob.setInstock(o.getInstock()); 
			ob.setSellingprice(ob.getSellingprice());
			ob.setBuyingprice(o.getBuyingprice());
			ob.setDate(o.getDate());
			ob.setImage(o.getImage());
			res.save(ob);
		}
		
		return "redirect:/home";
	}
	@RequestMapping("/userproduct")
	public String userproduct(Model m)
	{
		List<productModel>al=res.findAll();
		 System.out.println("Fetched products: " + al); 
		m.addAttribute("data", al);
		return "userproduct.jsp";
	}
	@RequestMapping("/pro")
	public ModelAndView isRegisterd(   
			@RequestParam("product_name") String productName,
	        @RequestParam("category") String category,
	        @RequestParam("instock") String instock,
	        @RequestParam("buyingprice") String buyingPrice,
	        @RequestParam("sellingprice") String sellingPrice,
	        @RequestParam("date") String date,
	        @RequestParam("image") MultipartFile file) {
		ModelAndView modelAndView = new ModelAndView();
		
		if (!file.isEmpty()) {
			try {
				String uploadDirectory = "D:/backup/springdata/Inventory_Management/src/main/webapp/images/";

				File directory = new File(uploadDirectory);
				if (!directory.exists()) {
					directory.mkdirs();
				}

				String filename = file.getOriginalFilename();
				String filePath = uploadDirectory + filename;
				file.transferTo(new File(filePath));
				productModel obdata=new productModel();
				obdata.setImage(filename);
				obdata.setBuyingprice(buyingPrice);
				obdata.setCategory(category);
				obdata.setDate(date);
				obdata.setImage(date);
				obdata.setInstock(instock);
				obdata.setProduct_name(productName);
				obdata.setSellingprice(sellingPrice);
				System.out.println("Serving image from path: /images/" + obdata.getImage());


				if (res != null) {
					
					res.save(obdata);
					modelAndView.setViewName("redirect:/home");
					modelAndView.addObject("message", "Registered successfully!");
				} else {
					modelAndView.setViewName("RegisterLogin/Registration.jsp");
					modelAndView.addObject("errorMessage", "Repository connection is not initialized.");
				}

			} catch (IOException e) {
				modelAndView.setViewName("RegisterLogin/Registration.jsp");
				modelAndView.addObject("errorMessage", "File upload failed: " + e.getMessage());
			}
		} else {
			modelAndView.setViewName("RegisterLogin/Registration.jsp");
			modelAndView.addObject("errorMessage", "Please upload a valid ID proof file.");
		}

		return modelAndView;
	}
	@RequestMapping("/favicon.ico")
	public void favicon() {
	}

	 @RequestMapping("/cardAdd")
	    public String datacard(Model model,
	                           @RequestParam String username,
	                           @RequestParam String product_name,
	                           @RequestParam String category,
	                           @RequestParam String sellingprice,
	                           @RequestParam String qnt) {
	        // Convert string values to appropriate types
	        int qntdata = Integer.parseInt(qnt);
	        int sell = Integer.parseInt(sellingprice);
	        Long total = (long) (qntdata * sell);

	        userproductdata obj = new userproductdata();
	        obj.setUsername(username);
	        obj.setQnt(qnt);
	        obj.setCategory(category);
	        obj.setProduct_name(product_name);
	        obj.setTotalamt(total);
	        obj.setSellingprice(sellingprice);

	        userproduct.save(obj);

	        List<userproductdata> objdata = userproduct.findByUsername(username);

	        model.addAttribute("card", objdata);

	        return "/carddata"; 
	    }

	 @RequestMapping("/carddata")
	  public String carddata(Model model,
              @RequestParam("username") String username) {
		
	        List<userproductdata> objdata = userproduct.findByUsername(username);

	        model.addAttribute("card", objdata);
	        long totalAmount = objdata.stream()
	                .mapToLong(item -> (long)(item.getTotalamt()))
	                .sum();
	                
	            model.addAttribute("cart", objdata);
	            model.addAttribute("totalAmount", totalAmount);
	        return "cart.jsp"; 
		
	
	  }
	 @RequestMapping("/userinvo")
	  public String userinvo(Model model,
             @RequestParam("username") String username) {
		
	        List<userproductdata> objdata = userproduct.findByUsername(username);
            InventModel objdatareg=objreg.findByUsername(username);
            model.addAttribute("user", objdatareg);
	        model.addAttribute("card", objdata);
	        long totalAmount = objdata.stream()
	                .mapToLong(item -> (long)(item.getTotalamt()))
	                .sum();
	                
	            model.addAttribute("cart", objdata);
	            model.addAttribute("totalAmount", totalAmount);
	        return "Invoices.jsp"; 
		
	
	  } 
	 @RequestMapping("/trackinco")
	  public String tracking(Model model,
            @RequestParam("username") String username) {
		
	        List<userproductdata> objdata = userproduct.findByUsername(username);
           InventModel obj=objreg.findByUsername(username);
           
           model.addAttribute("istrack", obj);
	        model.addAttribute("card", objdata);
	        long totalAmount = objdata.stream()
	                .mapToLong(item -> (long)(item.getTotalamt()))
	                .sum();
	                
	            model.addAttribute("cart", objdata);
	            model.addAttribute("totalAmount", totalAmount);
	        return "trackorder.jsp";
		
	
	  } 
	 
	 
	 
	 
	 
	 
	 @RequestMapping("/delete")
	 public String iscartDelete(@RequestParam int id,@RequestParam String username)
	 {
		 userproduct.deleteById(id);
		 return "redirect:/carddata?username="+username;
	 }
	
	 
	
    
	
	



}
