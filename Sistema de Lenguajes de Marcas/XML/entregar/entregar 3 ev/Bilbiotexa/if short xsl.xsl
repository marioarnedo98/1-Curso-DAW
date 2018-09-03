<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" standalone="no" omit-xml-declaration="no"/>
    <xsl:template match="/">
        <html>
            <body>
                <h1>Mi biblioteca</h1>
                <table>
                    <tr bgcolor="887788">
                        <th> Titulo </th>
                        <th> Autor </th>
                    </tr>
                    <xsl:for-each select="libreria/libro">
                        <xsl:sort select="titulo"/>
                        <xsl:if test="precio &gt; 12">          
                            <tr>
                                <td><xsl:value-of select="titulo"/></td>
                                <td><xsl:value-of select="autor"/></td>
                            </tr> 
                        </xsl:if>  
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>   
</xsl:stylesheet>