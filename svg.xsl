<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
			  <xsl:output method="xml"/>

			  <xsl:template match="root">
			    <svg xmlns="http://www.w3.org/2000/svg" width="{графика/@ширина}" height="{графика/@высота}">
			      <xsl:apply-templates select="графика/эллипс"/>
			    </svg>
			  </xsl:template>

			  <xsl:template match="эллипс">
			    <ellipse fill="{@заливка}" stroke="{@ободок}" stroke-width="{@ширина-ободка}" cx="{@cx}" cy="{@cy}" rx="{@rx}" ry="{@ry}"/>
			  </xsl:template>
			</xsl:stylesheet>