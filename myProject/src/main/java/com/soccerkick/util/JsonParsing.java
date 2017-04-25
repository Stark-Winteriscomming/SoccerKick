package com.soccerkick.util;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

// for parsing the json string 
public class JsonParsing {
	static public JSONObject getObj(String msg) throws ParseException {
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObj = (JSONObject) jsonParser.parse(msg);
		return jsonObj;
	}
}
