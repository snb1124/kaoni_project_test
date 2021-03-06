package com.kaoni.common.chabun;

public class ChabunUtil {
	public static final String GUBUN_EM ="EM";
	public static final String GUBUN_M ="M";
	public static final String GUBUN_P ="P";
	
	
public static String numPad(String t, String c){
		
		for (int i=c.length(); i < 4; i++) {
			c = "0" + c;
		}				
		String ymd = DateFormatUtil.ymdFormats(t);
		
		return ymd.concat(c);
	}
		public static String getMemChabun(String type, String memNum) {
	
	return GUBUN_EM.concat(ChabunUtil.numPad(type, memNum));
}
		public static String getMainChabun(String type, String memNum) {
			
			return GUBUN_M.concat(ChabunUtil.numPad(type, memNum));
		}

public static String getPcrChabun(String type, String memNum) {
			
			return GUBUN_M.concat(ChabunUtil.numPad(type, memNum));
		}
}
