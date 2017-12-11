<script>
        var links =<%=request.getAttribute("tree")%>;
<%--         var nodes =<%=request.getAttribute("nodes")%>; --%>
        var nodes = {}; 
        var mainname = '<%=request.getAttribute("name")%>';
        var mainID = <%=request.getAttribute("ID")%>;
        
        var img_w = 100;
        var img_h = 100;
        var rad = 60;

                
        links.forEach(function(link) { 
            console.log(nodes);
            if (link.source==mainname){
                link.source = nodes[link.source] || (nodes[link.source] = { name: mainname , ID : mainID}); 
            }
            else{
                link.source = nodes[link.source] || (nodes[link.source] = { name: link.source , tel : link.tel, ID : link.ID, type : link.type, period : link.period}); 
            }
            
            if (link.target==mainname){
                link.target = nodes[link.target] || (nodes[link.target] = { name: mainname , ID : mainID}); 
            }
            else{
            link.target = nodes[link.target] || (nodes[link.target] = { name: link.target , tel : link.tel, ID : link.ID, type : link.type, period : link.period});
            }
        });

        var width = 960,
            height = 500;

        var force = d3.layout.force()
            .nodes(d3.values(nodes))
            .links(links)
            .size([width, height])
            .linkDistance(300)
            .charge(-300)
            .on("tick", tick)
            .start();

        var svg = d3.select("body").append("svg")
            .attr("width", width)
            .attr("height", height);


        //(1)创建箭头  
        svg.append("svg:defs").selectAll("marker")
            .data(["teacher", "student"])
            .enter().append("svg:marker")
            .attr("id", String)
            .attr("viewBox", "0 -5 10 10")
            .attr("refX", 15)
            .attr("refY", -1.5)
            .attr("markerWidth", 6)
            .attr("markerHeight", 6)
            .attr("orient", "auto")
            .append("svg:path")
            .attr("d", "M0,-5L10,0L0,5");


        var path = svg.append("svg:g").selectAll("path")
            .data(force.links())
            .enter().append("svg:path")
            .attr("class", function(d) { return "link " + d.type; })
            .attr("marker-end", function(d) { return "url(#" + d.type + ")"; });

        var node = svg.selectAll(".node")
            .data(force.nodes())
            .enter().append("g")
            .attr("class", "node")
            .call(force.drag)
 
        var timer = null;


        //设置圆点的半径，圆点的度越大weight属性值越大，可以对其做一点数学变换                               
        function radius(d) {
            if (!d.weight) { //节点weight属性没有值初始化为1（一般就是叶子了）  
                d.weight = 1;
            }
            return Math.log(d.weight + 5) * 20;
        }

        node.append("circle")
            .attr("r", function(d) { //设置圆点半径    

                return radius(d);
            })
            .attr("id", function(d){
                return "node";
            })
            .attr("fill", function(d, i) {

                //创建圆形图片
                var defs = svg.append("defs");

                var imgPath = d.name.substring(0, 5) + '.jpg';

                var catpattern = defs.append("pattern")
                    .attr("id", "catpattern" + i)
                    .attr("height", 1)
                    .attr("width", 1);


                catpattern.append("image")
                    .attr("x", -(img_w / 2 - rad))
                    .attr("y", -(img_h / 2 - rad))
                    .attr("width", img_w)
                    .attr("height", img_h)
                    .attr("xlink:href", "userImage/default.jpg");
                
                    console.log("url(#catpattern" + i + ")");
                return "url(#catpattern" + i + ")";
            })
            .on("mouseover", function(d) { //设置圆点半径    

                return mouseover(d);
            })
            .on("mouseout", mouseout)
            .on("dblclick", function(d){
                clearTimeout(timer);
                if (d.ID!="-0001"){
                window.location.href="search?NameOrId="+d.ID;}
            }) 
            .on("click", function(d){
                clearTimeout(timer);
                timer = setTimeout(function() { 
                     for (var i = 0; i < links.length; i++) {
                            if ((links[i].target.name==mainname && links[i].source.name==d.name)||(links[i].target.name==d.name && links[i].source.name==mainname)){
                                window.location.href="modify.jsp?sourceID="+<%=request.getAttribute("ID")%>+"&ID="+d.ID+"&name="+d.name+"&tel="+d.tel+"&relation="+d.type+"&period="+d.period;
                                break;
                            }
                        };
                    
                }, 300);
                
            }) ;

        node.append("text")
            .attr("x", (function(d){return 10 - radius(d);}))
            .attr("y", (function(d){return radius(d)+20;}))
            .attr("dy", ".35em")
            .text(function(d) { return d.name });
        

        function tick() { //打点更新坐标  
            path.attr("d", function(d) {
                var dx = d.target.x - d.source.x, //增量  
                    dy = d.target.y - d.source.y,
                    dr = Math.sqrt(dx * dx + dy * dy);
                return "M" + d.source.x + "," +
                    d.source.y + "A" + dr + "," +
                    dr + " 0 0,0 " + d.target.x + "," +
                    d.target.y;
            });

            //更新结点图片和文字
            node.attr("transform", function(d) {
                    return "translate(" + d.x + "," + d.y + ")";
                });
          
        }

        var tooltip = d3.select("body").append("div")  
                            .attr("class","tooltip") //用于css设置类样式  
                            .attr("opacity",1.0); 
        
        
        function mouseover(d) {
            /* d3.select(this).select("circle").transition()
                .duration(750)
                .attr("r", function(d) { //设置圆点半径                        
                    return radius(d) + 10;
                })
                ; */
            console.log(d);
                tooltip.html(function(){
                    if (d.name == mainname){
                        return "<div class=\"title\">information:</div><div class=\"detail-info\">Name:"+d.name+"<br/>ID:"+d.ID+"</div>";
                    }
                    else{
                        return "<div class=\"title\">information:</div><div class=\"detail-info\">Name:"+d.name+"<br/>ID:"+d.ID+"<br/>Tel:"+d.tel+"<br/>relation:my"+d.type+"</div>";
                    }
                })
                    //设置tooltip的位置(left,top 相对于页面的距离)   
                            .style("left",(d3.event.pageX)+"px")  
                            .style("top",(d3.event.pageY+20)+"px")  
                            .style("opacity",1.0); 
        }

        function mouseout() {
            d3.select(this).select("circle").transition()
                .duration(750)
                .attr("r", function(d) { //恢复圆点半径                        
                    return radius(d);
                });
                tooltip.style("opacity",0.0);  
        }
        </script>