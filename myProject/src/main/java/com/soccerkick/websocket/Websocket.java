package com.soccerkick.websocket;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpSession;
import javax.websocket.EndpointConfig;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import org.json.simple.JSONObject;
import org.json.simple.parser.ParseException;

import com.soccerkick.vo.userVO;

//@ServerEndpoint(value="/room/{cno}")
@ServerEndpoint(value = "/room/{cno}", configurator = GetHttpSessionConfigurator.class)
public class Websocket {
	private Session wsSession;
	private HttpSession httpSession;
	// private ArrayList<Session> list = new ArrayList<Session>();
	private static final HashMap<String, java.util.Set> map = new HashMap<String, java.util.Set>();
	// private static final java.util.Set<Session> list =
	// java.util.Collections.synchronizedSet(new java.util.HashSet<Session>());
	private volatile String cno;

	/***
	 * �� ������ ����Ǹ� ȣ��Ǵ� �̺�Ʈ
	 */
	@OnOpen
	public void handleOpen(Session session, EndpointConfig config,
			@PathParam("cno") String cno) {
		System.out.println("client is now connected...");
		this.wsSession = session;
		this.httpSession = (HttpSession) config.getUserProperties().get(
				HttpSession.class.getName());

		// java.util.Set<Session> list =
		// java.util.Collections.synchronizedSet(new
		// java.util.HashSet<Session>());
		this.cno = cno;
		System.out.println("cno: " + this.cno);
		SessionInfo.add(cno, session);
		SessionInfo.printUserSessionList();
	}

	/**
	 * �� �������κ��� �޽����� ���� ȣ��Ǵ� �̺�Ʈ
	 * 
	 * @param message
	 * @return
	 * @throws ParseException
	 */
	@OnMessage
	public void handleMessage(String message, Session session)
			throws ParseException {
		JSONObject jsonObj = new JSONObject();
		jsonObj.put("id", ((userVO) (this.httpSession.getAttribute("login")))
				.getClient_id());
		jsonObj.put("msg", message);
		String sendMsg = jsonObj.toJSONString();
		// String jsonString = "";
		// jsonString = "{id : " + jsonString +
		// ((userVO)(this.httpSession.getAttribute("login"))).getClient_id() +
		// ", msg : " + message + "}";
		System.out.println("cno: " + cno);
		for (WSUserSession wsSession : SessionInfo.sessionList) {
			if (wsSession.getGroupId().equals(cno)) {
				try {
					wsSession.getSession().getBasicRemote().sendText(sendMsg);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

	}

	/**
	 * �� ������ ������ ȣ��Ǵ� �̺�Ʈ
	 */
	@OnClose
	public void handleClose(Session session) {
		System.out.println("client is now disconnected...session id: "
				+ session.getId());
		SessionInfo.removeSession(session.getId());
		SessionInfo.printUserSessionList();
	}

	/**
	 * �� ������ ������ ���� ȣ��Ǵ� �̺�Ʈ
	 * 
	 * @param t
	 */
	@OnError
	public void handleError(Throwable t) {
		t.printStackTrace();
	}

}
