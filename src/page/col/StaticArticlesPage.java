package page.col;

import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javabean.Article;
import javabean.Col;
import javabean.UserInfo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import page.col.inc.StaticBasePage;

import table.ArticleTable;
import table.ColumnTable;
import util.InitServlet;
import util.PubFun;

public class StaticArticlesPage extends StaticBasePage {
	@Override
	// 发布栏目下文章
	public String print(HttpServletRequest req, HttpServletResponse resp)
			throws Exception {
		UserInfo user = getSessionUser(req);
		if (user == null) {
			PubFun.ajaxPrintC("{\"total\":-1,\"info\":\"页面失效，请重新登录。\"}", resp);
			return null;
		}
		int colId = getIntParameter("col_id", 0, req);
		if (colId != 0 && ColumnTable.isExistsById(colId)) {
			Col col = ColumnTable.loadColForPreview(colId);
			ArrayList<Col> columns = new ArrayList<Col>();
			columns.add(col);
			columns = this.getChildren(colId, columns);
			String dateStr = getStringParameter("date_str", "", req);
			StringBuilder colsStr = new StringBuilder("");
			for(int i=0;i<columns.size();i++){
				colsStr.append(columns.get(i).getId());
				if(i != columns.size() - 1){
					colsStr.append(",");
				}
			}
			long cnt = ColumnTable.loadChildrenCntByCols(colsStr.toString());
			int pageBegin = getIntParameter("page_begin", 0, req);
			int pageSize = getIntParameter("page_size", 50, req);
			Article[] articles = ArticleTable.loadWholeArticlesByCols(colsStr.toString(),
					dateStr, pageBegin, pageSize);
			int lastColumnId = 0;
			Col parentCol = null;
			ArrayList<Col> cols = null;
			for(int i = 0; i < articles.length; i++){
				
				//增加功能：对指定文字增加连接
				if(articles[i].getContent()!=null){
					//得到文章内容
					String content = articles[i].getContent();
					//根据配置文件对需要增加指向的内容进行拼装
					Properties prop = new Properties(); 
	   				prop.load(new InputStreamReader(new FileInputStream(InitServlet.CONTENT_REALPATH +"key4url.properties"), "utf-8"));
	   				
	   				
	   				Iterator it = prop.entrySet().iterator();
	   				while (it.hasNext()) {
	   					Map.Entry pairs = (Map.Entry) it.next();
	   					String key = (String) pairs.getKey();	
	   					String url = "<a "+InitServlet.KEY4URLSTYLE+" href=\"http://"+prop.getProperty(key)+"\">"+key+"</a>";
	   					content = content.replace(key, url);
	   				}	   				
	   				articles[i].setContent(content);
				}
				
				if(lastColumnId != articles[i].getColumnid()){
					parentCol = ColumnTable.loadColByIdForStatic(articles[i].getColumnid());
					if(parentCol != null){
						cols = new ArrayList<Col>();
						cols.add(parentCol);
						getParents(parentCol, cols);
						Collections.reverse(cols);
						req.setAttribute("parentcols", cols);
					}
				}
				this.staticArticle(articles[i], req, resp);
				lastColumnId = articles[i].getColumnid();
			}
			PubFun.ajaxPrintC("{\"total\":" + cnt + ",\"info\":"+(pageBegin+pageSize)+"}", resp);
			this.indexF(articles);
		}else{
			PubFun.ajaxPrintC("{\"total\":-1,\"info\":\"栏目不存在\"}", resp);
		}
		return null;
	}
	
}
