package page.config;

import javabean.UserInfo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Constant;
import page.inc.HtmlPage;
import util.InitServlet;
import util.PubFun;

public class EditWordsPage extends HtmlPage {

	@Override
	public String print(HttpServletRequest req, HttpServletResponse resp)
			throws Exception {
		UserInfo user = getSessionUser(req);
		if (user == null) {
			resp.sendRedirect(Constant.REDIRECT_LOGIN_PAGE);
			return null;
		}
		
		String content = getStringParameter("content", "", req);
		content = PubFun.getFilterValue(content);
		String type = getStringParameter("typekey","",req);
		if(type.equals("editwords")){
			PubFun.writeFile(InitServlet.CONTENT_REALPATH, "words.properties", content);
		    PubFun.ajaxPrintStr("敏感词编辑成功。", resp);
		}else if(type.equals("key4url")){
			PubFun.writeFile(InitServlet.CONTENT_REALPATH, "key4url.properties", content);
		    PubFun.ajaxPrintStr("关键字对应链接编辑成功。", resp);
		}
		
	    
		return null;
	}

}
