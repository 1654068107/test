package com.struts.trio;

public class getData {
	public static String[][] data = new String[3][10];
	public static String[][] getdata(){
	    for(int i=0; i<10; i++)
	    {
		    data[0][i] = String.valueOf(i);
		    data[1][i] = String.valueOf(i + 1);
		    data[2][i] = String.valueOf(i + 2);
	    }
	    return data;
	}
}
