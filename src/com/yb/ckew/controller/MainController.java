package com.yb.ckew.controller;

import java.io.IOException;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yb.ckew.biz.AnswerBiz;
import com.yb.ckew.biz.ExamBiz;
import com.yb.ckew.biz.TestBiz;
import com.yb.ckew.biz.UserBiz;
import com.yb.ckew.entity.Answer;
import com.yb.ckew.entity.Exam;
import com.yb.ckew.entity.Test;
import com.yb.ckew.entity.User;
import com.yb.ckew.util.DateUtil;
import com.yb.ckew.util.code;

@Controller
public class MainController {
	@Autowired
	AnswerBiz answerBiz;
	@Autowired
	ExamBiz examBiz;
	@Autowired
	TestBiz testBiz;
	@Autowired
	UserBiz userBiz;

	@RequestMapping(value = "index") // 主页导航
	public String index() {
		return "index";
	}

	@RequestMapping(value = "login") // 登录
	public String login(User user, HttpSession session) {
		User loginUser = userBiz.selectByUsername(user.getUsername());
		if (loginUser == null || !loginUser.getPassword().equals(user.getPassword())) {
			return "login";
		}
		if (loginUser.getType() != null && loginUser.getType().equals("admin")) {
			return "admin";
		}
		session.setAttribute("loginUser", loginUser);
		return "redirect:index.do";
	}

	@RequestMapping(value = "passwordcheck") // ajax登录验证密码
	public void passwordcheck(User user, HttpSession session, HttpServletResponse res) throws IOException {
		User loginUser = userBiz.selectByUsername(user.getUsername());
		res.setCharacterEncoding("utf-8");
		if (loginUser == null || !loginUser.getPassword().equals(user.getPassword())) {
			res.getWriter().write("0");
			return;
		} else {
			res.getWriter().write("验证通过");
		}
	}

	@RequestMapping(value = "varcodecheck") // ajax登录验证验证码
	public void varcodecheck(String varcode, HttpSession session, HttpServletResponse res) throws IOException {
		String varcode0 = (String) session.getAttribute("varcode");
		res.setCharacterEncoding("utf-8");
		if (!varcode0.equalsIgnoreCase(varcode)) {
			res.getWriter().write("0");
			return;
		} else {
			res.getWriter().write("验证通过");
		}
	}

	@RequestMapping(value = "changevarcode") // 生成验证码
	public void changevarcode(HttpSession session, HttpServletResponse res) throws IOException {
		code co = new code();
		co.drawImage(res.getOutputStream());
		session.setAttribute("varcode", co.getCode());
	}

	@RequestMapping(value = "usercheck") // ajax验证用户名是否使用
	public void usercheck(String username, HttpSession session, HttpServletResponse res) throws IOException {
		User loginUser = userBiz.selectByUsername(username);
		res.setCharacterEncoding("utf-8");
		if (loginUser != null) {
			res.getWriter().write("1");
			return;
		} else {
			res.getWriter().write("验证通过");
		}
	}

	@RequestMapping(value = "regist") // 注册
	public String regist(User user, HttpSession session) {
		user.setId(DateUtil.getId());
		userBiz.insertSelective(user);
		return "redirect:index.do";
	}

	@RequestMapping(value = "logout") // 退出登录
	public String logout(HttpSession session) {
		session.removeAttribute("loginUser");
		return "redirect:index.do";
	}

	@RequestMapping(value = "mytest") // 我的测评目录
	public String mytest(HttpSession session) {
		User loginUser = (User) session.getAttribute("loginUser");
		if (loginUser == null) {
			return "login";
		}
		List<Test> testList = testBiz.selectByUserid(loginUser.getId());
		session.setAttribute("testList", testList);
		return "mytest";
	}

	@RequestMapping(value = "info") // 个人中心
	public String info(HttpSession session) {
		User loginUser = (User) session.getAttribute("loginUser");
		if (loginUser == null) {
			return "login";
		}
		List<Answer> answerList = answerBiz.selectbyuserid(loginUser.getId());
		session.removeAttribute("msg");
		session.setAttribute("answerList", answerList);
		return "info";
	}

	@RequestMapping(value = "changepassword") // 修改密码
	public String changepassword(User user, HttpSession session) {
		userBiz.updateByPrimaryKeySelective(user);
		session.setAttribute("msg", "修改成功！");
		return "info";
	}

	@RequestMapping(value = "alltest") // 所有测试列表
	public String alltest(HttpSession session) {
		List<Test> testList = testBiz.selectall();
		session.setAttribute("testList", testList);
		return "alltest";
	}

	@RequestMapping(value = "allexam") // 所有试题
	public String allexam(HttpSession session) {
		List<Exam> examList = examBiz.selectall();
		session.setAttribute("examList", examList);
		return "allexam";
	}

	@RequestMapping(value = "ok") // 增加试题
	public String ok(HttpServletRequest req, HttpSession session) {
		String[] title = req.getParameterValues("title");
		String[] answer = req.getParameterValues("answer");
		String[] type = req.getParameterValues("type");
		for (int i = 0; i < title.length; i++) {
			Exam exam = new Exam();
			exam.setId(DateUtil.getId());
			exam.setAnswer(answer[i]);
			exam.setTitle(title[i]);
			exam.setType(type[i]);
			examBiz.insertSelective(exam);
		}
		session.setAttribute("emsg", "新增成功！");
		return "upexam";
	}

	@RequestMapping(value = "removeexam") // 删除试题
	public void removeexam(String examid, HttpServletResponse res) throws IOException {
		examBiz.deleteByPrimaryKey(examid);
		res.setCharacterEncoding("utf-8");
		res.getWriter().write("删除成功！");
	}

	@RequestMapping(value = "examshow") // 进行答题
	public String examshow(HttpSession session) {
		User loginUser = (User) session.getAttribute("loginUser");
		if (loginUser == null) {
			return "login";
		}
		List<Exam> examList = examBiz.showexam();
		session.setAttribute("examList", examList);
		return "examinfo";
	}

	@RequestMapping(value = "subanswer") // 提交测试
	public String subanswer(HttpSession session, HttpServletRequest req) {
		User loginUser = (User) session.getAttribute("loginUser");
		if (loginUser == null) {
			return "login";
		}
		int scope = 0;
		Exam exam = new Exam();
		Test test = new Test();
		String examids[] = req.getParameterValues("examid");
		for (int i = 0; i < examids.length; i++) {
			exam = examBiz.selectByPrimaryKey(examids[i]);
			if (exam.getType().equals("选择题")) {
				if (req.getParameterValues(examids[i])[0].equals(exam.getAnswer())) {
					scope++;
				} else {// 添加错题
					Answer answer = new Answer();
					answer.setId(DateUtil.getId());
					answer.setUserid(loginUser.getId());
					answer.setExamid(exam.getTitle());
					answer.setContext(req.getParameterValues(examids[i])[0]);
					answer.setScore(exam.getAnswer());
					answerBiz.insertSelective(answer);
				}
			}else {//多选题判断
				String answer[] = req.getParameterValues(examids[i]);
				String myanswer = "";
				for(int b=0;b<answer.length;b++) {
					myanswer+=answer[b];
				}
				Set<String> anset = new HashSet<>();
				String an[] =exam.getAnswer().split("\\*\\*");
				for(int b=0;b<answer.length;b++) {
					anset.add(answer[b]);
				}
				boolean nki = true;
				for(int b=0;b<an.length;b++) {
					if(!anset.contains(an[b])) {
						Answer answer1 = new Answer();
						answer1.setId(DateUtil.getId());
						answer1.setUserid(loginUser.getId());
						answer1.setExamid(exam.getTitle());
						answer1.setContext(myanswer);
						answer1.setScore(exam.getAnswer());
						answerBiz.insertSelective(answer1);
						nki =false;
						break;
					}
					if(nki) {
						if(anset.size()==an.length) {
							scope++;
						}
					}
				}
			}
		}
		test.setId(DateUtil.getId());
		test.setTime(new Date());
		test.setUserid(loginUser.getId());
		if (scope <= 5) {
			test.setScore("D");
		} else if (scope == 6) {
			test.setScore("C");
		} else if (scope <= 8) {
			test.setScore("B");
		} else {
			test.setScore("A");
		}
		testBiz.insertSelective(test);
		return "redirect:mytest.do";
	}

	@RequestMapping(value = "removeanswer") // 删除错题
	public void removeanswer(HttpServletResponse res, String answerid) throws IOException {
		answerBiz.deleteByPrimaryKey(answerid);
		res.setCharacterEncoding("utf-8");
		res.getWriter().write("删除成功!");
	}
	
	@RequestMapping(value="message")//发布留言
	public String message(String text,HttpSession session) {
		User loginUser = (User) session.getAttribute("loginUser");
		if (loginUser == null) {
			return "login";
		}
		Answer answer = new Answer();
		answer.setId(DateUtil.getId());
		answer.setContext(text);
		answer.setUserid(loginUser.getId());
		answer.setScore("留言");
		answerBiz.insert(answer);
		session.setAttribute("mmsg", "留言成功！");
		return "message";
	}
	
	@RequestMapping(value="showmessage")//查看留言
	public String showmessage(HttpSession session) {
		List<Answer> answerList = answerBiz.showanswer();
		session.setAttribute("messageList", answerList);
		return "showanswer";
	}

}
