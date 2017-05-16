package com.soccerkick.util;

import java.util.ArrayList;

import com.soccerkick.session.NoteSession;

public class ClientSession {
	public static NoteSession getNoteSession(ArrayList<NoteSession> list, int groupId){
		for(NoteSession session : list){
			if(session.getGroup_id() == groupId){
				return session;
			}
		}
		System.out.println("no such group_id.....");
		return null;
	}
}
