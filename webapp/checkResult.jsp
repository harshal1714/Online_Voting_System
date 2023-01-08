<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Admin!</title>
<link rel="stylesheet" type="text/css" href="style.css"> 
 <%
   
    String a[] = new String[100];
 
    Class.forName("com.mysql.cj.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinevotingsystem","root","harshal1714");
	
	PreparedStatement preparedStatement = con.prepareStatement("select party,count(party) as c from vote group by party");
	ResultSet rs=((java.sql.Statement) preparedStatement).executeQuery("select party,count(party) as c from vote group by party");
	
    int i=0;
    while(rs.next()){
    	if (rs.getString("party").equals("AAP"))
			a[0] = rs.getString("c");
		if (rs.getString("party").equals("BJP"))
			a[1] = rs.getString("c");
		if (rs.getString("party").equals("BSP"))
			a[2] = rs.getString("c");
		if (rs.getString("party").equals("CONGRESS"))
			a[3] = rs.getString("c");
		if (rs.getString("party").equals("SHIVSENA"))
			a[4] = rs.getString("c");
    }
    %>
</head>
<%@ include file="adminNavbar.jsp"%> 
<body>

<div class="checkTable">
<table >
<tr>
<th>
Parties
</th>
<th>
Names
</th>
<th>
Votes
</th>
</tr>

<tr>
<td>
<img src="images/AAP.webp" alt="AAP">
</td>
<td>AAP</td>
<td><%=a[0]%></td>
</tr>

<tr>
<td>
<img src="images/bjp.jpg" alt="BJP">
</td>
<td>BJP</td>
<td><%=a[1]%></td>
</tr>

<tr>
<td>
<img src="images/bsp.jpg" alt="BSP">
</td>
<td>BSP</td>
<td><%=a[2]%></td>
</tr>

<tr>
<td>
<img src="images/congress.webp" alt="CONGRESS">
</td>
<td>CONGRESS</td>
<td><%=a[3]%></td>
</tr>

<tr>
<td>
<img src="images/shivsena2.jpg" alt="SHIVSENA">
</td>
<td>SHIVSENA</td>
<td><%=a[4]%></td>
</tr>

</table>
</div>
</body>
</html>