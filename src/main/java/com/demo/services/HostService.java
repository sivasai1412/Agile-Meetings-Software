package com.demo.services;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.demo.model.Host;
import com.demo.repository.HostRepository;

@Service
@Transactional
public class HostService {
	
	
	private final HostRepository hostRepository;
	
	public HostService(HostRepository hostRepository) {
		this.hostRepository = hostRepository;
	}
	
	public void saveMyHost(Host host) {
	
		hostRepository.save(host);
	}
	
	public List<Host> showAllMeetings(){
		List<Host> hosts = new ArrayList<Host>();
		for(Host host:hostRepository.findAll()) {
			hosts.add(host);
		}
		
		return hosts;
	}

	public Host findByMeetingidAndPassword(int meetingid, String password) {
		return hostRepository.findByMeetingidAndPassword(meetingid, password);
	}
}
