package com.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dao.TodoDao;
import com.entities.Todo;

@Controller
public class HomeController {

	@Autowired
	ServletContext context;
	@Autowired
	TodoDao todoDao;
	
	@RequestMapping("/home")
	public String home(Model m) {
		String str = "home";
		m.addAttribute("page", str);
//		List<Todo> list = (List<Todo>)context.getAttribute("list");
		List<Todo> list = this.todoDao.getAll();
		m.addAttribute("todos",list);
		return "home";
	}

	@RequestMapping("/add")
	public String add(Model m) {

		Todo t = new Todo();
		m.addAttribute("page", "add");
		m.addAttribute("todo", t);
		return "home";
	}

	@RequestMapping(value = "/saveTodo", method = RequestMethod.POST)
	public String saveTodo(@ModelAttribute("todo") Todo t, Model m) {

		
		System.out.println(t);
		//t.setTodoTitle();
		t.setAddedDate(new Date());
		//geting the list
//		List<Todo> list = (List<Todo>) context.getAttribute("list");
//		list.add(t);
		
		this.todoDao.saveTodo(t);
		
		m.addAttribute("msg","successfully added...");
		return "home";

	}

}
