<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome User !</title>
<link rel="stylesheet" type="text/css" href="style.css"> 
</head>
<%@ include file="navbar.jsp"%> 
<body>
<div class="form-container">
<form action="Vote" method="post" >

<label for="voterNumber" class="form-elements form-label"><b>Enter your voter card number</b></label>
<br>
<input id="voterNumber" name="voterNumber" class="form-elements form-input" type="text"/>
<br>

<label for="party" class="form-elements form-label"><b>Choose your party</b></label>
<br>
<input type="radio" id="aap" name="party1" value="Aam Aadmi Party">
<label for="aap"><img class="party_img" alt="aap" src="images/AAP.webp">AAM AADMI PARTY</label><br>
<input type="radio" id="bjp" name="party2" value="BJP">
<label for="bjp"><img class="party_img" alt="bjp" src="images/bjp.jpg">BJP</label><br>
<input type="radio" id="bsp" name="party3" value="BSP">
<label for="bsp"><img class="party_img" alt="bsp" src="images/bsp.jpg">BSP</label><br>
<input type="radio" id="congress" name="party4" value="Congress">
<label for="congress"><img class="party_img" alt="congress" src="images/congress.webp">CONGRESS</label><br>
<input type="radio" id="shivsena" name="party5" value="SHIVSENA">
<label for="shivsena"><img class="party_img" alt="shivsena" src="images/shivsena2.jpg">SHIVSENA</label><br>
<br>

<button type="Submit" class="form-elements form-button">Submit</button>

</form>
</div>


</body>
</html>