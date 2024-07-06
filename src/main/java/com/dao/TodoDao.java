package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.entities.Todo;

@Component
public class TodoDao {
	@Autowired
	HibernateTemplate hibernateTemplate;
	
@Transactional
	public int saveTodo(Todo todo) {
		int i = (Integer)this.hibernateTemplate.save(todo);
		return i;
	}
	
	public List<Todo> getAll(){	
		List<Todo> list = this.hibernateTemplate.loadAll(Todo.class);		
		return list;
		
	}
	
}
