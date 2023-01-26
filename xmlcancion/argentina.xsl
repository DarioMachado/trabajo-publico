<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
	<head type="text/css">
		<link rel="stylesheet" href="argentina.css" type="text/css"/>
	</head>
	<body>
		<xsl:apply-templates/>
		
	</body>
</html>
</xsl:template>
<xsl:template match="titulo">
	<h2>
		<xsl:value-of select="."/>
	</h2>

</xsl:template>


<xsl:template match="cancion">
	<xsl:apply-templates select="titulo"/> 
	<xsl:apply-templates select="verso"/> 
	<xsl:apply-templates select="estrofa"/> 
	
</xsl:template>


	
<xsl:template match="estrofa">
		<span>
			
			<xsl:apply-templates select="verso"/> 
			<br/>
			<br/>
		</span>
		
</xsl:template>	

<xsl:template match="verso">
				<p>
					<xsl:value-of select="."/>
				</p>
				
</xsl:template>

		


</xsl:stylesheet>