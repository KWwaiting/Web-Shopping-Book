package com.itheima.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.itheima.dao.UserDao;
import com.itheima.po.User;
import com.itheima.service.UserService;

import java.util.List;

/**
 * 用户Service接口实现类
 */
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
	// 注入UserDao
	@Autowired
	private UserDao userDao;
	// 通过账号和密码查询用户
	@Override
	public User findUser(User user) {
		User u = this.userDao.findUser(user);
		return u;
	}
	@Override
	public  int doAdd(User user) {
		return userDao.doAdd(user);
	}

	@Override
	public List<User> selectUserAll(User user) {
		List<User> u = this.userDao.selectUserAll(user);
		return u;
	}

	@Override
	public List<User> selectUserList(User user) {
		List<User> u = this.userDao.selectUserList(user);
		return u;
	}

	@Override
	public  int doAddUser(User user) {
		return userDao.doAddUser(user);
	}

	@Override
	public User findUserById(Integer id) {
		User user = userDao.findUserById(id);
		return user;
	}

	@Override
	public int updateUser(User user) {
		return userDao.updateUser(user);
	}

	@Override
	public int deleteUser(Integer id) {
		return userDao.deleteUser(id);
	}

//	@Override
//	public int UserUpdate(User user) {
//		return userDao.UserUpdate(user);
//	}

	@Override
	public List<User> selectOne(User user) {
		List<User> u = this.userDao.selectOne(user);
		return u;
	}


}
