<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));
       
     // 初始 option
       option = {
    	    title: {
    	        text: '异步数据加载示例'
    	    },
    	    tooltip: {},
    	    &nbsp;legend: {
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;data:["销售0","销售1","销售2"]
&nbsp; &nbsp; 	&nbsp;},
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
    	    xAxis: {
    	    	type : "category",
    	    	data :[]
    	    },
    	    yAxis: [{
				type : "value",
				
			}],
			
			
			
			
			

    	    series: [
    	               {
    	            	   name:"销售0",
    	            	   type:"bar",
    	            	   data:[]
    	               },
    	               {
    	            	   name:"销售1",
    	            	   type:"bar",
    	            	   data:[]
    	               },
    	               {
    	            	   name:"销售2",
    	            	   type:"bar",
    	            	   data:[]
    	               }
    ]
    	             
    	            	 
    	            
    	};
       myChart.showLoading();
    	//通过Ajax获取数据
    	$.ajax({
    		type : "post",
    		async : true, //异步执行
    		url : "AcceptData",
    		dataType : "json", //返回数据形式为json
    		success : function(json) {
    			 
    			if (json) {
    				 fetchData(function (data) {
    			            myChart.hideLoading();
    			            myChart.setOption({
    			    			
    		    				xAxis:{
    		    					data:json.xAxisData
    		    				},
    		    				
    		    				
    		    				series: json.seriesList
    		    				         
    		    				         
    		    				
    		    				
    		    			});
    		    					
    			});
    		}
    		},
    		error : function(errorMsg) {
    			alert("请求数据失败");
    		}
    	});
        myChart.setOption(option);
    </script>
</body>
</html>

</html>