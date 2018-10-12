package com.itheima.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.itheima.po.User;
import com.itheima.service.UserService;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 用户控制器类
 */
@Controller
public class UserController {
	// 依赖注入
	@Autowired
	private UserService userService;
	/**
	 * 用户登录
	 */
	@RequestMapping(value = "/login")
	public String login(User user, Model model, HttpSession session,HttpServletRequest request) {
		// 通过账号和密码查询用户
		String name = request.getParameter("username");
		String psw = request.getParameter("psw");
		User u = userService.findUser(user);
		if(u!=null){

			session.setAttribute("user", user);
			session.setAttribute("msg", "当前用户"+u.getUsername());
			session.setAttribute("username",""+u.getUsername());
			session.setAttribute("psw",""+u.getPsw());
			session.setAttribute("phone",""+u.getPhone());
			session.setAttribute("email",""+u.getEmail());
			session.setAttribute("address",""+u.getAddress());
			session.setAttribute("id",""+u.getId());
			model.addAttribute("msg", ""+session.getAttribute("msg"));
			return "shopping homepage.jsp";
		}else if(name.equals("admin")&&psw.equals("admin")){
			return "menu.jsp";
		}
		model.addAttribute("msg", "用户名或密码错误，请重新登录！");
		return "userLogin.jsp";

	}

	@RequestMapping(value = "/loginOut")
	public String loginOut(User user, Model model, HttpSession session) {
		session.invalidate();
		return "shopping homepage.jsp";

	}


	@RequestMapping(value = "/bookList")
	public String bookList(User user, Model model, HttpSession session) {
		model.addAttribute("msga", "您还没有登录，请先登录");
		return "bookList.jsp";

	}

	@RequestMapping(value = "/doAdd")
	public String doAdd(User user) {
		int u = userService.doAdd(user);
		return "userLogin.jsp";
	}

	@RequestMapping(value = "/selectUserAll")
	public String selectUserAll(User user,Model model) {
		List<User> u = userService.selectUserAll(user);
		model.addAttribute("us",u);
		return "userList.jsp";
	}

	@RequestMapping(value = "/selectUserList")
	public String selectUserList(User user,Model model) {
		List<User> u = userService.selectUserList(user);
		model.addAttribute("us",u);
		return "userList.jsp";
	}

	@RequestMapping(value = "/doAddUser")
	public String doAddUser(User user) {
		int u = userService.doAddUser(user);
		return "userList.jsp";
	}
	@RequestMapping( "/findUserById")
	@ResponseBody
	public User findUserById(Integer id) {
		User user= userService.findUserById(id);
		return user;
	}

	@RequestMapping( "/updateUser")
	public String updateUser(User user) {
		int u = userService.updateUser(user);
		return "userList.jsp";
	}

	@RequestMapping( "/deleteUser")
	@ResponseBody
	public String deleteUser(Integer id) {
		int u = userService.deleteUser(id);
		return "userList.jsp";
	}


	@RequestMapping(value = "/selectOne")
	public String selectOne(User user,Model model) {
		List<User> u = userService.selectOne(user);
		model.addAttribute("us",u);
		return "myOrder.jsp";
	}
}
