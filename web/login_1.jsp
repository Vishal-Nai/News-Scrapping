<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
    </head>
    <body style="margin: 0px;">
        <div style="background-color:green;height: 50px;color:white">
            <div style="font-weight: bolder;font-size: xx-large;padding-left: 120px;padding-top: 5px;">AnimalKart</div>
        </div>
              
            <form name="lgn" action="loginsubmit.jsp" method="post">
            <table  align="right" style="padding-top:0px" >
            <td colspan="2" align="center"> <h3 style="background-color:green ;color: white;">Login Information</h3 ></td>
          
<tr>
<td> Username</td>
<td> <input type ="text" name="un"/></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="ps" maxlength ="10"/></td>
</tr>  
<tr>
<td colspan="2" align="center">
<input type="submit" value="Log In"/></td>
</tr>
<tr>
                  <td colspan="2" align="center">
                      <a href="forgetpass.jsp"> Forget password?</a>
                  </td>
</tr>  

            <td colspan="2" align="center" ><h3 style= "background-color:green;color:white;">Not a User ?</h3>
              <tr>
                  <td colspan="2" align="center"><a href="index.jsp"> Sign Up</a>
                  </td>

</tr>  
            </table>  
        </form>
        <div style="padding-left: 10px">
     
       
       </div>
    </body>
</html>
