<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="ru">
            <body>
                <p> Мурзин Михаил 4107</p>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>

    <xsl:template match="корень">
        <xsl:apply-templates />
    </xsl:template>

    <xsl:template match="графика">
        <svg width="{@ширина}" height="{@высота}">
            <xsl:apply-templates />
        </svg>
    </xsl:template>

    <xsl:template match="эллипс">
        <ellipse id="{@id}" fill="{@заливка}" stroke="{@ободок}" stroke-width="{@ширина-ободка}"
            cx="{@cx}" cy="{@cy}" rx="{@rx}" ry="{@ry}" />
    </xsl:template>

</xsl:stylesheet>