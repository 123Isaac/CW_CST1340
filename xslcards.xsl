<!--Ref for xsl value-of: https://www.w3schools.com/xml/xsl_value_of.asp
 Ref for current(): https://www.w3schools.com/Xml/func_current.asp
 ref fpr @id: https://stackoverflow.com/questions/26450337/how-to-find-element-that-matches-xslt-attribute-value-in-for-each-loop?utm_source=chatgpt.com-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Books</title>
                <link rel="stylesheet" href="xsl.css"/>
                 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

            </head>
            <body>
                <div class="navclass">
                    <nav class="navbar">
                        <ul>
                            <li><a href="main.html">Home</a></li>
                            <li><a href="books.xml">Books</a></li>
                            <li><a href="index.html">About Us</a></li>
                        </ul>
                    </nav>
                </div>
                
                <h1>Books</h1>
                <div class="category">
                    <label for="categoryFilter">Select category:</label>
                    <select id="categoryFilter" style="margin: 0 0 20px 10px;">
                        <option value="">All categories</option>
                        <xsl:for-each select="/bookstore/categories/category">
                            <option value="{@id}"><xsl:value-of select="."/></option>
                        </xsl:for-each>
                    </select>
                </div>

                <div class="book_container" id="bookContainer">
                <xsl:for-each select="bookstore/book">
                <div class="book_card" data-genre="{genre/@ref}">
                    <div class="pic"><img src="{image}" alt="{title}" /></div> 
                    <h2><xsl:value-of select="title"/></h2>
                    <p>Author: <xsl:value-of select="author"/></p>
                    <p>Genre: <xsl:value-of select="/bookstore/categories/category[@id=current()/genre/@ref]"/></p>
                    <p>Price: <xsl:value-of select="price"/></p>
                    <p>Year: <xsl:value-of select="year"/></p>
                </div>
            </xsl:for-each>
            </div>

             <footer>
            <div class="footer-heading"><h2>Contact Us</h2>
                </div>
            
            <div class="footer-section">
                
               
                <div class="location">
                        <p>Library of Ruina
                            <br />12 Coral Palm Avenue
                            <br />Caudan Waterfront District
                            <br />Port Louis 11328
                            <br />Mauritius
                        </p>

                        <p>info@libraryofruina.example
                            <br />+230 5 000 1234
                        </p>
                </div>

                <div class="socials">
                    <div class="wrapper1">
                        <div class="button">
                            <div class="icon">
                                <i class="fa fa-facebook-f"></i>
                            </div>
                            <span>Facebook</span>
                        </div>

                        <div class="button">
                            <div class="icon">
                                <i class="fa fa-whatsapp"></i>
                            </div>
                            <span>Whatsapp</span>
                        </div>

                        <div class="button">
                            <div class="icon">
                                <i class="fa fa-instagram"></i>
                            </div>
                            <span>Instagram</span>
                        </div>
                    </div>
                </div>

                    <div class="direct_contact">
                        <h3>Message us directly</h3>
                        <textarea name="" id="">Message us here directly</textarea>
                        <button>Send</button>
                    </div>
                    
            </div>
            <div class="footer-bottom">
                    <p>&#169; 2026 Library of Ruina. All Rights Reserved. Built with <span>&#10084;</span> in Mauritius.</p>
            </div>

        </footer>
        
            <script>
            // <![CDATA[
                document.getElementById('categoryFilter').addEventListener('change', function() {
                    var selected = this.value;
                    var cards = document.querySelectorAll('.book_container .book_card');
                    cards.forEach(function(card) {
                        if (!selected || card.getAttribute('data-genre') === selected) {
                            card.style.display = 'block';
                        } else {
                            card.style.display = 'none';
                        }
                    });
                });
                // ]]>
            </script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>