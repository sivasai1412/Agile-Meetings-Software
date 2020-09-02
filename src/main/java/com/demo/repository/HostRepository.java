package com.demo.repository;

import org.springframework.data.repository.CrudRepository;

import com.demo.model.Host;

public interface HostRepository extends CrudRepository<Host, Integer> {

	
	public Host findByMeetingidAndPassword(int meetingid, String password);
	
}
