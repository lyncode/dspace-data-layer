package org.dspace.orm.test;

import java.util.List;

import org.apache.log4j.BasicConfigurator;
import org.dspace.orm.ApplicationContextLoader;
import org.dspace.orm.entity.Community;

public class CommunitySampleApp {
	
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		BasicConfigurator.configure();
		
		CommunitySampleApp obj = new CommunitySampleApp();
		
        ApplicationContextLoader loader = new ApplicationContextLoader();
        loader.load(obj, "/META-INF/spring/applicationContext.xml");
        
		List<Community> comms = Community.findAllCommunitys();
		
		for (Community com : comms)
			System.out.println(com.getName());
	}
}
