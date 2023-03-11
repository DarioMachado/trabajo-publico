<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
	<head type="text/css">
		<link rel="stylesheet" href="canciones.css" type="text/css"/>
	</head>
	<body>
		<xsl:apply-templates/>
		
	</body>
</html>

</xsl:template>
<xsl:template match="titulo">
	<h2 class="titulo">
		<xsl:value-of select="."/>
	</h2>

</xsl:template>


<xsl:template match="autor">
	<h3 class="autor">
		<xsl:value-of select="."/>
	</h3>
	
	
</xsl:template>

<xsl:template match="salida">
	<div class="salida">
		<xsl:value-of select="."/>
	</div>
	
	
</xsl:template>


<xsl:template match="cancion">
	<xsl:apply-templates select="titulo"/> 
	<xsl:apply-templates select="autor"/> 
	<xsl:apply-templates select="salida"/> 
	<xsl:apply-templates select="descripcion"/> 
	<xsl:apply-templates select="letra"/> 
	<xsl:apply-templates select="verso"/> 
	<xsl:apply-templates select="estrofa"/> 
	
</xsl:template>


<xsl:template match="descripcion">
		
		<div class="descripcion">
			<xsl:value-of select="."/> 
			</div>
		
</xsl:template>	

<xsl:template match="letra">
				<div class="letra">
					<xsl:apply-templates select="estrofa"/> 
				</div>
				
</xsl:template>
	

	
	
	
<xsl:template match="estrofa">
		
			<div class="estrofa">
			<xsl:apply-templates select="verso"/> 
			<br/>
			<br/>
			</div>
		
</xsl:template>	

<xsl:template match="verso">
				<div class="verso">
					<xsl:value-of select="."/>
				</div>
				
</xsl:template>

		


</xsl:stylesheet>

