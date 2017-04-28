package com.soccerkick.dao;

import java.util.ArrayList;

import com.soccerkick.vo.NoteCheckVO;
import com.soccerkick.vo.NoteGroupVO;
import com.soccerkick.vo.NoteVO;

public interface NoteDAO {
	public ArrayList<NoteGroupVO> execSelectNoteGroup(String user_id);
	public ArrayList<NoteVO> execSelectNote(int group_id);
	public ArrayList<NoteGroupVO> execSelectUserByGroupId(int group_id);
	public NoteVO execSelectLastNoteVO();
	public void insertNote(NoteVO vo);
	public void insertNoteCheck(NoteCheckVO vo);
}
