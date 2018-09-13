<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>

    <body>
      <h2 style="text-align:center">Таблица Менделеева</h2>
      <xsl:apply-templates />
    </body>

    </html>
  </xsl:template>
  <xsl:template match="elements">
    <table border="2" style="text-align:center; margin: 0 auto">
      <tr>
        <th>№</th>
        <th>Атомная масса</th>
        <th>Наименование (символ)</th>
        <th>Количество электронов на слоях</th>
        <th>Семейство</th>
        <th>Группа</th>
        <th>Период</th>
      </tr>
      <xsl:apply-templates />
    </table>
  </xsl:template>
  <xsl:template match="element">
    <tr>
      <xsl:apply-templates />
    </tr>
  </xsl:template>
  <xsl:template match="atomic_namber">
    <td bgcolor="#a0ffa0">
      <xsl:value-of select="." />
    </td>
  </xsl:template>
  <xsl:template match="name">
    <td bgcolor="#a0ffa0">
      <xsl:value-of select="." />
      (<xsl:value-of select="..//symbol" />)
    </td>
  </xsl:template>
  <xsl:template match="atomic_mass">
    <td bgcolor="#a0ffa0">
      <xsl:value-of select="." />
    </td>
  </xsl:template>
  <xsl:template match="electrons_on_layer">
    <td bgcolor="#a0ffa0">
      <xsl:value-of select="." />
    </td>
  </xsl:template>
  <xsl:template match="kind">
    <xsl:if test=". = 'Неметаллы'">
      <td bgcolor="#a0ffa0">
        <xsl:value-of select="." />
      </td>
    </xsl:if>
    <xsl:if test=". = 'Щелочные металлы'">
      <td bgcolor="#f66">
        <xsl:value-of select="." />
      </td>
    </xsl:if>
    <xsl:if test=". = 'Щелочноземельные металлы'">
      <td bgcolor="#ffdead">
        <xsl:value-of select="." />
      </td>
    </xsl:if>
    <xsl:if test=". = 'Инертные газы'">
      <td bgcolor="#c0ffff">
        <xsl:value-of select="." />
      </td>
    </xsl:if>
    <xsl:if test=". = 'Полуметаллы'">
      <td bgcolor="#cc9">
        <xsl:value-of select="." />
      </td>
    </xsl:if>
    <xsl:if test=". = 'Галогены'">
      <td bgcolor="#ff9">
        <xsl:value-of select="." />
      </td>
    </xsl:if>
    <xsl:if test=". = 'Переходные металлы'">
      <td bgcolor="#ffc0c0">
        <xsl:value-of select="." />
      </td>
    </xsl:if>
    <xsl:if test=". = 'Постпереходные металлы'">
      <td bgcolor="#ccc">
        <xsl:value-of select="." />
      </td>
    </xsl:if>
    <xsl:if test=". = 'Лантаноиды'">
      <td bgcolor="#ffbfff">
        <xsl:value-of select="." />
      </td>
    </xsl:if>
    <xsl:if test=". = 'Актиноиды'">
      <td bgcolor="#ef99cc">
        <xsl:value-of select="." />
      </td>
    </xsl:if>
  </xsl:template>
  <xsl:template match="position/group">
    <td bgcolor="#a0ffa0">
      <xsl:value-of select="." />
    </td>
  </xsl:template>
  <xsl:template match="position/period">
    <td bgcolor="#a0ffa0">
      <xsl:value-of select="." />
    </td>
  </xsl:template>
</xsl:stylesheet>