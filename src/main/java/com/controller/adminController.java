package com.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.daoimpl.CategoryDaoImpl;
import com.daoimpl.ProductDaoImpl;
import com.daoimpl.SupplierDaoImpl;
import com.model.Category;
import com.model.Product;
import com.model.Supplier;

@Controller
@Configuration

public class adminController {

	@Autowired
	CategoryDaoImpl categoryDaoImpl;

	@Autowired
	SupplierDaoImpl supplierDaoImpl;

	@Autowired
	ProductDaoImpl productDaoImpl;

	/* Admin Controller */
	@RequestMapping(value = { "/admin" })
	public String adminPage() {
		return "AdminAdd";
	}
	

	
	@RequestMapping(value = "/admin/saveCate", method = RequestMethod.POST)
	public ModelAndView saveCategotyData(@RequestParam("cid") String cid, @RequestParam("cname") String cname) {
		ModelAndView mv = new ModelAndView();
		Category category = new Category();
		category.setCid(cid);
		category.setCname(cname);
		mv.addObject("category", category);
		categoryDaoImpl.insertCategory(category);
		mv.addObject("msg", "Category \'" + cid + " - " + cname + "\' Added Successfully");
		System.out.println("Category " + cname + " Added Successfully");
		mv.setViewName("home");
		return mv;
	}

	@ModelAttribute("category")
	public Category getCategory() {
		return new Category();
	}

	@ModelAttribute("supplier")
	public Supplier getSupplier() {
		return new Supplier();
	}

	@ModelAttribute("products")
	public Product getProducts() {
		return new Product();
	}

	// save supplier
	@RequestMapping(value = "/admin/saveSupp", method = RequestMethod.POST)
	public ModelAndView saveSupplierData(@RequestParam("sid") String sid, @RequestParam("sname") String sname) {
		ModelAndView mv = new ModelAndView();
		Supplier supplier = new Supplier();
		supplier.setSid(sid);
		supplier.setSname(sname);
		supplierDaoImpl.insertSupp(supplier);
		mv.addObject("msg", "Suppliery \'" + sid + " - " + sname + "\' Added Successfully");
		System.out.println("Supplier " + sname + " Added Successfully");
		mv.setViewName("home");
		return mv;
	}


	// save Product
	@RequestMapping(value = "/admin/saveProduct", method = RequestMethod.POST)
	public String saveProduct(@RequestParam("pImage") MultipartFile file, HttpServletRequest req) {

		Product product = new Product();
		product.setPname(req.getParameter("pname"));
		product.setpDescription(req.getParameter("pDescription"));
		product.setpPrice(Float.parseFloat(req.getParameter("pPrice")));
		product.setpStock(Integer.parseInt(req.getParameter("pStock")));
		Category cat=new Category();
		cat.setCid(req.getParameter("pCategory"));
		product.setCategory(cat);
		Supplier supp=new Supplier();
		supp.setSid(req.getParameter("pSupplier"));
		product.setSupplier(supp);
		
		String filePath = req.getSession().getServletContext().getRealPath("/");
		String fileName = file.getOriginalFilename();
		product.setPimage(fileName);
		productDaoImpl.insertProduct(product); // create ProductDao
		
		try {
			byte[] imageByte = file.getBytes();
			BufferedOutputStream fos = new BufferedOutputStream(
					new FileOutputStream(filePath + "/resources/" + fileName));
			fos.write(imageByte);
			fos.close();
		} catch (Exception e) {
		}

		return "home";
	}
	

	// Getting all categories to Product form
	@ModelAttribute("categories")
	public List<Category> getCategories() {
		return categoryDaoImpl.getAllCategories();
	}

	// Getting all supplier to Product form
	@ModelAttribute("suppliers")
	public List<Supplier> getSuppliers() {
		return supplierDaoImpl.getAllSuppliers();
	}
}
