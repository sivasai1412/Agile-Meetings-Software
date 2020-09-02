package com.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.model.Host;
import com.demo.services.HostService;

@org.springframework.web.bind.annotation.RestController
public class HostController {
	
	@Autowired
	private HostService hostService;

	
	@GetMapping("/save-meetings")
	public String saveMeeting(@RequestParam int meetingid, @RequestParam String meetingname, @RequestParam String date, @RequestParam String time, @RequestParam String password) {
		Host host = new Host(meetingid, meetingname, date, time, password);
		hostService.saveMyHost(host);
		return "meetings saved";
	}
}
