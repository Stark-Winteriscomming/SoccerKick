package com.soccerkick.websocket;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

public class SessionInfo {
	// public static ArrayList<UserSession> userSessionList = null;
	public static ArrayList<WSUserSession> sessionList = null;

	// static public void add(String id, HttpSession objSession){
	// if(userSessionList == null){
	// System.out.println("construct the userSessionList");
	// userSessionList = new ArrayList<UserSession>();
	// }
	// //userSessionList object id check
	// System.out.println("userSesionList obj name: " +
	// userSessionList.hashCode());
	// //
	// UserSession userSession = new UserSession();
	// userSession.setUserId(id);
	// userSession.setUserSession(objSession);
	//
	// userSessionList.add(userSession);
	// }
	//
	// public static void printUserSessionList(){
	// if(userSessionList == null){
	// System.out.println("userSessionList is null");
	// }
	// else{
	// System.out.println("print items");
	// for(UserSession userSession : userSessionList){
	// System.out.println("user id: " + userSession.getUserId());
	// System.out.println("user session_id: " +
	// userSession.getUserSession().getId());
	// }
	// }
	// }
	//
	static public void add(String groupId, Session objSession) {

		if (sessionList == null) {
			System.out.println("construct the userSessionList");
			sessionList = new ArrayList<WSUserSession>();
		}
		// userSessionList object id check

		WSUserSession userSession = new WSUserSession();
		userSession.setGroupId(groupId);
		userSession.setSession(objSession);

		sessionList.add(userSession);
	}

	public static void printUserSessionList() {
		if (sessionList == null) {
			System.out.println("userSessionList is null");
		} else {
			System.out.println("print session elements");
			System.out.println("--------------------------");
			for (WSUserSession userSession : sessionList) {
				System.out.println("user group id: " + userSession.getGroupId());
				System.out.println("user session_id: " + userSession.getSession().getId());
			}
			System.out.println("--------------------------");
			System.out.println("size: " + sessionList.size());
		}
	}

	public static void removeSession (String sessionId) {
		System.out.println("remove session");
		for (WSUserSession userSession : sessionList) {
			if (userSession.getSession().getId().equals(sessionId))
				sessionList.remove(userSession);
				break;
		}
	}

}
