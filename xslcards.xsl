<!--Ref for xsl value-of: https://www.w3schools.com/xml/xsl_value_of.asp
 Ref for current(): https://www.w3schools.com/Xml/func_current.asp
 ref fpr @id: https://stackoverflow.com/questions/26450337/how-to-find-element-that-matches-xslt-attribute-value-in-for-each-loop?utm_source=chatgpt.com-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Books</title>
                <link rel="stylesheet" href="xsl.css"/>
            </head>
            <body>
            <div class="book_container">
                <xsl:for-each select="bookstore/book">
                <div class="card">
                    <div class="pic"><img src="{image}" alt="{title}" /></div> 
                    <h2><xsl:value-of select="title"/></h2>
                    <p>Author: <xsl:value-of select="author"/></p>
                    <p>Genre: <xsl:value-of select="/bookstore/categories/category[@id=current()/genre/@ref]"/></p>
                    <p>Price: <xsl:value-of select="price"/></p>
                    <p>Year: <xsl:value-of select="year"/></p>
                </div>
            </xsl:for-each>
            </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>