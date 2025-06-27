<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
			<head>
				<title>XSLT DEMO</title>
			</head>
			<boby>
				<h2>Contact Details</h2>
				<table border="1">
					<tr>
						<th>NAME</th>
						<th>EMAIL</th>
						<th>MOBILE NO</th>
					</tr>
					<xsl:for-each select="contact/person">
						<tr>
							<td> <xsl:value-of select="name"></xsl:value-of> </td>
							<td> <xsl:value-of select="email"></xsl:value-of> </td>
							<td> <xsl:value-of select="mobile"></xsl:value-of> </td>
						</tr>
					</xsl:for-each>
				</table>
			</boby>
		</html>
	</xsl:template>
</xsl:stylesheet>