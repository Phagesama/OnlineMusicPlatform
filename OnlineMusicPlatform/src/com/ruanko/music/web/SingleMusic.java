package com.ruanko.music.web;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.ruanko.music.model.MusicBusiModel;
import com.ruanko.music.service.MusicService;

public class SingleMusic extends ActionSupport {
	
	private MusicBusiModel music;
	private String username;

	public String execute() throws Exception {
		
		String str = ServletActionContext.getRequest().getParameter("musicname");
		
		MusicService ms = new MusicService();
		
		music = ms.getMusicByContent(str, 0).get(0);
		
		ms.addHits(Integer.toString(music.getId()));
		ms.addDown(Integer.toString(music.getId()));
		
		username = Signin.usersnickname;
		
		return SUCCESS;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public MusicBusiModel getMusic() {
		return music;
	}

	public void setMusic(MusicBusiModel music) {
		this.music = music;
	}
	
}
