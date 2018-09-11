<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <h2 style="text-align:center">Таблица Менделеева</h2>
        <table border="2" style="text-align:center">
          <tr>
            <th>№</th>
            <th>Наименование (символ)</th>
            <th>Атомная масса</th>
            <th>Количество электронов на слоях</th>
            <th>Семейство</th>
            <th>Группа</th>
            <th>Период</th>
          </tr>
          <xsl:for-each select="table/elements/element">
            <tr>
              <xsl:if test="kind = 'Неметаллы'">
                <td bgcolor="#a0ffa0"><xsl:value-of select="atomic_namber"/></td>
                <td bgcolor="#a0ffa0"><xsl:value-of select="name"/> (<xsl:value-of select="symbol"/>)</td>
                <td bgcolor="#a0ffa0"><xsl:value-of select="atomic_mass"/></td>
                <td bgcolor="#a0ffa0"><xsl:value-of select="electrons_on_layer"/></td>
                <td bgcolor="#a0ffa0"><xsl:value-of select="kind"/></td>
                <td bgcolor="#a0ffa0"><xsl:value-of select="position/group"/></td>
                <td bgcolor="#a0ffa0"><xsl:value-of select="position/period"/></td>
              </xsl:if>
              <xsl:if test="kind = 'Щелочные металлы'">
                <td bgcolor="#f66"><xsl:value-of select="atomic_namber"/></td>
                <td bgcolor="#f66"><xsl:value-of select="name"/> (<xsl:value-of select="symbol"/>)</td>
                <td bgcolor="#f66"><xsl:value-of select="atomic_mass"/></td>
                <td bgcolor="#f66"><xsl:value-of select="electrons_on_layer"/></td>
                <td bgcolor="#f66"><xsl:value-of select="kind"/></td>
                <td bgcolor="#f66"><xsl:value-of select="position/group"/></td>
                <td bgcolor="#f66"><xsl:value-of select="position/period"/></td>
              </xsl:if>
              <xsl:if test="kind = 'Щелочноземельные металлы'">
                <td bgcolor="#ffdead"><xsl:value-of select="atomic_namber"/></td>
                <td bgcolor="#ffdead"><xsl:value-of select="name"/> (<xsl:value-of select="symbol"/>)</td>
                <td bgcolor="#ffdead"><xsl:value-of select="atomic_mass"/></td>
                <td bgcolor="#ffdead"><xsl:value-of select="electrons_on_layer"/></td>
                <td bgcolor="#ffdead"><xsl:value-of select="kind"/></td>
                <td bgcolor="#ffdead"><xsl:value-of select="position/group"/></td>
                <td bgcolor="#ffdead"><xsl:value-of select="position/period"/></td>
              </xsl:if>
              <xsl:if test="kind = 'Инертные газы'">
                <td bgcolor="#c0ffff"><xsl:value-of select="atomic_namber"/></td>
                <td bgcolor="#c0ffff"><xsl:value-of select="name"/> (<xsl:value-of select="symbol"/>)</td>
                <td bgcolor="#c0ffff"><xsl:value-of select="atomic_mass"/></td>
                <td bgcolor="#c0ffff"><xsl:value-of select="electrons_on_layer"/></td>
                <td bgcolor="#c0ffff"><xsl:value-of select="kind"/></td>
                <td bgcolor="#c0ffff"><xsl:value-of select="position/group"/></td>
                <td bgcolor="#c0ffff"><xsl:value-of select="position/period"/></td>
              </xsl:if>
              <xsl:if test="kind = 'Полуметаллы'">
                <td bgcolor="#cc9"><xsl:value-of select="atomic_namber"/></td>
                <td bgcolor="#cc9"><xsl:value-of select="name"/> (<xsl:value-of select="symbol"/>)</td>
                <td bgcolor="#cc9"><xsl:value-of select="atomic_mass"/></td>
                <td bgcolor="#cc9"><xsl:value-of select="electrons_on_layer"/></td>
                <td bgcolor="#cc9"><xsl:value-of select="kind"/></td>
                <td bgcolor="#cc9"><xsl:value-of select="position/group"/></td>
                <td bgcolor="#cc9"><xsl:value-of select="position/period"/></td>
              </xsl:if>
              <xsl:if test="kind = 'Галогены'">
                <td bgcolor="#ff9"><xsl:value-of select="atomic_namber"/></td>
                <td bgcolor="#ff9"><xsl:value-of select="name"/> (<xsl:value-of select="symbol"/>)</td>
                <td bgcolor="#ff9"><xsl:value-of select="atomic_mass"/></td>
                <td bgcolor="#ff9"><xsl:value-of select="electrons_on_layer"/></td>
                <td bgcolor="#ff9"><xsl:value-of select="kind"/></td>
                <td bgcolor="#ff9"><xsl:value-of select="position/group"/></td>
                <td bgcolor="#ff9"><xsl:value-of select="position/period"/></td>
              </xsl:if>
              <xsl:if test="kind = 'Переходные металлы'">
                <td bgcolor="#ffc0c0"><xsl:value-of select="atomic_namber"/></td>
                <td bgcolor="#ffc0c0"><xsl:value-of select="name"/> (<xsl:value-of select="symbol"/>)</td>
                <td bgcolor="#ffc0c0"><xsl:value-of select="atomic_mass"/></td>
                <td bgcolor="#ffc0c0"><xsl:value-of select="electrons_on_layer"/></td>
                <td bgcolor="#ffc0c0"><xsl:value-of select="kind"/></td>
                <td bgcolor="#ffc0c0"><xsl:value-of select="position/group"/></td>
                <td bgcolor="#ffc0c0"><xsl:value-of select="position/period"/></td>
              </xsl:if>
              <xsl:if test="kind = 'Постпереходные металлы'">
                <td bgcolor="#ccc"><xsl:value-of select="atomic_namber"/></td>
                <td bgcolor="#ccc"><xsl:value-of select="name"/> (<xsl:value-of select="symbol"/>)</td>
                <td bgcolor="#ccc"><xsl:value-of select="atomic_mass"/></td>
                <td bgcolor="#ccc"><xsl:value-of select="electrons_on_layer"/></td>
                <td bgcolor="#ccc"><xsl:value-of select="kind"/></td>
                <td bgcolor="#ccc"><xsl:value-of select="position/group"/></td>
                <td bgcolor="#ccc"><xsl:value-of select="position/period"/></td>
              </xsl:if>
              <xsl:if test="kind = 'Лантаноиды'">
                <td bgcolor="#ffbfff"><xsl:value-of select="atomic_namber"/></td>
                <td bgcolor="#ffbfff"><xsl:value-of select="name"/> (<xsl:value-of select="symbol"/>)</td>
                <td bgcolor="#ffbfff"><xsl:value-of select="atomic_mass"/></td>
                <td bgcolor="#ffbfff"><xsl:value-of select="electrons_on_layer"/></td>
                <td bgcolor="#ffbfff"><xsl:value-of select="kind"/></td>
                <td bgcolor="#ffbfff"><xsl:value-of select="position/group"/></td>
                <td bgcolor="#ffbfff"><xsl:value-of select="position/period"/></td>
              </xsl:if>
              <xsl:if test="kind = 'Актиноиды'">
                <td bgcolor="#ef99cc"><xsl:value-of select="atomic_namber"/></td>
                <td bgcolor="#ef99cc"><xsl:value-of select="name"/> (<xsl:value-of select="symbol"/>)</td>
                <td bgcolor="#ef99cc"><xsl:value-of select="atomic_mass"/></td>
                <td bgcolor="#ef99cc"><xsl:value-of select="electrons_on_layer"/></td>
                <td bgcolor="#ef99cc"><xsl:value-of select="kind"/></td>
                <td bgcolor="#ef99cc"><xsl:value-of select="position/group"/></td>
                <td bgcolor="#ef99cc"><xsl:value-of select="position/period"/></td>
              </xsl:if>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>