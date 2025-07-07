<?xml version="1.0" encoding="utf-8"?>

<!--
This XSL provide the *full* list and description of each Actor.
The stylesheet will present the data as the following.

+ The profile document is formatted to help view each actors information easily (sections divided).
+ All actor information included: Name, Date of Birth, Height and Filmography.
+ Filmography information formatted as a table with title of film, release year and acting role information.
+ Films are sorted in descending order by release year.
-->

<html xsl:version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<title>LSC555 XML Exercise</title>       
	</head>        
            
	<body>
 		<h1 style="color:#0000FF">Actors Profile List (Full Version)</h1>
		<hr />
		<xsl:for-each select="actorprofile/actor">
	        	<h2 style="font-family:Geneva, Arial, Helvetica, sans-serif; color:#CC6600;"><xsl:value-of select="name"/></h2>
        		<b>Date of Birth</b>: <xsl:value-of select="dob" /><br />
	                   <b>Height</b>: <xsl:value-of select="height" /><br />
	                   <b>Filmography</b><br />
           
            	    	<table border="1" width="500">
	                	<tr align="center" bgcolor="#FFFFCC">
        	        	<th>Film</th>
	                	<th>Release Year</th>
		       <th>Acting Role</th>
        		        </tr>
		        	<xsl:for-each select="films/film">
		                	<xsl:sort select="releaseyear" order="descending" />
			      <tr>
        				<td><xsl:value-of select="title" /></td>
		                		<td><xsl:value-of select="releaseyear" /></td>
				 <td><xsl:value-of select="role" /></td>
        			        </tr>			
			 </xsl:for-each>
	            	</table>
		<hr />
		</xsl:for-each>        
	</body>

</html>
