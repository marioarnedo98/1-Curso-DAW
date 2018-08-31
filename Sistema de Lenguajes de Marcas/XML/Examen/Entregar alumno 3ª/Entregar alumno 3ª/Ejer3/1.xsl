<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Ejercicio 1</h1>
                <table>
                    <tr bgcolor="violet">
                        <th> Autor </th>
                        <th> Titulo </th>
                        <th>Fecha publicacion</th>
                    </tr>
                    <xsl:for-each select="biblioteca/libro">
                        <xsl:sort select="titulo"/>
                        <tr>
                            <xsl:if test="autor = 'Mario Vargas Llosa'">
                            <td><xsl:value-of select="autor"/></td>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="fechaPublicacion"/></td>
                            </xsl:if>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>