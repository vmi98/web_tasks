﻿<xsl:stylesheet version = "1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<script type="text/javascript" async
src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeXMML-AM_CHTML">
</script>
<title>Task 1</title>
</head>
<body>
<h1>
 <math xmlns="http://www.w3.org/1998/Math/MathML">
 <xsl:apply-templates/>
 </math>
 </h1>
</body>
</html>
</xsl:template>
<?xml version="1.0" encoding="utf-8" ?>
<xsl:template match="строка">
<mrow> <xsl:apply-templates/> </mrow>
</xsl:template>
<xsl:template match="операнд">
<mi> <xsl:value-of select="."/> </mi>
</xsl:template>
<xsl:template match="оператор">
<mo> <xsl:value-of select="."/> </mo>
</xsl:template>
<xsl:template match="корень">
<msqrt> <xsl:apply-templates/> </msqrt>
</xsl:template>
<xsl:template match="дробь">
<mfrac> <xsl:apply-templates/> </mfrac>
</xsl:template>
<xsl:template match="число">
<mn> <xsl:value-of select="."/> </mn>
</xsl:template>
<xsl:template match="низверх">
<munderover> <xsl:apply-templates/> </munderover>
</xsl:template>
<xsl:template match="верх">
<msup> <xsl:apply-templates/> </msup>
</xsl:template>
<xsl:template match="низ">
<msub> <xsl:apply-templates/> </msub>
</xsl:template>
</xsl:stylesheet>