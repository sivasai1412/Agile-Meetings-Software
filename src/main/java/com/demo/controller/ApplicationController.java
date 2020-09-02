package com.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.demo.model.ChatMessage;
import com.demo.model.Host;
import com.demo.model.User;
import com.demo.services.HostService;
import com.demo.services.UserService;


@Controller
public class ApplicationController {


	@Autowired
	private UserService userService;
	
	@Autowired
	private HostService hostService;
	
	@Autowired
	public JavaMailSender javaMailSender;
	
	@RequestMapping(value="/sendemail")
	public String sendMail()
	{
		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo("rajababuramana@gmail.com");
		message.setTo("pavankumaranjuri5454@gmail.com");
		message.setSubject("Virtusa Teams");
		message.setText("Dear Students,\n" + "\n" + "This is a Remainder to online Meeting from Virtusa\n\n" + "You should attend the meeting without fail\n" + "Don't forget to log in ten minutes before the schedule timefor meeting\n\n" + "Join through Virtusa Teams App http://localhost:8080/join");
		javaMailSender.send(message);
		return "success";
	}
	
	@MessageMapping("/chat.register")
	@SendTo("/topic/public")
	public ChatMessage register(@Payload ChatMessage chatMessage, SimpMessageHeaderAccessor headerAccessor) {
		
		headerAccessor.getSessionAttributes().put("username", chatMessage.getSender());
		return chatMessage;
		
	}
	
	@MessageMapping("/chat.send")
	@SendTo("/topic/public")
	public ChatMessage sendMessage(@Payload ChatMessage chatMessage) {
		
		return chatMessage;
	}
	
	
	@RequestMapping("/welcome")
	public String Welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "home";
	}
	
	@RequestMapping("/register")
	public String registration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return "welcomepage";
	}

	
	@PostMapping("/save-user")
	public String registerUser(@ModelAttribute User user, BindingResult bindingResult, HttpServletRequest request) {
		userService.saveMyUser(user);
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}
	
	
	@GetMapping("/show-users")
	public String showAllUsers(HttpServletRequest request) {
		request.setAttribute("users",userService.showAllUsers());
		request.setAttribute("mode", "ALL_USERS");
		return "welcomepage";
	}
	
	
	@GetMapping("/show-meetings")
	public String showAllMeetings(HttpServletRequest request) {
		request.setAttribute("hosts", hostService.showAllMeetings());
		request.setAttribute("mode", "ALL_MEETINGS");
		return "welcomepage";
	}
	
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN");
		return "welcomepage";
	}
	
	@RequestMapping("/login-user")
	public String loginUser(@ModelAttribute User user, HttpServletRequest request) {
		if(userService.findByUsernameAndPassword(user.getUsername(), user.getPassword()) != null){
			request.setAttribute("mode", "MODE_UPCOMINGEVENTS");
			return "homepage";
		}
		else {
			request.setAttribute("error", "Invalid Username or Password");
			request.setAttribute("mode", "MODE_LOGIN");
			return "welcomepage";
		}

	}
	
	
	@RequestMapping("/event")
	public String event(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_EVENT");
		return "homepage";
	}
	
	@RequestMapping("/chat")
	public String dashboard(HttpServletRequest request) {
		
		return "chatpage";
	}
	
	@RequestMapping("/host")
	public String hostmeeting(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOST");
		return "homepage";
	}
	
	@PostMapping("/savemeetings")
	public String hostUser(@ModelAttribute Host host, BindingResult bindingResult, HttpServletRequest request) {
		hostService.saveMyHost(host);
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}
	
	
	@RequestMapping("/join")
	public String joinUser(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_JOIN");
		return "homepage";
	}
	
	@RequestMapping("/join-user")
	public String joinUser(@ModelAttribute Host host, HttpServletRequest request) {
		if(hostService.findByMeetingidAndPassword(host.getMeetingid(), host.getPassword()) != null) {
			return "chatpage";
		}
		else {
			request.setAttribute("error", "invalid Meetingid or Password");
			request.setAttribute("mode", "MODE_JOIN");
			return "homepage";
		}
	}
	
	@RequestMapping("/contact")
	public String contact(HttpServletRequest request) {
		return "contact";
	}
	
	@RequestMapping("/about")
	public String about(HttpServletRequest request) {
		return "about";
	}
}
