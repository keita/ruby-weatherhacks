<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" standalone="yes"/>

  <xsl:template match="/">
    <xsl:text>module WeatherHacks&#10;</xsl:text>
    <xsl:text>  module ForecastMap&#10;</xsl:text>
    <xsl:apply-templates select="//*/area"/>
    <xsl:text>  end&#10;</xsl:text>
    <xsl:text>end&#10;</xsl:text>
  </xsl:template>

  <xsl:template match="area">
    <xsl:text>    </xsl:text>
    <xsl:text>area(&quot;</xsl:text>
    <xsl:value-of select="@title"/>
    <xsl:text>&quot;, &quot;</xsl:text>
    <xsl:value-of select="@source"/>
    <xsl:text>&quot;) do&#10;</xsl:text>
    <xsl:apply-templates select="pref"/>
    <xsl:text>    </xsl:text>
    <xsl:text>end&#10;</xsl:text>
  </xsl:template>

  <xsl:template match="pref">
    <xsl:text>      </xsl:text>
    <xsl:text>pref(&quot;</xsl:text>
    <xsl:value-of select="@title"/>
    <xsl:text>&quot;) do&#10;</xsl:text>
    <xsl:apply-templates select="city"/>
    <xsl:text>      </xsl:text>
    <xsl:text>end&#10;</xsl:text>
  </xsl:template>

  <xsl:template match="city">
    <xsl:text>        </xsl:text>
    <xsl:text>city(&quot;</xsl:text>
    <xsl:value-of select="@title"/>
    <xsl:text>&quot;, </xsl:text>
    <xsl:value-of select="@id"/>
    <xsl:text>, &quot;</xsl:text>
    <xsl:value-of select="@source"/>
    <xsl:text>&quot;)&#10;</xsl:text>
  </xsl:template>
</xsl:stylesheet>