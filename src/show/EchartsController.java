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

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
class relate {
	String name,time;
}
public class EchartsController extends JFrame{
	List<relate> stulist=new ArrayList<relate>();
	List<relate> tealist=new ArrayList<relate>();
	private JPanel contentPane;
	public EchartsController()
	{
		super("画圆");
		setBounds(50,50,1000,1000);
		setVisible(true);
	}
	public void togetlist(String str)
	{
		connect newc = new connect();

		int i;
		String time = "";
		String sql = "select * from "+str +  " where name = \"user4\"";
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
		String sql = "select * from "+str + " where name = \"user4\"";
		ArrayList<Map<String, String>> res = newc.select(sql , "users");
		for (i = 0 ; i < res.size(); i ++) {
			time = "";
		    relate a=new relate();
		    time = time + res.get(i).get("year");
		    time = time + res.get(i).get("month");
		    time = time + res.get(i).get("day");
		    a.name=res.get(i).get("son");
		    a.time=time;
		    stulist.add(a);
		   
		}
	}
	public void paint(Graphics g)
	{
		togetlist("users");
		stugetlist("users");
		int i,j;
		int tnum=tealist.size();
		for(i=0;i<tealist.size();i++)
		{
			System.out.print(i);
			relate b=tealist.get(i);
			System.out.println(b.name);
			g.setColor(Color.BLACK);
			g.drawOval(25+250*(i%3),25+(i/3)*50,50,25);
			g.drawString(b.name, 25+250*(i%3)+5,25+(i/3)*50+10);
			drawAL(25+250*((tnum-1)%3)+10,25+((tnum-1)/3+1)*50+15,25+250*(i%3)+5,25+(i/3)*50+10,g);
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
		g.drawOval(60+150*((i-1)%3)+10,60+((i-1)/3+1)*150,50,50);
		
		
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