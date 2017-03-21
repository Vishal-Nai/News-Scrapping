
<%@page import="modal.details"%>
<%@page import="com.jaunt.Elements"%>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Breaking News</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="templatemo_style.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" type="text/css" href="tabcontent.css" />
        <script type="text/javascript" src="tabcontent.js">
        </script>
    </head>
    <body>
        <div id="templatemo_container">

	<div id="templatemo_top_panel">
        <div id="templatemo_sitetitle">
            NEWS Bulletin
        </div>
        <div id="templatemo_searchbox">
            <form action="#" method="get">
                <input name="search" type="radio" value="thissite" checked="checked" />
              this site <input type="radio" name="search" value="theweb" />
            the web <br />
                <input type="text" name="q" size="10" id="searchfield" title="searchfield" />
                <input type="submit" name="Search" value="Search" id="searchbutton" title="Search" />
            </form>
        </div>
        
            
        <div id="templatemo_currentdate">
			<script type="text/javascript">
				<!--
				var m_names = new Array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December");
				var d_names = new Array("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday");
				
				var currentTime = new Date()
				var day = currentTime.getDay()
				var month = currentTime.getMonth() 
				var date = currentTime.getDate()
				var year = currentTime.getFullYear()
				document.write( d_names[day] + ", " + date + " " + m_names[month] + " " + year + ", ")
				var currentTime = new Date()
				var hours = currentTime.getHours()
				var minutes = currentTime.getMinutes()
				if (minutes < 10){
				minutes = "0" + minutes
				}
				document.write(hours + ":" + minutes + " ")
				if(hours > 11){
				document.write("PM")
				} else {
				document.write("AM")
				}
				//-->
			</script>
        </div>
    </div> <!-- end of top panel -->
    
    <div id="templatemo_menu">
        <ul>
            <li><a href="index_1.jsp">Home</a></li>
           <li><a href="india">India</a></li>
           <li><a href="world">World</a></li>
           <li><a href="Buisness">Business</a></li>
           <li><a href="Sports">Sports</a></li>  
           <li><a href="Politics">Politics</a></li> 
           <li><a href="Entertainment">Entertainment</a></li>                     
           <li><a href="BreakingNews">Breaking news</a></li>
        </ul> 
	</div>
    <div id="templatemo_content">

        <div id="templatemo_main_leftcol" style="width: 1000px;">
            <div class="templatemo_rcol_sectionwithborder" style="width: 1000px;">
                <%
                                    
                    if(request.getAttribute("el1")!=null){
                        Elements e1=(Elements)request.getAttribute("el1");
                %>
            	<div id="templatemo_blog_section" style="width: 1000px;">
                    <h2>Breaking News</h2>
                    <%for(int i=0;i<10;i++){%>
                    <div class="blog_box">
                        <h3><a href="SecondServlet?url=<%=e1.getAhmurl().get(i)%>"><%=e1.getAhmedabadmirror().getElement(i).innerHTML() %></a></h3>
                        <h3><a href="SecondServlet?url1=<%=e1.getIndurl.get(i)%>"><%=e1.getTheindianexpress().getElement(i).innerHTML() %></a></h3>
                     </div>
                    
                    <%}%>
                            
                  
                    <div class="more_button"><a href="#">View All</a></div>
                    
				</div>   
                    <%}}%>
            </div> 
    	</div> <!-- end of left column -->
        
       
    </div>
     </div>
    </body>
</html>
