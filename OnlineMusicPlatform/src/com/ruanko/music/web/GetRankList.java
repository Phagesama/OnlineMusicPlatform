package com.ruanko.music.web;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.ruanko.music.model.MusicBusiModel;
import com.ruanko.music.service.MusicService;

public class GetRankList extends ActionSupport {
	
	private List<List<MusicBusiModel>> RankList;
	private String username;
	
	public String execute() throws Exception {
		
		RankList = new ArrayList();
		MusicService ms =  new MusicService();
		username = Signin.usersnickname;
		List<MusicBusiModel> HotestList = ms.getMostPopMusic();
		List<MusicBusiModel> NewestList = ms.getNewestMusic();
		List<MusicBusiModel> RecomList = ms.getRandomMusic();
		
		for (int i = 0; i < HotestList.size(); i++){
			List<MusicBusiModel> line = new ArrayList();
			line.add(HotestList.get(i));
			line.add(NewestList.get(i));
			line.add(RecomList.get(i));
			RankList.add(line);
		}

		return SUCCESS;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public List<List<MusicBusiModel>> getRankList() {
		return RankList;
	}

	public void setRankList(List<List<MusicBusiModel>> rankList) {
		RankList = rankList;
	}

}
