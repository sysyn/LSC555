<?xml version="1.0" encoding="utf-8"?>

<!--
This XSL provide a *short* version of Actors Profile Information. 
The stylesheet will present the data as the following.

+ The profile information is formatted into a table.
+ Actor information included: Name, Birth Year and Height.
+ Actors are listed in alphabetical order by First Name.
-->

<html xsl:version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns="http://www.w3.org/1999/xhtml">
    
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<title>LSC555 XML Exercise</title>       
	</head>        
            
	<body>
 		<h1>Actors Profile List (Simple Version)</h1>

    		<table border="1" width="500">
        		<tr align="center" bgcolor="#FFFFCC">
        			<th>Actor Name</th>
            			<th>Birth Year</th>
            			<th>Height</th>
            		</tr>
           		<xsl:for-each select="actorprofile/actor">
            			<xsl:sort select="name"/>
            			<tr>
				<td><xsl:value-of select="name" /></td>
            				<td><xsl:value-of select="substring-after(dob,',')" /></td>
            				<td><xsl:value-of select="height" /></td>
				</tr>			
			</xsl:for-each>
		</table>
	</body>
</html>
