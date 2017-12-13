package com.struts.trio;

import database.*;

import java.sql.*;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpSession;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import org.apache.struts2.ServletActionContext;


import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloAction{
	
	//private ServletRequest request;
	private ArrayList<String> list = null;
	private String name , father , son;
    //password = request.getParameter("password");
	public ArrayList<String> getList() {
		return this.list;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getFather() {
		return this.father;
	}

	public void setFather(String father) {
		this.father = father;
	}
	
	public String getSon() {
		return this.son;
	}

	public void setSon(String son) {
		this.son = son;
	}
	public String towelcome(){
		return "SUCCESS";
	}
	 
	public String tosign() throws UnsupportedEncodingException{
		ServletRequest Srequest = ServletActionContext.getRequest();
		HttpServletRequest Sreq = (HttpServletRequest) Srequest;
		HttpSession session = Sreq.getSession();
		String ID = Srequest.getParameter("ID");
		String password = Srequest.getParameter("password");
		int i;
		//System.out.println(ID + " " + password);
		String sql1 = "select * from usersid";
		connect newc = new connect();
		ArrayList<Map<String, String>> result1 = newc.select(sql1, "usersid");
		if (result1.size() == 0) {
			return "FALSE";
		}
		System.out.println(result1.size());
		for (i = 0 ; i < result1.size(); i ++) {
			/*System.out.println(i);
			System.out.println(this.ID.equals(result1.get(i).get("ID")));
			System.out.println(password.equals(result1.get(i).get("password")));*/
			if (ID.equals(result1.get(i).get("ID")) && password.equals(result1.get(i).get("password"))) {
				//System.out.println("Success");
				return "SUCCESS";
			}
		}
		
		
		//session.setAttribute("result", result2);

		return "FALSE";
	}
	
	public String tomain() {
		return "SUCCESS";
	}
	
	public String tomoniter() throws UnsupportedEncodingException {
		ServletRequest Srequest = ServletActionContext.getRequest();
		HttpServletRequest Sreq = (HttpServletRequest) Srequest;
		
		HttpSession session = Sreq.getSession();
		String ID = Srequest.getParameter("ID");
		String password = Srequest.getParameter("password");
		int i;
		//System.out.println(ID + " " + password);
		String sql1 = "select * from moniter";
		connect newc = new connect();
		ArrayList<Map<String, String>> result1 = newc.select(sql1, "moniter");
		if (result1.size() == 0) {
			return "FALSE";
		}
		//System.out.println(result1.size());
		for (i = 0 ; i < result1.size(); i ++) {
			/*System.out.println(i);
			System.out.println(this.ID.equals(result1.get(i).get("ID")));
			System.out.println(password.equals(result1.get(i).get("password")));*/
			if (ID.equals(result1.get(i).get("ID")) && password.equals(result1.get(i).get("password"))) {
				System.out.println("Success");
				return "SUCCESS";
			}
		}
		
		
		//session.setAttribute("result", result2);

		return "FALSE";
	}
	
	public String tomonitermain() {
		return "SUCCESS";
	}
	
	public String tosearch() {
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session1 = req.getSession();
		String sql1 = "select * from users where name = \"" + name + "\"";
		connect newc = new connect();
		ArrayList<Map<String, String>> result1 = newc.select(sql1, "users");
		session1.setAttribute("list1", result1);
		String sql2 = "select * from users where father = \"" + name + "\"";
		ArrayList<Map<String, String>> result2 = newc.select(sql2, "users");
		session1.setAttribute("list2", result2);
		String sql3 = "select * from users where son = \"" + name + "\"";
        //System.out.println(sql1);
        ArrayList<Map<String, String>> result3 = newc.select(sql3, "users");
        session1.setAttribute("list3", result3);
		
		
	
		
		
		if (result1.size() == 0) {
			return "FALSE";
		}
		if (result2.size() == 0 && result3.size() == 0){
			return "FALSE3";
		}
		if (result2.size() == 0){
			return "FALSE1";
		}
		if (result3.size() == 0){
			return "FALSE2";
		}
		
		return "SUCCESS";
	}
	
	public String tocancel() throws UnsupportedEncodingException {
		//System.out.println(ID);
		ServletRequest Srequest = ServletActionContext.getRequest();
		HttpServletRequest Sreq = (HttpServletRequest) Srequest;
		HttpSession session = Sreq.getSession();
		String name = Srequest.getParameter("name");
		String sql1 = "delete from usersid where name=" + "\"" + name + "\"";
		//System.out.println(this.ID);
		connect newc = new connect();
		int result1 = newc.delete(sql1);
		//System.out.println(result);
		
        return "SUCCESS";
	}
	
	public String tonouseradd() throws UnsupportedEncodingException{
		ServletRequest Srequest = ServletActionContext.getRequest();
		HttpServletRequest Sreq = (HttpServletRequest) Srequest;
		HttpSession session = Sreq.getSession();
		String ID = Srequest.getParameter("ID");
		String name = Srequest.getParameter("name");
		String password = Srequest.getParameter("password");
		String sql = "insert into moniter values (\"" + ID + "\" ," + "\"" + name + "\" , " + "\"" + password + "\")";
		System.out.println(sql);
		connect newc = new connect();
		int result = newc.update(sql);
        if (result == 0) {
			return "FALSE";
		} 
        return "SUCCESS";
	}
	
	public String tousers() {
		String sql1 = "select * from usersid";
		
		connect mc = new connect();
		ArrayList<Map<String, String>> result1 = mc.select(sql1, "usersid");
		
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		session.setAttribute("list1", result1);
		
		
		if (result1.size() == 0 ) {
			return "FALSE";
		}
		
		

		return "SUCCESS";
		
	}
	
	public String towrite() throws UnsupportedEncodingException {
		ServletRequest Srequest = ServletActionContext.getRequest();
		HttpServletRequest Sreq = (HttpServletRequest) Srequest;
		HttpSession session = Sreq.getSession();
		String name = Srequest.getParameter("name");
		String ID = Srequest.getParameter("ID");
		String password = Srequest.getParameter("password");
		String net = Srequest.getParameter("net");
		connect newc = new connect();
		String sql = "insert into usersid values(" + "\"" + ID + "\"" + ", \"" + name + " \" , \"" + password + "\" , \"" + net + "\")";	
		System.out.println(sql);
		int status = newc.update(sql);
		if (status == 0)
			return "FALSE";
		//System.out.println("Success");
		String sql1 = "update users set netf = \"" + net + "\" where father=\"" + name +"\""; 
		String sql2 = "update users set nets = \"" + net + "\" where son=\"" + name +"\"";
		int status1 = newc.update(sql1);
		int status2 = newc.update(sql2);
		return "SUCCESS";
		

	}
	
	/*public String tocreate() {
		ServletRequest Srequest = ServletActionContext.getRequest();
		HttpServletRequest Sreq = (HttpServletRequest) Srequest;
		HttpSession session = Sreq.getSession();
		//String treename = Srequest.getParameter("treename");
		String father = Srequest.getParameter("father");
		String son = Srequest.getParameter("son");
		String time = Srequest.getParameter("time");
		String sqlf = "select * from usersid where name = \"" + father + "\""; 
		String sqls = "select * from usersid where name = \"" + son + "\""; 
		int year , month , day;
		year = Integer.parseInt(time.substring(0,4));
		month = Integer.parseInt(time.substring(5,7));
		day = Integer.parseInt(time.substring(8,10));
		
		//System.out.println(sql);
		connect mc = new connect();
		String netf = mc.find(sqlf, "usersid");
		String nets = mc.find(sqlf, "usersid");
		String sql = "insert into users values(" + "\"" + ID + "\"" + "," + "\"" + father + "\"" + "," + "\"" + son + "\"" + ","
				+year + "," + month + "," + day + "," + "\"" + netf + "\"" + "," + "\"" + nets + "\"" + ")";
		int status = mc.update(sql);
		if (status == 0)
			return "FALSE";

		return "SUCCESS";
	}*/
	
	public String tochange() {
		return "SUCCESS";
	}

	


 
	/*public String tosearch() throws UnsupportedEncodingException{
		ServletRequest Srequest = ServletActionContext.getRequest();
		HttpServletRequest Sreq = (HttpServletRequest) Srequest;
		HttpSession session = Sreq.getSession();
		String name = new String(Srequest.getParameter("name").getBytes("iso-8859-1"), "utf-8");
		String sql1 = "select * from users where name = \"" + name + "\"";
		String sql2 = "select * from users where father = \"" + name + "\"";
		String sql3 = "select * from users where son = \"" + name + "\"";
		
		connect newc = new connect();
		ArrayList<Map<String, String>> result1 = newc.select(sql1, "users");
		ArrayList<Map<String, String>> result2 = newc.select(sql2, "users");
		ArrayList<Map<String, String>> result3 = newc.select(sql3, "users");
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session1 = req.getSession();
		session1.setAttribute("list1", result1);
		session1.setAttribute("list2", result2);
		session1.setAttribute("list3", result3);
		int i;
		for (i = 0 ; i < result2.size() ; i ++){
			System.out.println("2" + result2.get(i));
		}
		
		for (i = 0 ; i < result3.size() ; i ++){
			System.out.println("3" + result3.get(i));
		}
		if (result1.size() == 0) {
			return "FALSE";
		}
		if (result2.size() == 0){
			return "FALSE1";
		}
		if (result3.size() == 0){
			return "FALSE2";
		}
		
		return "SUCCESS";
	}*/
	
	public String tobrother() throws UnsupportedEncodingException{
		ServletRequest Srequest = ServletActionContext.getRequest();
		HttpServletRequest Sreq = (HttpServletRequest) Srequest;
		HttpSession session = Sreq.getSession();
		String name = Srequest.getParameter("name");
		String fathername =Srequest.getParameter("fathername");
		String sql1 = "select * from users where father = \"" + fathername + "\" and son != \"" + name + "\"";
	    //System.out.println(sql1);
		connect newc = new connect();
		ArrayList<Map<String, String>> result1 = newc.select(sql1, "users");
		
		ServletRequest request = ServletActionContext.getRequest();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session1 = req.getSession();
		session1.setAttribute("list1", result1);
		
		if (result1.size() == 0){
			return "FALSE";
		}
		
		/*int i;
		for (i = 0 ; i < result2.size() ; i ++){
			System.out.println("2" + result2.get(i));
		}
		
		for (i = 0 ; i < result3.size() ; i ++){
			System.out.println("3" + result3.get(i));
		}
		if (result1.size() == 0) {
			return "FALSE";
		}
		if (result2.size() == 0){
			return "FALSE1";
		}
		if (result3.size() == 0){
			return "FALSE2";
		}
		*/
		return "SUCCESS";
	}
	public String toadd() throws UnsupportedEncodingException {
		ServletRequest Srequest = ServletActionContext.getRequest();
		HttpServletRequest Sreq = (HttpServletRequest) Srequest;
		HttpSession session = Sreq.getSession();
		
		String time = Srequest.getParameter("time");
		int year , month , day;
		year = Integer.parseInt(time.substring(0,4));
		month = Integer.parseInt(time.substring(5,7));
		day = Integer.parseInt(time.substring(8,10));
		String sqlf = "select * from usersid where name = \"" + father + "\""; 
		String sqls = "select * from usersid where name = \"" + son + "\""; 
		System.out.println(sqlf);
		connect mc = new connect();
		String netf = mc.find(sqlf, "usersid");
		String nets = mc.find(sqls, "usersid");
		String sql = "insert into users values(" + "\"" + name + "\"" + "," + "\"" + father + "\"" + "," + "\"" + son + "\"" + ","
				+year + "," + month + "," + day + "," + "\"" + netf + "\"" + "," + "\"" + nets + "\"" + ")";
	
		int status1 = mc.update(sql);
		
		if (status1 == 0)
			return "FALSE";

		return "SUCCESS";
	}
	
	public String todelete() throws UnsupportedEncodingException {
		ServletRequest Srequest = ServletActionContext.getRequest();
		HttpServletRequest Sreq = (HttpServletRequest) Srequest;
		HttpSession session = Sreq.getSession();
		//String treename = Srequest.getParameter("treename");
		String name =Srequest.getParameter("name");
		String father =Srequest.getParameter("father");
		String son = Srequest.getParameter("son");
		String time = Srequest.getParameter("time");
		connect mc = new connect();
		int status;
	    String sql = "delete from users where name=" + "\"" + name + "\"" + "and father=" + "\"" + father + "\"" + "and son=" + "\"" + son + "\"";
		status = mc.delete(sql);
		
		if (status == 0) {
			return "FALSE";
		} else {
			return "SUCCESS";
		}
	}
	
	public String toupdate() {
		return "SUCCESS";
	}
	
	public String tome() {
		return "SUCCESS";
	}
	
	public String toother() {
		return "SUCCESS";
	}
	
	public String toname() throws UnsupportedEncodingException {
		ServletRequest Srequest = ServletActionContext.getRequest();
		HttpServletRequest Sreq = (HttpServletRequest) Srequest;
		HttpSession session = Sreq.getSession();
		String name = Srequest.getParameter("name");
		String oldname =Srequest.getParameter("oldname");
		String newname =Srequest.getParameter("newname");
		//String treename = Srequest.getParameter("treename");
		connect mc = new connect();
		String sql = "select * from usersid where name = \"" + newname + "\""; 
		String netf = mc.find(sql, "usersid");
		String sql1 = "update users set father=\"" + newname + "\" , netf = \"" + netf + "\" where father=\"" + oldname +"\" and name = \"" +  name + "\""; 
		String sql2 = "update users set son=\"" + newname + "\" , nets = \"" + netf + "\" where son=\"" + oldname +"\" and name = \"" + name + "\"";
		
		//System.out.println(sqlf)
		
		
		
		int status1 = mc.update(sql1);
		int status2 = mc.update(sql2);
		
		
		if (status1 == 0 && status2 == 0) {
			System.out.println("1:" + status1 + "2:" + status2);
			return "FALSE";
		} else {
			return "SUCCESS";
		}
	}
	
	public String totime() throws UnsupportedEncodingException {
		//System.out.println(ID);
		ServletRequest Srequest = ServletActionContext.getRequest();
		HttpServletRequest Sreq = (HttpServletRequest) Srequest;
		HttpSession session = Sreq.getSession();
		//String treename = Srequest.getParameter("treename");
		String name = Srequest.getParameter("name");
		String father = Srequest.getParameter("father");
		String son = Srequest.getParameter("son");
		String time = Srequest.getParameter("time");
		int year , month , day;
		year = Integer.parseInt(time.substring(0,4));
		month = Integer.parseInt(time.substring(5,7));
		day = Integer.parseInt(time.substring(8,10));
		String sql = "update users set year=" + year + ", month=" + month + ",day=" + day + " where name=\"" + name + "\"and father=\"" + father
				+ "\" and son=\"" + son + "\"";
		System.out.println(sql);
		connect mc = new connect();
		int status = mc.update(sql);
			
		if (status == 0) {
			return "FALSE";
		} else {
			return "SUCCESS";
		}
	}
	
	public String torelation() throws UnsupportedEncodingException {
		ServletRequest Srequest = ServletActionContext.getRequest();
		HttpServletRequest Sreq = (HttpServletRequest) Srequest;
		HttpSession session = Sreq.getSession();
		String name = Srequest.getParameter("name");
		//String treename = Srequest.getParameter("treename");
		String father = Srequest.getParameter("father");
		String son = Srequest.getParameter("son");
		String newfather = Srequest.getParameter("newfather");
		String newson = Srequest.getParameter("newson");
		String sql = "update users set father=\"" + newfather + "\", son=\"" + newson + "\" where father=\"" + father +"\" and son =\"" + son + "\" and name =\"" + name + "\""; 
        //String sql2 = "update users set son=\"" + newname + "\" where son=\"" + oldname +"\"";
		
		//System.out.println(sql);
		connect mc = new connect();
		int status = mc.update(sql);
		
		if (status == 0) {
			return "FALSE";
		} else {
			return "SUCCESS";
		}
	}
	
	/*public int mergetemp(String name ,String ID , String father , connect newc){
		String sql1 = "select * from users where name = \"" + name + "\" and father = \"" + father + "\"";
		System.out.println("11" + sql1 + "\n");
		//connect newc = new connect();
		ArrayList<Map<String, String>> result = newc.select(sql1, "users");
		if (result.size() == 0) {
			return 0;
		}
		System.out.println(result.size());
		int i , status = 0;
		for (i = 0 ; i < result.size(); i ++) {
			/*System.out.println(i);
			System.out.println(this.ID.equals(result1.get(i).get("ID")));
			System.out.println(password.equals(result1.get(i).get("password")));
			if (this.ID.equals(result1.get(i).get("ID")) && password.equals(result1.get(i).get("password"))) {
				//System.out.println("Success");
				return "SUCCESS";
			}*/
			/*String sql2 = "insert into users values (\"" + ID + "\" , \"" + father + "\" , \"" + result.get(i).get("son") + "\" , " + result.get(i).get("year") + "," + result.get(i).get("month") + "," + result.get(i).get("day") +")";
			System.out.println("12" + sql2 + "\n");
			mergetemp(name,ID,result.get(i).get("son"),newc);
			status = newc.update(sql2);
		}
		return status;
	}
	
	public String tomerge() {
		ServletRequest Srequest = ServletActionContext.getRequest();
		HttpServletRequest Sreq = (HttpServletRequest) Srequest;
		HttpSession session = Sreq.getSession();
		//String treename = Srequest.getParameter("treename");
		String father = Srequest.getParameter("father");
		String name = Srequest.getParameter("name");
		String sql1 = "select * from users where name = \"" + name + "\" and father = \"" + father + "\"";
		System.out.println("00" + sql1 + "\n");
		connect newc = new connect();
		ArrayList<Map<String, String>> result = newc.select(sql1, "users");
		if (result.size() == 0) {
			return "FALSE";
		}
		System.out.println("01" + sql1 + "\n");
		int i , status;
		for (i = 0 ; i < result.size(); i ++) {
			status = mergetemp(name,ID,father,newc);
			if (status == 0){
				return "FALSE";
			}
	    }
		return "SUCCESS";
	}*/
	
	public String toresult() {
		return "SUCCESS";
	}
	
	public String tohome() {
		return "SUCCESS";
	}
}
