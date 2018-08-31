<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Ejercicio 2</h1>
                <table>
                    <tr bgcolor="887788">
                        <th> Titulo </th>
                        <th> Autor </th>
                        <th>Idioma</th>
                    </tr>
                    <xsl:for-each select="biblioteca/libro">
                          <xsl:if test="titulo/@idioma = 'es'">
                            <tr>
                                <td style="font-weight: bold;"><xsl:value-of select="titulo"/></td>
                                <td><xsl:value-of select="autor"/></td>
                                <td><xsl:value-of select="titulo/@idioma"/></td>
                            </tr> 
                          </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>   
</xsl:stylesheet>