<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Books</title>
            </head>
            <body>
                <h1>Books</h1>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Title</th>
                        <th>Author</th>
                        <th>Year</th>
                        <th>Genre</th>
                    </tr>
                    <xsl:for-each select="bookstore/book">
                        <tr>
                            <td><xsl:value-of select="title"/></td>
                            <td><xsl:value-of select="author"/></td>
                            <td><xsl:value-of select="year"/></td>
                            <td>
                            <xsl:value-of select="/bookstore/categories/category[@id=current()/genre/@ref]"/>
                            </td>
                            <div class="slidecontainer">
                            <input type="range" min="1" max="100" value="50" class="slider" id="myRange"></input>
                            </div>
                            <td>
                            
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>