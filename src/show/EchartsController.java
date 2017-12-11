package show;

import database.*;
import java.awt.*;
import java.awt.event.*;
import java.awt.geom.GeneralPath;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.io.*;
import java.util.*;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import org.apache.struts2.ServletActionContext;

class relate {
	String name,time;
}
public class EchartsController extends JFrame{
	public static String name;
	List<relate> stulist=new ArrayList<relate>();
	List<relate> tealist=new ArrayList<relate>();
	
	private JPanel contentPane;
	public EchartsController()
	{
		super("画圆");
		setBounds(0,0,1000,1000);
		setVisible(true);
	}
	public String tosearch(){
		ServletRequest Srequest = ServletActionContext.getRequest();
		HttpServletRequest Sreq = (HttpServletRequest) Srequest;
		HttpSession session = Sreq.getSession();
		name = Srequest.getParameter("name");
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
		String time;
		for (i = 0 ; i < result2.size() ; i ++){
			time = "";
		    relate a=new relate();
		    time = time + result2.get(i).get("year");
		    time = time + result2.get(i).get("month");
		    time = time + result2.get(i).get("day");
		    a.name=result2.get(i).get("father");
		    a.time=time;
		    tealist.add(a);
		}
		
		for (i = 0 ; i < result3.size() ; i ++){
			time = "";
		    relate a=new relate();
		    time = time + result3.get(i).get("year");
		    time = time + result3.get(i).get("month");
		    time = time + result3.get(i).get("day");
		    a.name=result3.get(i).get("son");
		    a.time=time;
		    stulist.add(a);
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
	}
	public void togetlist(String str)
	{
		connect newc = new connect();

		int i;
		String time = "";
		String sql = "select * from users where son = \"" + str + "\"";
		System.out.println(sql);
		ArrayList<Map<String, String>> res = newc.select(sql , "users");
		for (i = 0 ; i < res.size(); i ++) {
			time = "";
		    relate a=new relate();
		    time = time + res.get(i).get("year");
		    time = time + res.get(i).get("month");
		    time = time + res.get(i).get("day");
		    a.name=res.get(i).get("father");
		    a.time=time;
		    tealist.add(a);
		   
		}
	}
	public void stugetlist(String str)
	{
		connect newc = new connect();
        int i;
		String time = "";
		String sql = "select * from users where father = \"" + str + "\"";
		ArrayList<Map<String, String>> res = newc.select(sql , "users");
		for (i = 0 ; i < res.size(); i ++) {
			time = "";
		    relate a=new relate();
		    time = time + res.get(i).get("year");
		    time = time + res.get(i).get("month");
		    time = time + res.get(i).get("day");
		    a.name=res.get(i).get("son");
		    a.time=time;
		    tealist.add(a);
		   
		}
	}
	public void paint(Graphics g)
	{
		
		togetlist("user1");
		stugetlist("user1");
		int i,j;
		int tnum=tealist.size();
		for(i=0;i<tealist.size();i++)
		{
			System.out.print(i);
			relate b=tealist.get(i);
			System.out.println(b.name);
			g.setColor(Color.BLACK);
			g.drawOval(50,50 + 50*i,75,25); //左上角x坐标，y坐标，宽，高
			g.drawString(b.name, 65,70 + 50*i);
			drawAL(50+275,50+((tnum-1)/3+1)*50,120,60+i*50,g);
			g.drawString(b.time,(25+250*((tnum-1)%3)+10+25+50*((tnum-1)%3)+15+25+50*(i%3)+5)/3,(25+((tnum-1)/3+1)*250+10+25+((tnum-1)/3+1)*50+10+25+(i/3)*50+10)/3);
		}
		for(j=0;j<stulist.size();j++)
		{
			System.out.print(j);
			relate b=stulist.get(j);
			System.out.println(b.name);
			g.setColor(Color.BLACK);
			g.drawOval(60+150*((i/3*3+j)%3),60+((j+i/3*3)/3+2)*150,50,50);
			g.drawString(b.name, 60+150*((j+i/3*3)%3)+10,60+((j+i/3*3)/3+2)*150+25);
			drawAL(60+150*((j+i/3*3)%3)+10,60+((j+i/3*3)/3+2)*150+25,60+150*((tnum-1)%3)+20,60+((tnum-1)/3+1)*150+25,g);
			
			g.drawString(b.time,(60+150*((tnum-1)%3)+20+60+150*((j+i/3*3)%3)+10+60+150*((j+i/3*3)%3)+10)/3,(60+((tnum-1)/3+1)*150+25+60+((j+i/3*3)/3+2)*150+25+60+((j+i/3*3)/3+2)*150+25)/3);
		}
		g.drawOval(325,50+((tnum-1)/3+1)*25,50,50);
		
		
	}
	
	public static void drawAL(int sx, int sy, int ex, int ey, Graphics g)  
    {  
  
        double H = 10; // 箭头高度  
        double L = 4; // 底边的一半  
        int x3 = 0;  
        int y3 = 0;  
        int x4 = 0;  
        int y4 = 0;  
        double awrad = Math.atan(L / H); // 箭头角度  
        double arraow_len = Math.sqrt(L * L + H * H); // 箭头的长度  
        double[] arrXY_1 = rotateVec(ex - sx, ey - sy, awrad, true, arraow_len);  
        double[] arrXY_2 = rotateVec(ex - sx, ey - sy, -awrad, true, arraow_len);  
        double x_3 = ex - arrXY_1[0]; // (x3,y3)是第一端点  
        double y_3 = ey - arrXY_1[1];  
        double x_4 = ex - arrXY_2[0]; // (x4,y4)是第二端点  
        double y_4 = ey - arrXY_2[1];  
  
        Double X3 = new Double(x_3);  
        x3 = X3.intValue();  
        Double Y3 = new Double(y_3);  
        y3 = Y3.intValue();  
        Double X4 = new Double(x_4);  
        x4 = X4.intValue();  
        Double Y4 = new Double(y_4);  
        y4 = Y4.intValue();  
        // 画线  
        g.drawLine(sx, sy, ex, ey);  
        g.drawLine(ex, ey, x3, y3);  
        g.drawLine(ex, ey, x4, y4);
    }  
	 public  static double [] rotateVec( int  px,  int  py,  double  ang,  boolean  isChLen,
	            double  newLen)   {

	        double  mathstr[]  =   new   double [ 2 ];
	        // 矢量旋转函数，参数含义分别是x分量、y分量、旋转角、是否改变长度、新长度   
	         double  vx  =  px  *  Math.cos(ang)  -  py  *  Math.sin(ang);
	        double  vy  =  px  *  Math.sin(ang)  +  py  *  Math.cos(ang);
	        if  (isChLen)   {
	            double  d  =  Math.sqrt(vx  *  vx  +  vy  *  vy);
	           vx  =  vx  /  d  *  newLen;
	           vy  =  vy  /  d  *  newLen;
	           mathstr[ 0 ]  =  vx;
	           mathstr[ 1 ]  =  vy;
	       }
	        return  mathstr;
	   } 
} 