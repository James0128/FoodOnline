package com.foodonline.biz.impl;

import java.util.List;

import com.foodonline.biz.UserBiz;
import com.foodonline.dao.UserDAO;
import com.foodonline.entity.Admin;
import com.foodonline.entity.Users;

public class UserBizImpl implements UserBiz {

	UserDAO userDAO;
	
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	public List login(Users condition) {
		return userDAO.search(condition);
	}

	//添加用户
	public void addUsers(Users users) {
		userDAO.addUsers(users);		
	}

	//管理员登录验证
	public List login(Admin condition) {
		return userDAO.search(condition);
	}

	//修改个人信息
	@Override
	public void modifyUsers(Users users) {
		userDAO.modifyUsers(users);
	}
}
