<%-- 
    Document   : Login_user
    Created on : 10 Feb, 2017, 2:49:47 PM
    Author     : Lenovo1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login_User</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="tabcontent.css" />
<script type="text/javascript" src="tabcontent.js">
/***********************************************
* Tab Content script v2.2- Â© Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/
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
                <input type="submit" name="Search" value="Search" alt="Search" id="searchbutton" title="Search" />
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
            <li><a href="India.jsp">India</a></li>
            <li><a href="World.jsp">World</a></li>
            <li><a href="Business.jsp">Business</a></li>
            <li><a href="Sports.jsp">Sports</a></li>  
            <li><a href="Politics.jsp">Politics</a></li> 
            <li><a href="Entertainment.jsp">Entertainment</a></li>                     
            <li><a href="BreakingNews.jsp">Breaking news</a></li>
        </ul> 
	</div>
    <h1> Registration </h1>
    <form name="frm" action="#" method="#" onsubmit="#">
     
 <table align ="center">
<tr>
<td><h3 style= "background-color:white;color:maroon;">Personal Information</h3 >
<table>
<tr>
<td> First Name</td>
<td> <input type ="text" name="fname"/></td>
</tr>
<tr>
<td>Mobile No</td>
<td><input type="text" name="mb"/></td>
</tr>
</table>
<tr>
<td><h3 style="background-color:white;color:maroon;">Login Information</h3>
<table>
<tr>

<td>User Name</td>
<td><input type="text" name="uname"/></td>
</tr>
<tr>
<td>Password</td>
<td> <input type="password" name="pass"/></td>
</tr>
<tr>
<td>Confirm Password</td>
<td><input type="password" name="cps"/></td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit" value="register"/></td>
</tr>

</form>
    </body>
</html>
