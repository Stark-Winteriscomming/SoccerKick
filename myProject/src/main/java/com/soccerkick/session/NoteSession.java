package com.soccerkick.session;

import java.util.ArrayList;

// ajax polling�� ���� Ŭ���̾�Ʈ ���� ���� ���� 

public class NoteSession {
	private int group_id, last_nno;

	public int getGroup_id() {
		return group_id;
	}

	public void setGroup_id(int group_id) {
		this.group_id = group_id;
	}

	public int getLast_nno() {
		return last_nno;
	}

	public void setLast_nno(int last_nno) {
		this.last_nno = last_nno;
	}
}
