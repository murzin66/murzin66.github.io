<xsl:stylesheet	xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version = "1.0">
	<xsl:template match = "/">
	 <html>
      <head>
        <meta charset="utf-8"/>
      </head>
      <body>
        <p >Murzin Mikhail P4107</p>
        <math xmlns="http://www.w3.org/1998/Math/MathML" display="inline">
            <xsl:apply-templates/>
        </math>
        <script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
        <script id="MathJax-script"
                    src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
      </body>
    </html>
</xsl:template>
	<xsl:template match = "оператор">
		<mi>
			<xsl:apply-templates />
		</mi>
	</xsl:template>
	<xsl:template match = "корень">
		<msqrt>
			<xsl:apply-templates />
		</msqrt>
	</xsl:template>
	<xsl:template match = "строка">
		<mrow>
			<xsl:apply-templates />
		</mrow>
	</xsl:template>
	<xsl:template match = "число">
		<mn>
			<xsl:apply-templates />
		</mn>
	</xsl:template>
	<xsl:template match="низверх">
        <munderover>
            <xsl:apply-templates />
        </munderover>
    </xsl:template>

    <xsl:template match="верх">
        <msup>
            <xsl:apply-templates />
        </msup>
    </xsl:template>

    <xsl:template match="низ">
        <msub>
            <xsl:apply-templates />
        </msub>
    </xsl:template>

</xsl:stylesheet>
