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
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

//@ServerEndpoint(value="/room/{cno}", configurator = GetHttpSessionConfigurator.class)
@ServerEndpoint(value="/room/{cno}")
public class Websocket {
	private Session wsSession;
    private HttpSession httpSession;
//    private ArrayList<Session> list = new ArrayList<Session>();
    private static final HashMap<String, java.util.Set> map = new HashMap<String, java.util.Set>();
//    private static final java.util.Set<Session> list = java.util.Collections.synchronizedSet(new java.util.HashSet<Session>());
    private volatile String cno; 

	/***
     * 웹 소켓이 연결되면 호출되는 이벤트
     */
    @OnOpen
    public void handleOpen(Session session, EndpointConfig config, @PathParam("cno") String cno){
        System.out.println("client is now connected...");
//        System.out.println("get session: "+session.getQueryString());
//        this.wsSession = session;
//        this.httpSession = (HttpSession) config.getUserProperties()
//                                           .get(HttpSession.class.getName());
//        System.out.println("http session id: "+this.httpSession.getId());
//        java.util.Set<Session> list = java.util.Collections.synchronizedSet(new java.util.HashSet<Session>());
        this.cno = cno;
        System.out.println("cno: "+this.cno);
        SessionInfo.add(cno, session);
        SessionInfo.printUserSessionList();
    }
    /**
     * 웹 소켓으로부터 메시지가 오면 호출되는 이벤트
     * @param message
     * @return
     * @throws ParseException 
     */
    @OnMessage
    public void handleMessage(String message, Session session) throws ParseException{
//    	public void handleMessage(String message, Session session, @PathParam("cno") String cno) throws ParseException{
//    	JSONParser jsonParser = new JSONParser();
//    	JSONObject jsonObj = (JSONObject) jsonParser.parse(message);
//    	String recvId = (String)jsonObj.get("id");
    	System.out.println("cno: "+cno);
    	
    	for(WSUserSession wsSession:SessionInfo.sessionList){
    		if(wsSession.getGroupId().equals(cno)){
	    		try {
					wsSession.getSession().getBasicRemote().sendText(message);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
    		}
    	}
    	
    }
    /**
     * 웹 소켓이 닫히면 호출되는 이벤트
     */
    @OnClose
    public void handleClose(){
        System.out.println("client is now disconnected...");
    }
    /**
     * 웹 소켓이 에러가 나면 호출되는 이벤트
     * @param t
     */
    @OnError
    public void handleError(Throwable t){
        t.printStackTrace();
    }

}
